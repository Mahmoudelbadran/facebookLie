import 'package:flutter/material.dart';
import 'package:untitled7/prestion/Login_screens.dart';
import 'package:untitled7/prestion/Register_screen.dart';
import 'package:untitled7/prestion/home_page_screen.dart';
import 'package:untitled7/prestion/onboarding_screen.dart';
import '../core/Constant.dart'as screens;
import '../prestion/splash_screen.dart';

class AppRouter{
  late Widget StartScreen;
  Route?onGenerateRoute(RouteSettings settings){
    StartScreen= const SplashScreen();
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_)=>StartScreen);
      case screens.onboardingScreen:
        return MaterialPageRoute(builder: (_)=>const onboardingScreen());
      case screens.LoginScreen:
        return MaterialPageRoute(builder: (_)=>const LoginScreen());
      case screens.RegisterLogin:
        return MaterialPageRoute(builder: (_)=>const RegisterLogin());
      case screens.HomePageScreen:
        String name=settings.arguments as String;
        return MaterialPageRoute(builder: (_)=> HomePageScreen(name: name,));
      default:
        return null;
    }
  }
}