import 'package:acharya1/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TutorProfileScreen extends StatefulWidget {
  TutorProfileScreen({
    @required this.imageUrl,
    @required this.name,
    @required this.qualification,
    @required this.area,
    @required this.salary,
  });
  final String name;
  final String qualification;
  final String imageUrl;
  final int salary;
  final String area;
  @override
  _TutorProfileScreenState createState() => _TutorProfileScreenState();
}

class _TutorProfileScreenState extends State<TutorProfileScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(1080, 2400), allowFontScaling: false);
    final height = ScreenUtil().setHeight(2400);
    final width = ScreenUtil().setHeight(1200);
    return SafeArea(
      child: Scaffold(
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
              color: blackColor,
            ),
            backgroundColor: mainBgColor,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body: Stack(
          children: <Widget>[
            FadeInImage.assetNetwork(
              width: width,
              fadeInDuration: Duration(milliseconds: 200),
              placeholder: 'assets/images/face.png',
              repeat: ImageRepeat.repeatX,
              fit: BoxFit.fitWidth,
              image: widget.imageUrl,
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.4),
              child: Container(
                color: whiteColor,
                child: Column(
                  children: [
                    Container(
                      color: homeBgColor,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.1,
                          vertical: ScreenUtil().setSp(55),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RowText(
                              textKey: 'Students',
                              value: '45',
                            ),
                            Container(
                              color: whiteColor,
                              width: 1,
                              height: ScreenUtil().setHeight(120),
                            ),
                            RowText(
                              textKey: 'Rating',
                              value: '4.5',
                            ),
                            Container(
                              color: whiteColor,
                              width: 1,
                              height: ScreenUtil().setHeight(120),
                            ),
                            RowText(
                              textKey: 'Classes',
                              value: '56',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: width * 0.1,
                          right: width * 0.1,
                          top: height * 0.02,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: blackColor,
                                fontSize: ScreenUtil().setSp(60),
                                fontFamily: 'Bambino',
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              widget.qualification,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 5,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.openSans(
                                fontSize: ScreenUtil().setSp(40),
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
                                    widget.area,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 5,
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.openSans(
                                      fontSize: ScreenUtil().setSp(40),
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
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Container(
                        width: width,
                        height: height * 0.1,
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
                                  width: width * 0.285,
                                  height: height * 0.08,
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      bottomLeft: Radius.circular(12),
                                    ),
                                  ),
                                  child: TextButton(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.phone,
                                          color: homeBgColor,
                                        ),
                                        Text(
                                          'Call',
                                          style: GoogleFonts.openSans(
                                            color: homeBgColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: ScreenUtil().setSp(40),
                                          ),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  color: Colors.grey.withOpacity(0.4),
                                  width: 2,
                                ),
                                Container(
                                  width: width * 0.285,
                                  height: height * 0.08,
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                  ),
                                  child: TextButton(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.solidCommentAlt,
                                          color: homeBgColor,
                                        ),
                                        Text(
                                          'Chat',
                                          style: GoogleFonts.openSans(
                                            color: homeBgColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: ScreenUtil().setSp(40),
                                          ),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  color: Colors.grey.withOpacity(0.4),
                                  width: 2,
                                ),
                                Container(
                                  width: width * 0.285,
                                  height: height * 0.08,
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                    ),
                                  ),
                                  child: TextButton(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.solidBookmark,
                                          color: homeBgColor,
                                        ),
                                        Text(
                                          'Cart',
                                          style: GoogleFonts.openSans(
                                            color: homeBgColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: ScreenUtil().setSp(40),
                                          ),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        right: 20,
                        left: 20,
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur adipiscing elit, Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        overflow: TextOverflow.clip,
                        maxLines: 7,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.openSans(
                          fontSize: ScreenUtil().setHeight(42),
                          fontWeight: FontWeight.w400,
                          color: mainTextColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Container(
                        height: height * 0.08,
                        color: homeBgColor,
                        child: Center(
                          child: Text(
                            'Join now for ' + widget.salary.toString(),
                            style: GoogleFonts.openSans(
                              fontSize: ScreenUtil().setHeight(60),
                              fontWeight: FontWeight.w700,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RowText extends StatelessWidget {
  const RowText({
    @required this.value,
    @required this.textKey,
  });
  final String value;
  final String textKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            value,
            textAlign: TextAlign.left,
            style: GoogleFonts.openSans(
              fontSize: ScreenUtil().setSp(38),
              fontWeight: FontWeight.w600,
              color: whiteColor,
            ),
          ),
          Text(
            textKey,
            textAlign: TextAlign.left,
            style: GoogleFonts.openSans(
              fontSize: ScreenUtil().setSp(38),
              fontWeight: FontWeight.w600,
              color: whiteColor,
            ),
          )
        ],
      ),
    );
  }
}
