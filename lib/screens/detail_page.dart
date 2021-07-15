import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course/route/route.dart';
import 'package:online_course/theme.dart';
import 'package:online_course/widgets/chip_widget.dart';
import 'package:online_course/widgets/item_video_course.dart';
import 'package:online_course/widgets/rounded_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final ScrollController _scrollController = ScrollController(initialScrollOffset: 2);
  Widget headerDetail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: RoundedButton(
            icon: 'assets/icons/back_detail.png',
            width: 12.0
          ),
          onTap: (){
            Navigator.pushNamed(context, homePage);
          },
        ),
        Text('Course Details',
            style: titleText.copyWith(fontSize: 14),
            textAlign: TextAlign.center),
        RoundedButton(
          icon: 'assets/icons/substract.png',
          width: 12
        ),
      ],
    );
  }

  Widget videoCourse() {
    return Container(
      width: MediaQuery.of(context).size.width -
          MediaQuery.of(context).padding.horizontal,
      height: 227,
      decoration: BoxDecoration(
          color: whiteCard, borderRadius: BorderRadius.circular(12)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                'assets/images/wireframe.png',
                width: MediaQuery.of(context).size.width -
                    MediaQuery.of(context).padding.horizontal,
                height: MediaQuery.of(context).size.width -
                    MediaQuery.of(context).padding.horizontal,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: whiteCard.withOpacity(0.2)
            ),
            child: Icon(
              Icons.play_arrow_rounded, color: whiteCard, size: 36
            ),
          )

        ],
      ),
    );
  }

  Widget mentor() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset('assets/images/mentor_profile.png',
                width: 36, height: 36),
            SizedBox(width: 6),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Shem Bizo', style: subTitleText.copyWith(fontSize: 14)),
                Text('Mentor Designer',
                    style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: greyText,
                        fontWeight: FontWeight.w500))
              ],
            ),
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios_rounded,
                size: 24, color: blackText))
      ],
    );
  }

  Widget category() {
    return Container(
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ChipWidget('About', whiteCard, blackText),
          ChipWidget('Lesson', blueChip, bluePrimary),
          ChipWidget('Tools', whiteCard, blackText),
          ChipWidget('Resource', whiteCard, blackText),
          ChipWidget('Review', whiteCard, blackText),
        ],
      ),
    );
  }

  Widget courseList() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Course List',
          style: subTitleText.copyWith(fontSize: 12),
          textAlign: TextAlign.justify),
      SizedBox(height: 6),
      Container(
        width: MediaQuery.of(context).size.width -
            MediaQuery.of(context).padding.horizontal,
        height: 307,
        decoration: BoxDecoration(
            color: whiteCard, borderRadius: BorderRadius.circular(12)),
        child: Scrollbar(
          isAlwaysShown: true,
          hoverThickness: 2,
          controller: _scrollController,
          child: ListView(
            controller: _scrollController,
            children: [
             ItemVideoCourse('1', 'Visual Design Intro', '04:47'),
             ItemVideoCourse('2', 'Design Reference', '03:45'),
             ItemVideoCourse('3', 'Create Moodboand', '03:45'),
             ItemVideoCourse('4', 'Wireframe to Visual Design Part 1', '09:03'),
             ItemVideoCourse('5', 'Wireframe to Visual Design Part 2', '09:03'),
            ],
          ),
        ),
      )
    ]);
  }

  Widget bottom(){
    return Container(
      height: 72,
      padding: EdgeInsets.only(left: 24),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Column(
            children: [
              SizedBox(height: 14),
              Text('Price', style: durationText.copyWith(fontSize: 12, fontWeight: FontWeight.w500)),
              Text('Free', style: freeText.copyWith(fontSize: 18),)
            ],
          ),
          Container(
            width: 226,
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(24)),
              color: bluePrimary
            ),
            child:
            Center(child: Text('Start Course', style: titleText.copyWith(color: whiteCard), textAlign: TextAlign.center)),
          )
        ]

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headerDetail(),
                SizedBox(height: 26),
                videoCourse(),
                SizedBox(height: 12),
                Text('''UI Design: Wireframe to\nVisual Design''',
                    style: titleText),
                SizedBox(height: 12),
                mentor(),
                SizedBox(height: 24),
                category(),
                SizedBox(height: 12),
                courseList()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottom(),
    );
  }
}
