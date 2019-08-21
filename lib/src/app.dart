import  'package:flutter/material.dart';
//import 'package:flutter_planet/src/pages/home_page.dart';
import 'package:flutter_planet/src/pages/page_count.dart';
import 'package:flutter_planet/src/utils/appcolors.dart';
 
class MyApp extends StatelessWidget {
  @override //asegurase que se sobrescribe el metodo
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Planet',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primaryColor: AppColors.PrimaryColor,
        ),
        home: Center(
      child: PageCount(),
    ));
  }
}