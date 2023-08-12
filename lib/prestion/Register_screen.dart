
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';
import '../core/Constant.dart'as screens;
import '../widget/Button_fc.dart';
class RegisterLogin extends StatefulWidget {
  const RegisterLogin({Key? key}) : super(key: key);

  @override
  State<RegisterLogin> createState() => _RegisterLoginState();
}

class _RegisterLoginState extends State<RegisterLogin> {
  TextEditingController name=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController Number=TextEditingController();
  TextEditingController Email=TextEditingController();

  GlobalKey key=GlobalKey();
  bool ishidden=true;
  IconData SurfixIcon=Icons.visibility;

  void eyepassword(){
    setState(() {
      if(ishidden){
        SurfixIcon=Icons.visibility_off;

      }else{
        SurfixIcon=Icons.visibility;
      }
      ishidden=!ishidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Register",
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20.sp,
              color: Colors.blue,
              letterSpacing: 6),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100.sp,

                  child: Column(
                    children: [
                      Image.asset("image/6.png"),
                      Text(
                        "FaceBook",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                            color: Colors.blue,
                            letterSpacing: 5),
                      ),
                    ],
                  )),
              Form(
                  key: key,
                  child: Container(
                    margin: EdgeInsets.only(top: 4.h),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 80.w,
                          child: TextFormField(
                            controller: name,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2.sp,
                                        color: Colors.lightBlueAccent)),
                                label: const Text("Username"),
                                prefixIcon: const Icon(Icons.person),
                                isDense: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2.sp, color: Colors.blue),
                                    borderRadius: BorderRadius.circular(5.sp)),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2.sp, color: Colors.red)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2.sp, color: Colors.blue))),
                            validator: (Text) {
                              if (Text!.isEmpty) {
                                return 'Email can\'t Empty';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 2.h),
                          width: 80.w,
                          child: TextFormField(
                            controller: Email,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2.sp,
                                        color: Colors.lightBlueAccent)),
                                label: const Text("Email"),
                                prefixIcon: const Icon(Icons.email),
                                isDense: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2.sp, color: Colors.blue),
                                    borderRadius: BorderRadius.circular(5.sp)),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2.sp, color: Colors.red)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2.sp, color: Colors.blue))),
                            validator: (Text) {
                              if (Text!.isEmpty) {
                                return 'Email can\'t Empty';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          width: 80.w,
                          margin: EdgeInsets.only(top: 2.h, bottom: 0.h),
                          child: TextFormField(
                              controller: Number,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  isDense: true,
                                  label: const Text("Number"),
                                  prefixIcon: const Icon(Icons.phone),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2.sp, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(10)),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2.sp, color: Colors.red)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2.sp,
                                          color: Colors.lightBlueAccent)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2.sp, color: Colors.blue))),
                              validator: (Text) {
                                if (Text!.isEmpty) {
                                  return 'Number can\'t Empty';
                                } else {
                                  return null;
                                }
                              }),
                        ),
                        Container(
                          width: 80.w,
                          margin: EdgeInsets.only(top: 2.h, bottom: 3.h),
                          child: TextFormField(
                              controller: password,
                              keyboardType: TextInputType.name,
                              obscureText: ishidden,
                              decoration: InputDecoration(
                                  isDense: true,
                                  suffixIcon: IconButton(onPressed: ()=>eyepassword()
                                    ,icon: Icon(SurfixIcon),),
                                  label: const Text("Password"),
                                  prefixIcon: const Icon(Icons.lock),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2.sp, color: Colors.blue),
                                      borderRadius: BorderRadius.circular(10)),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2.sp, color: Colors.red)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2.sp,
                                          color: Colors.lightBlueAccent)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2.sp, color: Colors.blue))),
                              validator: (Text) {
                                if (Text!.isEmpty) {
                                  return 'Password can\'t Empty';
                                } else {
                                  return null;
                                }
                              }),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 2.h),
                          child: ButtonFc(
                            onpres: () {
                              Fluttertoast.showToast(
                                  msg: "Succeeded registration",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.green,
                                  textColor: Colors.white,
                                  fontSize: 10.sp
                              );
                              Navigator.pushNamed(context, screens.HomePageScreen);
                            },
                            width: 80.sp,
                            Boxcolor: Colors.lightBlue,
                            splashColor: Colors.blue,
                            child: Text(
                              "Sigin Up",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Divider(
                        thickness: 1.sp,
                        color: Colors.blueAccent,
                      )),
                  Expanded(
                      flex: 1,
                      child: Text(
                        "Or",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w800),
                      )),
                  Expanded(
                      flex: 3,
                      child: Divider(
                        thickness: 1.sp,
                        color: Colors.blueAccent,
                      )),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 9.w, top: 0.h, bottom: 0.h),
                width: 70.w,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Center(
                        child: Text(
                          "If you have an account click ",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 12.sp),
                        )),
                    InkWell(
                      child: Text(
                        "here",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, screens.LoginScreen);
                      },
                    )
                  ],
                ),
              ),
              Container(
                width: 60.w,
                height: 6.h,
                margin: EdgeInsets.only(top: 2.h),
                child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.sp)),
                        side: BorderSide(color: Colors.green, width: 2.sp)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: CircleAvatar(
                              radius: 10.sp,
                              backgroundImage:
                              const AssetImage("image/google-logo.png"),
                              backgroundColor: Colors.white,
                            )),
                        const Expanded(
                            flex: 3,
                            child: Text(
                              "Login with Gmail",
                              style: TextStyle(color: Colors.green),
                            ))
                      ],
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 2.h),
                width: 60.w,
                height: 6.h,
                child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.sp)),
                        side: BorderSide(
                            color: Colors.deepPurpleAccent, width: 2.sp)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: CircleAvatar(
                              radius: 10.sp,
                              backgroundColor: Colors.white,
                              backgroundImage: const AssetImage("image/yahoo.png"),
                            )),
                        const Expanded(
                            flex: 3,
                            child: Text(
                              "Login with Yahoo",
                              style: TextStyle(color: Colors.deepPurpleAccent),
                            ))
                      ],
                    )),
              )
            ],
          ),
        ),
      ),

    );
  }
}
