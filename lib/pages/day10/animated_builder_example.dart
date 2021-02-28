

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AnimatedBuilderExample extends StatefulWidget {
  @override
  _AnimatedBuilderExampleState createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample> with SingleTickerProviderStateMixin {

  Animation<double> _animation;

  AnimationController _animationController;


  @override
  void initState() {
    _animationController = AnimationController(
      duration: Duration(milliseconds: 1500),
      vsync: this,
    );
    final animationCurve=CurvedAnimation(curve: Curves.easeInExpo,reverseCurve: Curves.easeIn,parent: _animationController);
    _animation =
    Tween<double>(begin: 5, end: 50).animate(animationCurve)..addStatusListener((status) {
      if (status == AnimationStatus.completed){
        _animationController.reverse();
      }else if (status == AnimationStatus.dismissed){
        _animationController.forward();
      }
    });

    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animation,
        builder: (context,child){
          return Transform.translate(
            offset: Offset(0,_animation.value),
            child: Center(
              child: Icon(FontAwesome.heart_o,size: 70,),
            ),
          );
        },
      ),
    );
  }
}
