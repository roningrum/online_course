import 'package:flutter/material.dart';
import 'package:online_course/route/route.dart';
import 'package:online_course/theme.dart';
import 'package:online_course/widgets/rounded_articles_card.dart';
import 'package:online_course/widgets/rounded_button.dart';
import 'package:online_course/widgets/rounded_category_card.dart';
import 'package:online_course/widgets/rounded_popular_card.dart';

class HomePage extends StatefulWidget {
  static final String homePageRoutes = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = true;

  Widget header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/user_profile.png', width: 30, height: 30),
        Row(
          children: [
            RoundedButton(
                icon: 'assets/icons/search_icon.png', width: 24, height: 24),
            SizedBox(width: 12),
            RoundedButton(
              icon: 'assets/icons/notification_icon.png',
              width: 24,
              height: 24,
            ),
          ],
        )
      ],
    );
  }

  Widget category() {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          RoundedCategoryCard(
              iconCategory: 'assets/icons/icon_design.png',
              nameCategory: 'Design',
              countCourse: '49 Course'),
          RoundedCategoryCard(
              iconCategory: 'assets/icons/icon_softskill.png',
              nameCategory: 'Soft Skill',
              countCourse: '12 Course'),
          RoundedCategoryCard(
              iconCategory: 'assets/icons/icon_art.png',
              nameCategory: 'Art',
              countCourse: '36 Course')
        ],
      ),
    );
  }

  Widget popular(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Popular', style: subTitleText),
            Text('Show all', style: showAllText),
          ],
        ),
        SizedBox(height: 12),
        Container(
          height: 215,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                child: RoundedPopularCard(
                    imageCourse: 'assets/images/wireframe.png',
                    nameCourse: 'UI Design : Wireframe to\nVisual Design',
                    userReview: '(4016)'),
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, detailPage);
                  });
                },
              ),
              RoundedPopularCard(
                  imageCourse: 'assets/images/styleguide.png',
                  nameCourse: 'UI Design : Styleguidee\nwith Figma',
                  userReview: '(1055)')
            ],
          ),
        )
      ],
    );
  }

  Widget articles() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Articles', style: subTitleText),
            Text('Show all', style: showAllText),
          ],
        ),
        SizedBox(height: 12),
        RoundedArticlesCard('assets/images/fullstack.png',
            'How to: Work faster as\nFull Stack Designer', 'UI Design', true),
        RoundedArticlesCard('assets/images/sketch.png',
            'How to: Digital Art from\nSketch', 'Art', false),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 8), () =>
        setState((){
          isLoading = false;
        })
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: isLoading
              ? Center(
                  child: CircularProgressIndicator(
                  color: bluePrimary,
                  strokeWidth: 5,
                ))
              : Padding(
                  padding: EdgeInsets.only(right: 24, left: 24, top: 24),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        header(),
                        SizedBox(height: 12),
                        Text('''Want to Study Class\nwhat\'s Today?''',
                            style: titleText),
                        SizedBox(height: 12),
                        category(),
                        SizedBox(height: 24),
                        popular(context),
                        SizedBox(height: 24),
                        articles()
                      ],
                    ),
                  ),
                ),
        ),
        bottomNavigationBar: Container(
          height: 72,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset('assets/icons/home_menu.png',
                      width: 24, height: 24),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/icons/explore_menu.png',
                      width: 24, height: 24),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/icons/whitelist_menu.png',
                      width: 24, height: 24),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/user_profile.png',
                    width: 24,
                    height: 24,
                  ),
                  label: 'home'),
            ],
          ),
        ));
  }
}
