import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/core/my_cache_keys.dart';
import 'package:untitled7/data/Local/My_cache.dart';
import '../core/Constant.dart'as screens;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Timer(const Duration(milliseconds: 5000), () {
     bool isonboadringview=MyCache.getbool(keys: MyCacheKeys.isonboardingScreen);
     if(isonboadringview){
       Navigator.pushNamedAndRemoveUntil(context, screens.LoginScreen, (route) => false);
     }
     else{
       Navigator.pushNamedAndRemoveUntil(context, screens.onboardingScreen, (route) => false);
     }
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Image.asset(
              "image/1.png",
              width: 80.sp,
            ),
          )),
    );
  }
}
