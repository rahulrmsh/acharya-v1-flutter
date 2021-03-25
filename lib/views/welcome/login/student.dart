import 'package:acharya1/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

String userPass = '';
String userMail = '';
final TextEditingController _passController = TextEditingController();
final TextEditingController _mailController = TextEditingController();

class StudentLoginScreen extends StatefulWidget {
  @override
  _StudentLoginScreenState createState() => _StudentLoginScreenState();
}

class _StudentLoginScreenState extends State<StudentLoginScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(1080, 2400), allowFontScaling: false);
    final height = ScreenUtil().setHeight(2400);
    final width = ScreenUtil().setHeight(1800);
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          floatingActionButton: Padding(
            padding: EdgeInsets.symmetric(
              vertical: height * 0.025,
              horizontal: width * 0.025,
            ),
            child: FloatingActionButton(
              mini: true,
              heroTag: "btn1",
              elevation: 0,
              onPressed: () {},
              child: Icon(
                FontAwesomeIcons.chevronLeft,
                size: 26.0,
                color: fadeTextColor,
              ),
              backgroundColor: mainBgColor,
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
          body: Padding(
            padding: EdgeInsets.only(
              left: width * 0.05,
              right: width * 0.05,
              top: height * 0.15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let's sign you in",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: homeBgColor,
                    fontSize: ScreenUtil().setSp(75),
                    fontFamily: 'Bambino',
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '''Welcome Back
We've Missed You''',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.openSans(
                    fontSize: ScreenUtil().setSp(60),
                    fontWeight: FontWeight.w400,
                    color: fadeTextColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.1,
                  ),
                  child: TextFormField(
                    controller: _mailController,
                    onChanged: (value) {
                      setState(() {
                        userMail = value;
                      });
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: darkFadeTextColor,
                      fontSize: ScreenUtil().setSp(60),
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blackColor, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelStyle: TextStyle(
                        color: fadeTextColor,
                        fontSize: ScreenUtil().setSp(45),
                        fontWeight: FontWeight.w400,
                      ),
                      labelText: 'Enter Email',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.02,
                  ),
                  child: TextField(
                    controller: _passController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onChanged: (value) {
                      setState(() {
                        userPass = value;
                      });
                    },
                    style: TextStyle(
                      color: darkFadeTextColor,
                      fontSize: ScreenUtil().setSp(60),
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: blackColor, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                      ),
                      labelStyle: TextStyle(
                        color: fadeTextColor,
                        fontSize: ScreenUtil().setSp(45),
                        fontWeight: FontWeight.w400,
                      ),
                      labelText: 'Enter Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.2,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: height * 0.025,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '''Don't have an account?  ''',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          fontSize: ScreenUtil().setSp(40),
                          fontWeight: FontWeight.w400,
                          color: fadeTextColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.of(context).pushReplacement(
                          //   CupertinoPageRoute<bool>(
                          //     builder: (BuildContext context) => SignIn(),
                          //   ),
                          // );
                        },
                        child: Text(
                          '''Sign Up''',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            fontSize: ScreenUtil().setSp(40),
                            fontWeight: FontWeight.w500,
                            color: darkFadeTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'studentHome');
                    print('Pressed');
                  },
                  child: Container(
                    width: width,
                    height: height * 0.08,
                    decoration: BoxDecoration(
                      color: homeBgColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          color: whiteColor,
                          fontSize: ScreenUtil().setSp(45),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
