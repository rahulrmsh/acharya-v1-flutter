import 'package:acharya1/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PreferencesScreen extends StatefulWidget {
  @override
  _PreferencesScreenState createState() => _PreferencesScreenState();
}

bool checkedValue1 = false;
bool checkedValue2 = false;
double _value = 15.0;
List<String> text = ["InduceSmile.com", "Flutter.io", "google.com"];
String minSalary = '';
String maxSalary = '';
final TextEditingController _minSalaryController = TextEditingController();
final TextEditingController _maxSalaryController = TextEditingController();
List<String> _locations = [
  'Business Collective Bargaining',
  'Transportation - Marine Transportation',
  'Agriculture Food Engineering',
  'Space Sciences - Astrobiology',
  'Literature - Poetry',
  'Performing Arts Performance Poetry',
  'Education Art Education',
  'Chemical Engineering - Polymer Engineering',
  'Chemistry - Immunochemistry',
  'Visual Arts - Photography',
  'Cultural Disability Studies',
  'Philosophy Philosophy Of Engineering',
  'Human Leisure Studies',
  'Performing Arts - Music',
  'Linguistics - Interlinguistics',
  'Sociology Religion',
  'Applied Theory',
  'Computer Engineering',
  'Architecture Design',
  'Economics',
];
// Option 2
List<String> fields = [];
String _selectedLocation; // Opti

