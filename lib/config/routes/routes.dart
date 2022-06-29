import 'package:flutter/material.dart';
import 'package:organico/screens/authentication/view/forget_password_view.dart';
import 'package:organico/screens/authentication/view/new_registration_view.dart';
import 'package:organico/screens/authentication/view/otac_number_view.dart';
import 'package:organico/screens/authentication/view/reset_password.dart';
import 'package:organico/screens/authentication/view/sign_in_view.dart';
import 'package:organico/screens/authentication/view/splash_view.dart';
import 'package:organico/screens/home/view/wishlist_view.dart';
import 'package:organico/screens/main/view/main_view.dart';
import 'package:organico/screens/profile/view/addres_view.dart';
import 'package:organico/screens/profile/view/edit_profile.dart';
import 'package:organico/screens/profile/view/orders_view.dart';

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
      case '/forgetPassword':
      return route(ForgetPasswordView());
       case '/otacNumber':
      return route(OtacView());
      case '/resetPassword':
      return route(ResetPasswordView());
       case '/main':
      return route(MainView());
       case '/editProfile':
      return route(ProfileEditView());
      case '/orders':
      return route(OrdersView());
      case '/wishlist':
      return route(WishlistView());
      case '/address':
      return route(AddressView());

    }
  }
  MaterialPageRoute<dynamic> route(page) =>
      MaterialPageRoute(builder: (context) => page);
  }