import 'package:acharya1/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
            backgroundColor: homeBgColor,
            body: Column(
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(color: mainBgColor),
                    ),
                    Container(
                      color: mainBgColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 50),
                              child: Center(
                                child: CircleAvatar(
                                  backgroundColor: mainBgColor,
                                  backgroundImage:
                                      AssetImage('assets/images/logoAv1.png'),
                                  radius: 100.0,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Center(
                                  child: Text(
                                    "Acharya",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontFamily: 'JosefinSans-Semi',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              )),
                        ],
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
