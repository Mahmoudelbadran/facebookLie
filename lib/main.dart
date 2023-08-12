import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled7/data/Local/My_cache.dart';
import 'package:untitled7/router/app_router.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await MyCache.initcachce();
  runApp(FaceBook());
}
class FaceBook extends StatelessWidget {
  final AppRouter appRouter=AppRouter();
   FaceBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context,Orientation,deviceType){
      return   MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute:appRouter.onGenerateRoute,
      );
    });

  }
}

