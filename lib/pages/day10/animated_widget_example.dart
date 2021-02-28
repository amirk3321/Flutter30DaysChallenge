
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AnimatedWidgetExample extends StatefulWidget {
  @override
  _AnimatedWidgetExampleState createState() => _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample> with SingleTickerProviderStateMixin {
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
    Tween<double>(begin: 5, end: 10).animate(animationCurve)..addStatusListener((status) {
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
      body: ImageAnimatedWidget(animation: _animation,),
    );
  }
}

class ImageAnimatedWidget extends AnimatedWidget{
  final Animation<double> animation;

  ImageAnimatedWidget({this.animation}):super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation=listenable as Animation<double>;
   return  Transform.scale(
     scale: animation.value,
     child: Center(
       child: Icon(FontAwesome.heart_o),
     ),
   );
  }

}


