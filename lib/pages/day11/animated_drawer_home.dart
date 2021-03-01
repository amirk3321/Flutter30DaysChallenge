import 'package:flutter/material.dart';

class AnimatedDrawerHome extends StatefulWidget {
  @override
  _AnimatedDrawerHomeState createState() => _AnimatedDrawerHomeState();
}

class _AnimatedDrawerHomeState extends State<AnimatedDrawerHome> with SingleTickerProviderStateMixin {


  AnimationController _animationController;

  @override
  void initState() {
    _animationController=AnimationController(duration: Duration(milliseconds: 600),vsync: this);
    super.initState();
  }

  void startAnimation(){
    if (_animationController.isDismissed){
      _animationController.forward();
    }else{
      _animationController.reverse();
    }
  }
  @override
  Widget build(BuildContext context) {
    final rideSide = MediaQuery
        .of(context)
        .size
        .width * 0.4;
    return AnimatedBuilder(animation: _animationController, builder: (context,child){
      return Stack(
        children: [
          _drawerMenu(),
          Transform(alignment: Alignment.center, transform: Matrix4.identity()
            ..translate(rideSide *_animationController.value)
            ..scale(1-(_animationController.value * 0.3)), child: _bodyWidget()),
        ],
      );
    });
  }

  Widget _bodyWidget() {
    return Scaffold(
      body: Column(
        children: [
          _header(),
        ],
      ),
    );
  }

  Widget _drawerMenu() {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[200],
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.blueGrey
                ),
                accountName: Text("eTechViral",
                  style: TextStyle(fontSize: 18, color: Colors.white),),
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
            _drawerItem(title: "Activities",
                iconData: Icons.add_shopping_cart_outlined),
            _drawerItem(title: "Edit User Profile", iconData: Icons.edit),
            _drawerItem(title: "Contact", iconData: Icons.add_call),
            _drawerItem(title: "Logout", iconData: Icons.exit_to_app),
          ],
        ),
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
                InkWell(onTap: (){
                  startAnimation();
                },child: Icon(Icons.menu)),
                Text("day 11",
                  style: TextStyle(fontSize: 20, color: Colors.white),),
                Icon(Icons.notifications_none_outlined)
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget _drawerItem({String title, IconData iconData}) {
    return ListTile(
      title: Text(title, style: TextStyle(fontSize: 16, color: Colors.white),),
      leading: Icon(iconData),
    );
  }
}
