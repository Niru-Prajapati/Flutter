import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube/app_routes.dart';
import 'package:youtube/home_page.dart';
import 'package:youtube/mobile_app.dart';

import 'package:youtube/second_mob.dart';
import 'package:youtube/monday_class.dart';
import 'package:youtube/simple_interest.dart';
import 'package:youtube/subtraction.dart';

import 'identity_card.dart';
import 'multiplication.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        // home:MondayClass()
        //  home:Subtraction()
     // home:Multiplication()
    //home:SimpleInterest()
      //home:IdentityCard()
      //home: HomePage(),
      initialRoute: AppRoute.home,
      routes: AppRoute.getAppRoutes(),
    );
  }
}
