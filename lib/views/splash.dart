import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:library_mec/utilities/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/screenutil.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(1080, 2400), allowFontScaling: false);
    return WillPopScope(
      onWillPop: () async {
        await SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          body: Hero(
            tag: 'splash',
            child: Container(
                color: mainTextColor,
                child: Center(
                  child: Text(
                    'MECL',
                    style: TextStyle(
                      fontFamily: 'Bambino',
                      letterSpacing: 0.5,
                      fontSize: ScreenUtil().setSp(90),
                      color: mainBgColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
