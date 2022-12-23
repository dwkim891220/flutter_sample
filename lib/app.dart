import 'package:flutter/material.dart';
import 'package:flutter_sample/presentation/detail/detail_page.dart';
import 'package:go_router/go_router.dart';
import 'presentation/home/home_page.dart';

class App extends StatelessWidget {
  App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routerConfig: GoRouter(
        initialLocation: HomePage.path,
        routes: [
          _homeRoute,
        ],
      ),
    );
  }

  final GoRoute _homeRoute = GoRoute(
    name: 'home',
    path: HomePage.path,
    builder: (context, state) => const HomePage(),
    routes: [
      GoRoute(
        name: 'detail',
        path: 'detail/:id',
        builder: (context, state) {
          final queryId = state.params['id'];
          final id = int.tryParse(queryId!) ?? 0;

          return DetailPage(id: id);
        },
      ),
    ],
  );
}
