# flutter_sample

template of simple Flutter project   
this project is pursue *__Clean Architecture__*
![clean_architecture](https://github.com/dwkim891220/flutter_sample/files/10306121/application_architecture.pdf)
```
/
- ios
- android
- lib
	- src
	- config
	- core
	- presentation
		- blocs
		- pages
		- widgets
	- domain
		- repositories (repository interface)
		- entities (domain.repository entities)
		- usecases
	- data
		- repositories (domain.repository impl)
		- models (request, response, client model)
		- datasources (request interface)
```

### __plugins__
- _get_it_   
    for dependency injection
- _flutter_bloc_   
    separate widget code and business logic code   
    (singleton injection use get_it instead of RepositoryProvider)
- _go_router_
- _flutter_local_notification_   
    foreground, background, app killed notification of OS (iOS, Android)

### __project configure__
- _firebase_   
    for FCM(firebase cloud messaging) 
- separate build flavors firebase config files, app icon, app name
