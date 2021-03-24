import 'package:acharya1/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int currentIndex = 0;

class StudentHomeScreen extends StatefulWidget {
  @override
  _StudentHomeScreenState createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(1080, 2400), allowFontScaling: false);
    final height = ScreenUtil().setHeight(2400);
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          // iconTheme: IconThemeData(color: bottomNavbarColor),
          backgroundColor: mainBgColor,
          elevation: 0,
          centerTitle: false,
          leading: Icon(
            FontAwesomeIcons.bars,
            size: ScreenUtil().setSp(45),
            color: blackColor,
          ),
          title: Text(
            'ACHARYA',
            style: TextStyle(
              fontFamily: 'Bambino',
              letterSpacing: 0.5,
              fontSize: ScreenUtil().setSp(45),
              wordSpacing: ScreenUtil().setSp(20),
              color: blackColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                right: ScreenUtil().setSp(55),
              ),
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(_createRoute());
                },
                child: Icon(
                  FontAwesomeIcons.search,
                  size: ScreenUtil().setSp(45),
                  color: blackColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: ScreenUtil().setSp(55),
              ),
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(_createRoute());
                },
                child: Icon(
                  FontAwesomeIcons.bookmark,
                  size: ScreenUtil().setSp(45),
                  color: blackColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: ScreenUtil().setSp(55),
              ),
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(_createRoute());
                },
                child: Icon(
                  FontAwesomeIcons.commentAlt,
                  size: ScreenUtil().setSp(45),
                  color: blackColor,
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: homeBgColor,
          selectedItemColor: mainBgColor,
          selectedFontSize: ScreenUtil().setSp(18),
          unselectedFontSize: ScreenUtil().setSp(12),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: lightFadeText,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
            if (currentIndex == 1) {
              Navigator.pushNamed(context, 'search');
            } else if (currentIndex == 2) {
              Navigator.pushNamed(context, 'user');
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.compass,
                size: ScreenUtil().setSp(65),
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.search,
                size: ScreenUtil().setSp(45),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.userAlt,
                size: ScreenUtil().setSp(45),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
