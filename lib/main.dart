import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kalicart/routes/app_routes.dart';
import 'package:kalicart/views/home_screen.dart';
import 'package:kalicart/views/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      designSize: const Size(360, 712),
      
      child: GetMaterialApp(
        theme: ThemeData(
          fontFamily: 'Montserrat',
          
        ),
        debugShowCheckedModeBanner: false,
        title: 'Kalicart',
        initialRoute: AppRoutes.initial,
        getPages: AppRoutes.routes,
      
      
      
      ),
    );
  }
}
