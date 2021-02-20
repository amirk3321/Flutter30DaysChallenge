import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/pages/day3.dart';
import 'package:flutter30dayschallenge/pages/day4.dart';
import 'package:flutter30dayschallenge/pages/day5.dart';
import 'package:flutter30dayschallenge/pages/day6.dart';
import 'package:flutter30dayschallenge/pages/day7.dart';
import 'package:flutter30dayschallenge/pages/home_page.dart';
import 'package:flutter30dayschallenge/pages/image_page.dart';
import 'package:flutter30dayschallenge/pages/login_page.dart';
import 'package:flutter30dayschallenge/pages/sign_up_page.dart';
import 'package:flutter30dayschallenge/pages/tik_tok_ui_example_stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: "/day7",
      routes: {
        "/":(context) => HomePage(),
        "/login":(context) => LoginPage(),
        '/signUpPage' :(context) => SignUpPage(),
        "/day7" : (context) => Day7()
      },
      debugShowCheckedModeBanner: false,
      title: "flutter 30 days challenge",
      // home: MyStateFullWidget(),
    );
  }

}




