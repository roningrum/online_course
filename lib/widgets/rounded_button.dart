import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class RoundedButton extends StatelessWidget {
  final String? icon;

  const RoundedButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 26,
      height: 26,

      decoration: BoxDecoration(
          color: whiteCard,
        borderRadius: BorderRadius.circular(6)
      ),
      child: IconButton(
        onPressed: (){},
        padding: EdgeInsets.all(0),
        icon: Image.asset(icon!, width: 24, height: 24),
      ),
    );
  }
}
