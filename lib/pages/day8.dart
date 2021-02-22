
import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/pages/home_page.dart';
import 'package:flutter30dayschallenge/pages/sign_up_page.dart';


class UserData{
  final String username;
  final String userId;

  UserData(this.username, this.userId);
}

class Day8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 8 "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                Navigator.pushNamed(context, '/signup');
              },
              child: Text("Sign up"),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/login');
              },
              child: Text("Sign In"),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/homePage',arguments: UserData("eTechViral", "15"));
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (_) => HomePage(data: "Welcome to day 8 3423472sldfj" ,)
                // ));
              },
              child: Text("Home Page"),
            ),
          ],
        ),
      ),
    );
  }
}
