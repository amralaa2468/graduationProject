import 'package:flutter/material.dart';
import 'package:graduation_project/doctor_home_screen.dart';
import 'package:graduation_project/qr_scan_screen.dart';
import 'package:graduation_project/sign_in_screen.dart';
import 'package:graduation_project/sign_up_screen.dart';
import 'package:graduation_project/student_home_screen.dart';
import 'package:graduation_project/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        DoctorHomeScreen.id: (context) => DoctorHomeScreen(),
        StudentHomeScreen.id: (context) => StudentHomeScreen(),
        QRScanScreen.id: (context) => QRScanScreen(),
      },
    );
  }
}
