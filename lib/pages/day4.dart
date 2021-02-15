import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Day4 extends StatelessWidget {
  int age=10;
  String name='my aage is :';
  double salary=70000.34534;
  bool isLight=false;
  num value=234234.234234;
  var digit="sdlfjsdl";
  final x=23423;
  static const double pi=3.14;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day4"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              FontAwesome.amazon,
              size: 90,
              color: Colors.deepOrange,
            ),
          ),
          Text("$name $age, salary $salary isLight $isLight"),
          Container(height: 40,width: 80,color: Colors.red,),
          SizedBox(height: 30,),
          Row(
            children: [
              Container(height: 40,width: 80,color: Colors.red,),
              Expanded(child: Container(height: 40,width: 80,color: Colors.purple,)),

            ],
          ),
          Expanded(child: Container(height: 40,width: 80,color: Colors.red,))
        ],
      ),
    );
  }
}
