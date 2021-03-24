import 'package:acharya1/views/Welcome/welcome.dart';
import 'package:acharya1/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'views/Welcome/Login/student.dart';
import 'views/Welcome/Login/tutor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MainApp());
  });
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        'splash': (context) => SplashScreen(),
        'welcome': (context) => WelcomeScreen(),
        'studentLogin': (context) => StudentLoginScreen(),
        'tutorLogin': (context) => TutorLoginScreen(),
      },
    );
  }
}
