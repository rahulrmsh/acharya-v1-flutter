import 'package:acharya1/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(1080, 2400), allowFontScaling: false);
    final height = ScreenUtil().setHeight(2400);
    return WillPopScope(
      onWillPop: () async {
        await SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
        return false;
      },
      child: SafeArea(
        child: Scaffold(
            backgroundColor: homeBgColor,
            body: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: homeBgColor),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                      child: Image(
                        height: ScreenUtil().setHeight(820),
                        image: AssetImage('assets/images/logoAv1.png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.02),
                      child: Center(
                        child: Text(
                          "ACHARYA",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(120),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.02),
                      child: Center(
                        child: Text(
                          "learning made easy",
                          style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(120),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
