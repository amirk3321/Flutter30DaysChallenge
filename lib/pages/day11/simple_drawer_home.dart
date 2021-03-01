

import 'package:flutter/material.dart';

class SimpleHomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.blueGrey,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey
                  ),
                  accountName: Text("eTechViral",style: TextStyle(fontSize: 18,color: Colors.white),),
                  accountEmail: Text("etechviral@gmail.com"),
                  currentAccountPicture: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle
                    ),
                  ),
                ),
              ),
              _drawerItem(title: "Activities",iconData: Icons.add_shopping_cart_outlined),
              _drawerItem(title: "Edit User Profile",iconData: Icons.edit),
              _drawerItem(title: "Contact",iconData: Icons.add_call),
              _drawerItem(title: "Logout",iconData: Icons.exit_to_app),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          _header(),
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      height: 250,
      width: double.infinity,
      color: Colors.blueGrey,
      child: Column(
        children: [
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Text("day 11",style: TextStyle(fontSize: 20,color: Colors.white),),
                Icon(Icons.notifications_none_outlined)
              ],
            ),
          ),

        ],
      ),
    );
  }
  Widget _drawerItem({String title,IconData iconData}){
    return ListTile(
      title: Text(title,style: TextStyle(fontSize: 16,color: Colors.white),),
      leading: Icon(iconData),
    );
  }
}
