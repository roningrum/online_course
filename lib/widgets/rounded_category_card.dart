import 'package:flutter/material.dart';
import 'package:online_course/theme.dart';

class RoundedCategoryCard extends StatelessWidget {
  final String iconCategory;
  final String nameCategory;
  final String countCourse;

  const RoundedCategoryCard({required this.iconCategory, required this.nameCategory, required this.countCourse});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12),
      margin: EdgeInsets.only(right: 14),
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: whiteCard,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          Image.asset(iconCategory, width: 42,height: 42),
          SizedBox(height: 17),
          Text(nameCategory, style: subTitleText.copyWith(fontSize: 12)),
          SizedBox(height: 4),
          Text(countCourse, style: userReviewText),
        ],
      ),
    );
  }
}
