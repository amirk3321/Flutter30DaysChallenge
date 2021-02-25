import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Example"),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          reverse: true,
          physics: ScrollPhysics(),
          children: [
            ListTile(
              trailing: Icon(FontAwesome.heart_o),
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              title: Text("Heading Text"),
              subtitle: Text("sub heading "),
            ),
            ListTile(
              trailing: Icon(FontAwesome.heart_o),
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              title: Text("eTechViral"),
              subtitle: Text("Hi there i'm using this app "),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("heading widget or simple text"),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: 40,height: 80,decoration: BoxDecoration(
                color: Colors.red,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",style: TextStyle(fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}
