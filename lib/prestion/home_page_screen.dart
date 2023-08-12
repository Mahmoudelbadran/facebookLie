import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../view/State_view.dart';

class HomePageScreen extends StatefulWidget {
  String? name;
   HomePageScreen({Key? key,this.name}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> with SingleTickerProviderStateMixin{

  @override

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 4,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "faceBook",
            style: TextStyle(fontSize: 25.sp),
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            Container(
                margin: EdgeInsets.only(right: 5.w),
                child: Icon(
                  Icons.facebook,
                  size: 30.sp,
                ))
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.videogame_asset_sharp),
              ),
              Tab(
                icon: Icon(Icons.group),
              ),
              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(
                icon: Icon(Icons.screenshot_monitor),
              ),
              Tab(
                icon: Icon(Icons.home),
              )
            ],
          ),
        ),
        drawer: const Drawer(),
        body: TabBarView(

          children: [
          Container(color: Colors.white,width: double.infinity,height: double.infinity,),
          Container(color: Colors.white,width: double.infinity,height: double.infinity,),
          Container(color: Colors.white,width: double.infinity,height: double.infinity,),
          Container(color: Colors.white,width: double.infinity,height: double.infinity,),
          Container(color: Colors.white,width: double.infinity,height: double.infinity,child: StateView(name: '${widget.name}',),),
        ],)
      ),
    );
  }
}
