import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/pages/home_page.dart';
import 'package:flutter30dayschallenge/pages/image_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter 30 days challenge",
      home: ImagePage(),
    );
  }

}




