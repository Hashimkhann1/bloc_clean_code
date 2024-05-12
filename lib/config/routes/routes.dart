


import 'package:bloc_clean_coding/config/routes/routes_name.dart';
import 'package:flutter/material.dart';
import '../../view.dart';

class Routes {

  static Route<dynamic> genrateRoute(RouteSettings settings){
    switch(settings.name){
      case RoutesName.splashView:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case RoutesName.loginView:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case RoutesName.homeView:
        return MaterialPageRoute(builder: (context) => const HomeView());
      default:
         return MaterialPageRoute(builder: (context) => const Scaffold(
          body: Center(
            child: Text('No route generated'),
          ),
        ));
    }
  }

}