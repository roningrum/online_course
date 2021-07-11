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
      return MaterialPageRoute(builder: (context) => DetailPage());
    default:
      throw('This route name does not exist');
  }
}