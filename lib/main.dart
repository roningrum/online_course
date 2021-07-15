import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course/route/route.dart' as route;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: route.generateRoute,
      initialRoute: route.homePage,
    );
  }
}
