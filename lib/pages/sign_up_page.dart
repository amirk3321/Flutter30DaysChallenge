import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/logo.png",
              height: 150,
              width: 150,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Icon(
                    FontAwesome.facebook,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Icon(
                    FontAwesome.google,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Icon(FontAwesome.twitter,color: Colors.white,),),
              ],
            ),
            SizedBox(height: 10,),
            Divider(thickness: 2),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.4),
                    spreadRadius: 2,
                    blurRadius: 2
                  )
                ]
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.4),
                        spreadRadius: 2,
                        blurRadius: 2
                    )
                  ]
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.4),
                        spreadRadius: 2,
                        blurRadius: 2
                    )
                  ]
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                  border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Text("Sign UP",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