class _PreferencesScreenState extends State<PreferencesScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(1080, 2400), allowFontScaling: false);
    final height = ScreenUtil().setHeight(2400);
    final width = ScreenUtil().setHeight(1200);
    return SafeArea(
      child: Scaffold(
        bottomSheet: Container(
          color: whiteColor,
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          child: GestureDetector(
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
                  'Save',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    color: whiteColor,
                    fontSize: ScreenUtil().setSp(45),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
        // resizeToAvoidBottomInset: true,
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
            'Preferences',
            style: GoogleFonts.openSans(
              fontSize: ScreenUtil().setSp(50),
              wordSpacing: ScreenUtil().setSp(20),
              color: blackColor,
              fontWeight: FontWeight.w600,
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
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.01),
                  child: Center(
                    child: Text(
                      "Lorem ipsum dolor sit amet consectetur adipiscing elit, Ut enim ad minim veniam",
                      style: GoogleFonts.openSans(
                        color: blackColor,
                        fontSize: ScreenUtil().setSp(40),
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.015),
                  child: Text(
                    "CHOOSE ANY ONE",
                    style: GoogleFonts.openSans(
                      color: fadeTextColor,
                      fontSize: ScreenUtil().setSp(40),
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                CheckboxListTile(
                  contentPadding: EdgeInsets.all(0),
                  checkColor: whiteColor, // color of tick Mark
                  activeColor: homeBgColor,
                  title: Text("Online Tutor"),
                  value: checkedValue1,
                  onChanged: (newValue) {
                    setState(() {
                      if (checkedValue1 != checkedValue2) {
                        checkedValue2 = checkedValue1;
                        checkedValue1 = newValue;
                      } else {
                        checkedValue1 = newValue;
                      }
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
                CheckboxListTile(
                  contentPadding: EdgeInsets.all(0),
                  checkColor: whiteColor, // color of tick Mark
                  activeColor: homeBgColor,
                  title: Text("Offline Tutor"),
                  value: checkedValue2,
                  onChanged: (newValue) {
                    setState(() {
                      if (checkedValue1 != checkedValue2) {
                        checkedValue2 = checkedValue1;
                        checkedValue2 = newValue;
                      } else {
                        checkedValue2 = newValue;
                      }
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.015),
                  child: Text(
                    "DISTANCE",
                    style: GoogleFonts.openSans(
                      color: fadeTextColor,
                      fontSize: ScreenUtil().setSp(40),
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: homeBgColor,
                      inactiveTrackColor: homeBgColor.withOpacity(0.5),
                      trackShape: CustomTrackShape(),
                      trackHeight: 4.0,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      thumbColor: homeBgColor,
                      overlayColor: homeBgColor.withAlpha(32),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 28.0),
                      tickMarkShape: RoundSliderTickMarkShape(),
                      activeTickMarkColor: homeBgColor,
                      inactiveTickMarkColor: homeBgColor,
                      valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                      valueIndicatorColor: homeBgColor,
                      valueIndicatorTextStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    child: Slider(
                      value: _value,
                      min: 0,
                      max: 100,
                      divisions: 20,
                      label: _value.toInt().toString() + ' KM',
                      onChanged: (value) {
                        setState(
                          () {
                            _value = value;
                          },
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.015),
                  child: Text(
                    "SALARY",
                    style: GoogleFonts.openSans(
                      color: fadeTextColor,
                      fontSize: ScreenUtil().setSp(40),
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.symmetric(vertical: height * 0.01),
                            child: TextField(
                              maxLength: 6,
                              controller: _minSalaryController,
                              keyboardType: TextInputType.number,
                              obscureText: false,
                              onChanged: (value) {
                                setState(() {
                                  minSalary = value;
                                });
                              },
                              style: TextStyle(
                                color: darkFadeTextColor,
                                fontSize: ScreenUtil().setSp(60),
                                fontWeight: FontWeight.w600,
                              ),
                              decoration: InputDecoration(
                                counterText: '',
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: blackColor, width: 1.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Minimum Salary',
                            style: GoogleFonts.openSans(
                              color: blackColor,
                              fontSize: ScreenUtil().setSp(40),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('--'),
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.symmetric(vertical: height * 0.01),
                            child: TextField(
                              maxLength: 6,
                              controller: _maxSalaryController,
                              keyboardType: TextInputType.number,
                              obscureText: false,
                              onChanged: (value) {
                                setState(() {
                                  maxSalary = value;
                                });
                              },
                              style: TextStyle(
                                color: darkFadeTextColor,
                                fontSize: ScreenUtil().setSp(60),
                                fontWeight: FontWeight.w600,
                              ),
                              decoration: InputDecoration(
                                counterText: '',
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: blackColor, width: 1.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Maximum Salary',
                            style: GoogleFonts.openSans(
                              color: blackColor,
                              fontSize: ScreenUtil().setSp(40),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: Text(
                    "SUBJECT",
                    style: GoogleFonts.openSans(
                      color: fadeTextColor,
                      fontSize: ScreenUtil().setSp(40),
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                DropdownButton(
                  hint: _selectedLocation == null
                      ? Text('Dropdown')
                      : Text(
                          _selectedLocation,
                          style: GoogleFonts.openSans(
                            color: blackColor,
                            fontSize: ScreenUtil().setSp(40),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                  isExpanded: true,
                  iconSize: 20.0,
                  style: GoogleFonts.openSans(
                    color: blackColor,
                    fontSize: ScreenUtil().setSp(40),
                    fontWeight: FontWeight.w400,
                  ),
                  items: _locations.map(
                    (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    setState(
                      () {
                        fields.add(val);
                        _selectedLocation = val;
                      },
                    );
                  },
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: fields.length,
                  itemBuilder: (context, index) {
                    String subName = (fields[index].length == 30)
                        ? fields[index].substring(0, 30)
                        : fields[index];
                    return ListTile(
                      title: GestureDetector(
                        onTap: () {
                          setState(() {
                            fields.remove(fields[index]);
                          });
                          print(fields);
                        },
                        child: TextField(
                          enabled: false,
                          decoration: InputDecoration(
                            labelText:
                                ((index + 1).toString() + '  ' + subName),
                            labelStyle: GoogleFonts.openSans(
                              color: blackColor,
                              fontSize: ScreenUtil().setSp(40),
                              fontWeight: FontWeight.w400,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: blackColor, width: 1.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: height * 0.13,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  Rect getPreferredRect({
    @required RenderBox parentBox,
    Offset offset = Offset.zero,
    @required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
