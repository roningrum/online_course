import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:online_course/theme.dart';

class RoundedArticlesCard extends StatefulWidget {

  final String image;
  final String nameCourse;
  final String categoryCourse;
  final bool selected;

  RoundedArticlesCard(this.image, this.nameCourse, this.categoryCourse, this.selected);

  @override
  _RoundedArticlesCardState createState() => _RoundedArticlesCardState();
}

class _RoundedArticlesCardState extends State<RoundedArticlesCard> {

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: MediaQuery.of(context).size.width - MediaQuery.of(context).padding.horizontal,
        height: 80,
        margin: EdgeInsets.only(top: 12),
        child: Row(
          children: [
            Image.asset(widget.image, width: 86, height: 80, fit: BoxFit.cover),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('How to: Digital Art from\nSketch', style: subTitleText.copyWith(fontSize: 12)),
                  SizedBox(height: 5),
                  Text('Art', style: userReviewText)
                ],
              ),
            ),
            IconButton(onPressed: (){}, icon: Icon(widget.selected?Icons.favorite_rounded: Icons.favorite_outline_rounded, color: widget.selected? redFav : greyText, size: 16,))
          ],
        ),
      ),
    );
  }
}


