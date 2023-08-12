import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled7/core/my_cache_keys.dart';
import 'package:untitled7/data/Local/My_cache.dart';
import 'package:untitled7/view/onboadring_pageview.dart';
import 'package:untitled7/widget/Button_fc.dart';
import '../core/Constant.dart'as screens;

import '../data/onboadring_model.dart';

class onboardingScreen extends StatefulWidget {
  const onboardingScreen({Key? key}) : super(key: key);

  @override
  State<onboardingScreen> createState() => _onboardingScreenState();
}

class _onboardingScreenState extends State<onboardingScreen> {
  bool islast=false;
  PageController onboardingPage = PageController();
  final List<OnboadringModel> OnboadringList = [
    OnboadringModel(
        images: 'image/2.png', title: 'Welcome to Facebook', body: 'You can create an account or log into Facebook and connect with friends, family and other people you know. Enjoy sharing photos and videos, sending ...'),
    OnboadringModel(
        images: 'image/3.png', title: 'Sending a Message', body: 'You can send a message to a friend in the world..'),
    OnboadringModel(
        images: 'image/4.png', title: 'Be close to your loved ones', body: 'Strong protection, interactions and publications that reach millions of conversations, photos and publications such as videos, etc.'),
  ];

 void finishingboadring (){
   MyCache.putbool(keys: MyCacheKeys.isonboardingScreen, value: islast);
   Navigator.pushNamedAndRemoveUntil(context, screens.LoginScreen, (route) => false);
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "FaceBook",
          style: TextStyle(
              color: Colors.blue, fontSize: 30.sp, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            child: SizedBox(
                width: double.infinity,
                height: 80.h,
                child: PageView.builder(
                 onPageChanged: (index){
            if(index==OnboadringList.length-1) {
              islast=true;
            }else{
              islast=false;
            }
                 },
                  itemCount: OnboadringList.length,
                  itemBuilder: (context, index) =>
                      OnboadringPageview(Model: OnboadringList[index]),
                  physics: const BouncingScrollPhysics(),
                  controller: onboardingPage,
                )),
          ),
      SmoothPageIndicator(
          controller: onboardingPage,  // PageController
          count:OnboadringList.length,
          textDirection: TextDirection.rtl,
          effect: const WormEffect(
            dotColor: Colors.black,
            activeDotColor: Colors.cyan,

          ),
    ),
          Row(
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
                child: ButtonFc(
                  onpres: () {
                  return finishingboadring();
                  },
                  Boxcolor: Colors.blue,
                  width: 15.sp,
                  splashColor: Colors.cyan,
                  elevation: 20,
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
                child: ButtonFc(
                  onpres: () {
                    Navigator.pushNamed(context, screens.RegisterLogin);
                  },
                  Boxcolor: Colors.green,
                  width: 15.sp,
                  splashColor: Colors.cyan,
                  elevation: 20,
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
