import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter 30 days challenge",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Day 1"),
        ),
        body: Center(
          child: Text("flutter 30 days challenge"),
        ),
      ),
    ),
  );
}
