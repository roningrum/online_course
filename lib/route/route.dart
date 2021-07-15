import 'package:flutter/material.dart';
import 'package:online_course/screens/detail_page.dart';
import 'package:online_course/screens/home_page.dart';

const String homePage ='homePage';
const String detailPage ='detailPage';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case homePage:
      return MaterialPageRoute(builder: (context) => HomePage());
    case detailPage:
      return PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => DetailPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child){
          return SlideTransition(
            position: Tween(
                begin: Offset(1.0, 0.0),
                end: Offset(0.0, 0.0))
                .animate(animation),
            child: child,
          );
        },
        transitionDuration: Duration(milliseconds: 800)
      );
    default:
      throw('This route name does not exist');
  }
}