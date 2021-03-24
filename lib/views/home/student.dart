import 'package:acharya1/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
            'ACHARYA',
            style: TextStyle(
              fontFamily: 'Bambino',
              letterSpacing: 0.5,
              fontSize: ScreenUtil().setSp(50),
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
                  FontAwesomeIcons.slidersH,
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
              // Navigator.pushNamed(context, 'search');
            } else if (currentIndex == 2) {
              // Navigator.pushNamed(context, 'user');
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.compass,
                size: ScreenUtil().setSp(50),
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.search,
                size: ScreenUtil().setSp(50),
                color: lightFadeText,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.userAlt,
                size: ScreenUtil().setSp(50),
                color: lightFadeText,
              ),
              label: 'Profile',
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext ctxt, int index) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(0),
                  width: width,
                  height: 2,
                  color: fadeTextColor.withOpacity(0.4),
                ),
                Container(
                  height: height * 0.24,
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 10,
                    bottom: 10,
                    right: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              right: width * 0.1,
                            ),
                            child: FadeInImage.assetNetwork(
                              height: height * 0.20,
                              fadeInDuration: Duration(milliseconds: 200),
                              placeholder: 'assets/images/face.png',
                              repeat: ImageRepeat.repeatX,
                              fit: BoxFit.contain,
                              image: 'https://picsum.photos/id/$index/120/150',
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  names[index],
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: blackColor,
                                    fontSize: ScreenUtil().setSp(45),
                                    fontFamily: 'Bambino',
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  jobs[index],
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.openSans(
                                    fontSize: ScreenUtil().setSp(35),
                                    fontWeight: FontWeight.w400,
                                    color: fadeTextColor,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 6,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: 8,
                                        ),
                                        child: Icon(
                                          FontAwesomeIcons.mapMarkerAlt,
                                          size: ScreenUtil().setSp(40),
                                          color: fadeTextColor,
                                        ),
                                      ),
                                      Text(
                                        places[index],
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 5,
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.openSans(
                                          fontSize: ScreenUtil().setSp(37),
                                          fontWeight: FontWeight.w400,
                                          color: fadeTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 6,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: 8,
                                        ),
                                        child: Icon(
                                          FontAwesomeIcons.rupeeSign,
                                          size: ScreenUtil().setSp(40),
                                          color: fadeTextColor,
                                        ),
                                      ),
                                      Text(
                                        (index + 100).toString(),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 5,
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.openSans(
                                          fontSize: ScreenUtil().setSp(37),
                                          fontWeight: FontWeight.w400,
                                          color: fadeTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
