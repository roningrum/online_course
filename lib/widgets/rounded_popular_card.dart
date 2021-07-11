
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:online_course/theme.dart';

class RoundedPopularCard extends StatelessWidget {
  final String imageCourse;
  final String nameCourse;
  final String userReview;
  const RoundedPopularCard({required this.imageCourse, required this.nameCourse, required this.userReview});

  Widget ratingWidget(){
    return Row(
      children: [
        RatingBar(
            initialRating: 5,
            itemSize: 16,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
            ratingWidget: RatingWidget(
              full: Icon(Icons.star_rounded, color: yellowCard),
              half: Icon(Icons.star_half_rounded, color: yellowCard),
              empty: Icon(Icons.star_outline, color: yellowCard),
            ),
            onRatingUpdate: (rating) {
              print(rating);
            }),
        SizedBox(width: 4),
        Text(userReview,style: userReviewText)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: 180,
        height: 215,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageCourse,
                width: 180, height: 100, fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.only(left: 12, top: 12, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Free', style: freeText),
                  SizedBox(height: 4),
                  Text(nameCourse,
                      style: subTitleText.copyWith(fontSize: 12)),
                  SizedBox(height: 2),
                 ratingWidget()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
