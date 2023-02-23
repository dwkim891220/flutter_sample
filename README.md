# flutter_sample

template of simple Flutter project   
this project is aiming to *__Clean Architecture__*.  

![application_architecture](https://user-images.githubusercontent.com/29171455/209616504-1df3e205-b3f6-4986-bef8-01ba555a4486.jpg)
   
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
    (singleton injection use ```get_it``` instead of ```RepositoryProvider```)
- _go_router_
- _flutter_local_notification_   
    foreground, background, app killed notification of OS (iOS, Android)

### __project configure__
- _firebase_   
    for FCM(firebase cloud messaging) 
- separate build flavors firebase config files, app icon, app name
