




import 'package:flutter/material.dart';
import 'package:flutter30dayschallenge/pages/list_view_exmaple.dart';
import 'package:flutter30dayschallenge/pages/page_view_builder_example.dart';
import 'package:flutter30dayschallenge/pages/sign_up_page.dart';
import 'package:flutter30dayschallenge/pages/youtube_search/model/item_data.dart';
import 'package:flutter30dayschallenge/pages/youtube_search/play_video.dart';
import 'package:flutter30dayschallenge/pages/youtube_search/youtube_search_page.dart';

import 'day10/animated_builder_example.dart';
import 'day10/animated_widget_example.dart';
import 'day10/simple_animation_example.dart';
import 'day10/simple_basic_aniamtion.dart';
import 'day11/animated_drawer_home.dart';
import 'day11/simple_drawer_home.dart';
import 'day8.dart';
import 'grid_view_example.dart';
import 'home_page.dart';
import 'list_view_Builder_example.dart';
import 'login_page.dart';

class OnGenerateRoute{

  static Route<dynamic> route(RouteSettings settings){
    final args=settings.arguments;

    if (settings.name=="/"){
      return MaterialPageRoute(
          builder: (_) => YoutubeSearchPage()
      );
    }else if (settings.name=="/playVideo"){
      if (args is ItemData) {
        return MaterialPageRoute(
            builder: (_) => PlayVideo(item: args,)
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