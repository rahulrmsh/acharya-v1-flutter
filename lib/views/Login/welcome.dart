import 'package:acharya1/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(1080, 2400), allowFontScaling: false);
    final height = ScreenUtil().setHeight(2400);
    final width = ScreenUtil().setHeight(1800);
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.05, horizontal: width * 0.05),
          child: Column(
            children: [
              Center(
                child: Image(
                  height: height * 0.4,
                  image: AssetImage('assets/images/welcome01.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.04),
                child: Center(
                  child: Text(
                    "Lorem ipsum dolor sit amet",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: homeBgColor,
                      fontFamily: 'Bambino',
                      letterSpacing: 0.5,
                      fontSize: ScreenUtil().setSp(60),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.01),
                child: Center(
                  child: Text(
                    "Lorem ipsum dolor sit amet consectetur adipiscing elit, Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: GoogleFonts.openSans(
                      color: fadeTextColor,
                      fontSize: ScreenUtil().setSp(45),
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
