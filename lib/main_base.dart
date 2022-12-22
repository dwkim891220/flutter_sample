import 'dart:convert';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_sample/app.dart';
import 'package:flutter_sample/config/urls_base.dart';
import 'package:flutter_sample/data/constants/urls_dev.dart';
import 'package:flutter_sample/domain/usecases/get_popular_movie_list_usecase.dart';
import 'package:get_it/get_it.dart';

import 'data/constants/urls_prod.dart';
import 'data/datasources/remote/tmdb_api_service.dart';
import 'data/datasources/remote/tmdb_api_service_impl.dart';
import 'data/repositories/remote/movie_repo.dart';
import 'domain/repositories/movie_repo.dart';

enum Flavor { dev, prod }

Future<void> baseMain(Flavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await _initFcm();
  _initUrls(flavor);
  _initDataLayer();
  _initDomainLayer();

  runApp(const App());
}

_initFcm() async {
  final authorized = await _requestPermissions();

  final token = await FirebaseMessaging.instance.getToken();

  if (authorized) {
    AndroidNotificationPlugin? androidNotification;

    if (Platform.isAndroid) {
      androidNotification = await _initAndroidNotification();
    }

    if (Platform.isIOS) {
      await _initIOSNotification();
    }

    FirebaseMessaging.instance.subscribeToTopic('global');

    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      _parseInitialMessage(initialMessage);
    }

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      _parseInitialMessage(message);
    });

    FirebaseMessaging.onMessage.listen((message) {
      _showLocalNotification(message, androidNotification);
    });
  }
}

Future<bool> _requestPermissions() async {
  final fcmInstance = FirebaseMessaging.instance;

  if (Platform.isIOS) {
    await fcmInstance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    await fcmInstance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  final settings = await fcmInstance.getNotificationSettings();
  return settings.authorizationStatus == AuthorizationStatus.authorized;
}

_parseInitialMessage(RemoteMessage message) {
  String msg = message.notification?.body ?? 'test';
  //TODO
}

Future<AndroidNotificationPlugin> _initAndroidNotification() async {
  final plugin = FlutterLocalNotificationsPlugin();
  final notification = AndroidNotificationPlugin(
    plugin: plugin,
  );

  await notification.plugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(notification.channel);

  await plugin.initialize(
    const InitializationSettings(
      android: AndroidInitializationSettings('ic_notification'),
    ),
    onDidReceiveNotificationResponse: (details) => _clickLocalNotification,
  );

  return notification;
}

_initIOSNotification() async {
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
}

_showLocalNotification(
  RemoteMessage message,
  AndroidNotificationPlugin? androidNotification,
) {
  RemoteNotification? notification = message.notification;

  if (notification != null && androidNotification != null) {
    final channel = androidNotification.channel;
    final plugin = androidNotification.plugin;

    plugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
        ),
      ),
      payload: jsonEncode(message.data),
    );
  }
}

_clickLocalNotification(NotificationResponse response) {
  final payload = response.payload;
  print("payload = $payload");
}

_initUrls(Flavor flavor) {
  IBaseUrls urls;

  switch (flavor) {
    case Flavor.dev:
      urls = UrlsDev();
      break;
    case Flavor.prod:
      urls = UrlsProd();
      break;
  }

  GetIt.instance.registerSingleton<IBaseUrls>(urls);
}

_initDataLayer() {
  final apiService = TMDBApiServiceImpl(GetIt.instance.get<IBaseUrls>());
  GetIt.instance.registerSingleton<ITMDBApiService>(apiService);

  final movieRepo = MovieRepository(
    tmdbApiService: GetIt.instance.get<ITMDBApiService>(),
  );
  GetIt.instance.registerSingleton<IMovieRepository>(movieRepo);
}

_initDomainLayer() {
  final movieRepository = GetIt.instance.get<IMovieRepository>();
  GetIt.instance.registerSingleton<GetPopularMovieListUsecase>(
    GetPopularMovieListUsecase(movieRepository),
  );
}

class AndroidNotificationPlugin {
  const AndroidNotificationPlugin({
    required this.plugin,
  });

  final FlutterLocalNotificationsPlugin plugin;
  final AndroidNotificationChannel channel = const AndroidNotificationChannel(
    'channel_id',
    'channel_title',
    importance: Importance.max,
  );
}
