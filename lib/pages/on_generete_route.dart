




import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/pages/sign_up_page.dart';

import 'day8.dart';
import 'home_page.dart';
import 'login_page.dart';

class OnGenerateRoute{

  static Route<dynamic> route(RouteSettings settings){
    final args=settings.arguments;

    if (settings.name=="/"){
      return MaterialPageRoute(
          builder: (_) => Day8()
      );
    }else if (settings.name=="/signup"){
      return MaterialPageRoute(
          builder: (_) => SignUpPage()
      );
    }else if (settings.name=="/login"){
      return MaterialPageRoute(
          builder: (_) => LoginPage()
      );
    }else if (settings.name=="/homePage"){
      if (args is UserData)
        return MaterialPageRoute(
            builder: (_) => HomePage(userData: args,)
        );
      else
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text("error"),
              ),
              body: Center(
                child: Text("error"),
              ),
            )
        );
    }else{
      return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text("error"),
            ),
            body: Center(
              child: Text("error"),
            ),
          )
      );
    }
  }
}