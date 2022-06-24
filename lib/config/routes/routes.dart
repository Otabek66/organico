import 'package:flutter/material.dart';
import 'package:organico/screens/authentication/view/new_registration_view.dart';
import 'package:organico/screens/authentication/view/sign_in_view.dart';
import 'package:organico/screens/authentication/view/splash_view.dart';

class Routes{
  static final Routes _instance = Routes._init();
  static Routes get instance => _instance;
  Routes._init();

  
  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/splash': 
       return route(SplashView());
      case '/signIn':
      return route(SignInView());
       case '/newRegistr':
      return route(NewRegistrationView());

    }
  }
  MaterialPageRoute<dynamic> route(page) =>
      MaterialPageRoute(builder: (context) => page);
  }