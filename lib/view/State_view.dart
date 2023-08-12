import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widget/Button_fc.dart';

class StateView extends StatefulWidget {
 final String? name;
   StateView({Key? key,required this.name}) : super(key: key);

  @override
  State<StateView> createState() => _StateViewState();
}

class _StateViewState extends State<StateView> {

  List image = [
    {"url": "image/ma.jpg"},
    {"url": "image/ma1.jpg"},
    {"url": "image/ma2.jpg"},
    {"url": "image/ma3.jpg"}


  ];
  List Post = [
    {"url": "image/ma.jpg","min":"1min","post":"وتظن انك نجوت ثم تهزمك ثمبوثه بالرز المعمر","name":"mahmoudbadran"},
    {"url": "image/ma.jpg","min":"4min","post":"الحب ولع في الدره","name":"Mahmoudbadran"},
    {"url": "image/ma.jpg","min":"20min","post":"كل عام وانت بخير ورمضان كريم عليكم","name":"Mahmoudbadran"},
    {"url": "image/ma.jpg","min":"30min","post":"صلي علي النبي","name":"Mahmoudbadran"},


  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 20.h,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2.sp, color: Colors.blue)),
                    margin: EdgeInsets.all(5.sp),
                    width: 30.w,
                    height: 20.h,
                    child:  const Center(
                      child: CircleAvatar(
                        child: Icon(Icons.add_a_photo),
                      ),
                    ),
                  ),
                  ...List.generate(
                    image.length,
                    (index) => Container(
                      margin: EdgeInsets.all(5.sp),
                      color: Colors.blue,
                      width: 30.w,
                      height: 20.h,
                      child: Image.asset(
                        "${image[index]["url"]}",
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ...List.generate(Post.length, (index) => SingleChildScrollView(
            child: Container(margin: EdgeInsets.all(10.sp),
              width: double.infinity,height: 20.h,decoration:BoxDecoration(color: Colors.white,
                  boxShadow: const [BoxShadow(color: Colors.blue,blurRadius: 20)],
                  border: Border.all(width: 1.sp,color: Colors.black12)),
              child: Stack(
                children: [
                  Positioned(
                      top:2.h,
                      left: 6.w,
                      child: CircleAvatar(backgroundImage:  AssetImage("${Post[index]["url"]}"),radius:20.sp,)),
                  Positioned(
                      top:2.h,
                      left: 20.w,
                      child: Text("${widget.name}",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 10.sp,color: Colors.black),)),
                  Positioned(
                    top:5.h,
                    left: 21.w,
                    child: Icon(Icons.lock_open_outlined,size: 15.sp,),),
                  Positioned(
                      top:5.h,
                      left: 27.w,
                      child: Text("${Post[index]["min"]}",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 10.sp,color: Colors.black54),)),
                  Positioned(
                      top:10.h,
                      left: 20.w,
                      child: Text("${Post[index]["post"]}",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 12.sp,color: Colors.black54),)),
                  Positioned(
                      top:14.h,
                      child:SizedBox(
                        width:100.w ,
                        height: 6.h,

                        child: Row(children: [
                          Expanded(child: ButtonFc(onpres: (){},radius:0,Boxcolor:Colors.white,child: Row(children: const [
                            Icon(Icons.emoji_emotions_sharp),
                            Text("Like")
                          ],),)),
                          Expanded(child: ButtonFc(onpres: (){},radius:0,Boxcolor:Colors.white,child: Row(children: const [
                            Icon(Icons.comment),
                            Text("Comment")
                          ],),)),
                          Expanded(child: ButtonFc(onpres: (){},radius:0,Boxcolor:Colors.white,child: Row(children: const [
                            Icon(Icons.share),
                            Text("Share")
                          ],),)),
                        ],),
                      )
                  ),
                ],
              ),
            ),
          )
          )
        ],
      ),
    );
  }
}
