import 'package:acharya1/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// bool _lights = true;

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
              Padding(
                padding: EdgeInsets.only(top: height * 0.04),
                child: Center(
                  child: Text(
                    "Join the world of learning",
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
              // MergeSemantics(
              //   child: ListTile(
              //     title: Text(
              //       'Student Demo',
              //       style: GoogleFonts.openSans(
              //         color: fadeTextColor,
              //         fontSize: ScreenUtil().setSp(45),
              //         fontWeight: FontWeight.w400,
              //       ),
              //       textAlign: TextAlign.left,
              //     ),
              //     trailing: CupertinoSwitch(
              //       activeColor: homeBgColor,
              //       value: _lights,
              //       onChanged: (bool value) {
              //         setState(() {
              //           _lights = value;
              //         });
              //       },
              //     ),
              //     onTap: () {
              //       setState(() {
              //         _lights = !_lights;
              //       });
              //     },
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.04),
                child: Container(
                  width: width,
                  height: height * 0.08,
                  decoration: BoxDecoration(
                    color: homeBgColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: width * 0.27,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                            ),
                            child: TextButton(
                              child: Text(
                                'Student',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  color: homeBgColor,
                                  fontSize: ScreenUtil().setSp(45),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, 'studentLogin');
                                // print('Pressed');
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            color: Colors.grey.withOpacity(0.4),
                            width: 2,
                          ),
                          Container(
                            width: width * 0.27,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            child: TextButton(
                              child: Text(
                                'Tutor',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  color: homeBgColor,
                                  fontSize: ScreenUtil().setSp(45),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, 'tutorLogin');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
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
