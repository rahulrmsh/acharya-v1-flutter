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
            padding: const EdgeInsets.all(10.0),
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
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.05,
              vertical: height * 0.15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
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
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1,
                    left: 25,
                    right: 25,
                  ),
                  child: TextField(
                    controller: _mailController,
                    onChanged: (value) {
                      setState(() {
                        userMail = value;
                      });
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: mainBgColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: darkFadeTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      border: InputBorder.none,
                      labelText: 'Enter Email',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                    left: 25,
                    right: 25,
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
                      color: mainBgColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: darkFadeTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      border: InputBorder.none,
                      labelText: 'Enter Password',
                    ),
                  ),
                ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: SignInButton(
                //     Buttons.Email,
                //     padding: EdgeInsets.symmetric(
                //         vertical: height * 0.02, horizontal: width * 0.1),
                //     text: "Log in with Email",
                //     onPressed: () {
                //       Navigator.pushNamed(context, 'email');
                //     },
                //     elevation: 5,
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: SignInButton(
                //     Buttons.Facebook,
                //     padding: EdgeInsets.symmetric(
                //         vertical: height * 0.02, horizontal: width * 0.1),
                //     text: "Log in with Facebook",
                //     onPressed: () {
                //       Navigator.pushNamed(context, 'profile');
                //     },
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: SignInButton(
                //     Buttons.Google,
                //     padding: EdgeInsets.symmetric(
                //         vertical: height * 0.01, horizontal: width * 0.1),
                //     text: "Log in with Google",
                //     onPressed: () {
                //       Navigator.pushNamed(context, 'profile');
                //     },
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: SignInButton(
                //     Buttons.Twitter,
                //     padding: EdgeInsets.symmetric(
                //         vertical: height * 0.02, horizontal: width * 0.1),
                //     text: "Log in with Twitter",
                //     onPressed: () {},
                //   ),
                // ),
                //   ],
                // ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: height * 0.025, top: height * 0.29),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '''Don't have an account?  ''',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: darkFadeTextColor,
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
                            style: GoogleFonts.raleway(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: blackColor,
                            ),
                          ),
                        ),
                      ],
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
