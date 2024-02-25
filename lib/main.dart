import 'package:flutter/material.dart';
import 'package:zyo/connecttous.dart';
import 'package:zyo/custom_nav_bar.dart';
import 'package:zyo/deleteaccount.dart';
import 'package:zyo/detailsofphoto.dart';
import 'package:zyo/doneshopping.dart';
import 'package:zyo/language.dart';
import 'package:zyo/myaddress.dart';
import 'package:zyo/searchscreen.dart';
import 'package:zyo/settings.dart';
import 'package:zyo/shoppingaddress.dart';
import 'package:zyo/shoppingbug.dart';
import 'package:zyo/showphoto.dart';
import 'package:zyo/touch.dart';
import 'changepassword.dart';
import 'homescreen.dart';
import 'signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: SignupScreen(),
    );
  }
}
