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
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(height * 0.05),
              child: Center(
                child: Image(
                  height: height * 0.4,
                  image: AssetImage('assets/images/welcome03.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04),
              child: Center(
                child: Text(
                  "Lorem ipsum dolor sit amet",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Bambino',
                    letterSpacing: 0.5,
                    fontSize: ScreenUtil().setSp(90),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.01),
              child: Center(
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: GoogleFonts.josefinSans(
                    color: Colors.white,
                    fontSize: ScreenUtil().setSp(70),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
