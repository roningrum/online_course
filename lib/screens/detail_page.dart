import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 24),
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
