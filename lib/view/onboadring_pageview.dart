
import 'package:flutter/material.dart';
import 'package:untitled7/data/onboadring_model.dart';

class OnboadringPageview extends StatelessWidget {
  final OnboadringModel Model;
  const OnboadringPageview({Key? key, required this.Model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 5,
            child: Image.asset("${Model.images}")),
        Expanded(
flex: 1,
            child: Container(
              margin: const EdgeInsets.all(10),
                child: Text("${Model.title}",style: TextStyle(fontSize: 25,color: Colors.blueAccent,fontWeight: FontWeight.w700),))),
        Expanded(
        flex: 2,
            child: Container(  margin: EdgeInsets.all(10),
                child: Text("${Model.body}",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: Colors.blue),))),
      ],
    );
  }
}
