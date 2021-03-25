import 'package:acharya1/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PreferencesScreen extends StatefulWidget {
  @override
  _PreferencesScreenState createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends State<PreferencesScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(1080, 2400), allowFontScaling: false);
    final height = ScreenUtil().setHeight(2400);
    final width = ScreenUtil().setHeight(1200);
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
            size: ScreenUtil().setSp(50),
            color: blackColor,
          ),
          title: Text(
            'Preferences',
            style: GoogleFonts.openSans(
              fontSize: ScreenUtil().setSp(50),
              wordSpacing: ScreenUtil().setSp(20),
              color: blackColor,
              fontWeight: FontWeight.w600,
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
                  FontAwesomeIcons.bookmark,
                  size: ScreenUtil().setSp(50),
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
                  size: ScreenUtil().setSp(50),
                  color: blackColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
