import 'package:firebase_core/firebase_core.dart';
import 'package:flutt_second/admin_login_page.dart';
import 'package:flutt_second/book_now_page.dart';
import 'package:flutt_second/enter_page.dart';
import 'package:flutt_second/food_booking_page.dart';
import 'package:flutt_second/login_page.dart';
import 'package:flutt_second/mypage.dart';
import 'package:flutt_second/request_page.dart';
import 'package:flutt_second/signup_page.dart';
import 'package:flutt_second/signup_screen.dart';
import 'package:flutt_second/user_registration_page.dart..dart';
import 'package:flutt_second/user_signup_page.dart';
import 'package:flutt_second/view_details_page.dart';
import 'package:flutt_second/welcome_page.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'home_page.dart';
import 'package:flutt_second/registration_screen.dart';
import 'login_page.dart';
import 'book_now_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('android/app/assets/images/people.png');
    Image image = Image(image: assetImage);


    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',

      home: WelcomePage(),



    );

  }
}



