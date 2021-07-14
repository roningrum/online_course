import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class ItemVideoCourse extends StatelessWidget {
  final String number;
  final String titleVideo;
  final String durationVideo;

 ItemVideoCourse(this.number, this.titleVideo, this.durationVideo);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                color: blueChip, borderRadius: BorderRadius.circular(8)),
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4 ),child: Text(number, style: showAllText.copyWith(fontSize: 11), textAlign: TextAlign.center,)),
          ),
          SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(titleVideo, style: titleText.copyWith(fontSize: 14, fontWeight: FontWeight.w500)),
              Text(durationVideo, style: durationText),
            ],
          )
        ],
      ),
    );
  }
}
