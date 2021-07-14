import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class RoundedButton extends StatelessWidget {
  final String? icon;
  final double? width;
  final double? height;

  const RoundedButton({this.icon, this.width, this.height});

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
        icon: Image.asset(icon!, width: width, height: height),
      ),
    );
  }
}
