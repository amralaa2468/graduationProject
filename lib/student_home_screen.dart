import 'package:flutter/material.dart';
import 'package:graduation_project/qr_scan_screen.dart';

class StudentHomeScreen extends StatefulWidget {
  static const String id = 'student_home_screen';
  @override
  _StudentHomeScreenState createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Text(
          'Student Home',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Scan QR code'),
          onPressed: () {
            Navigator.pushNamed(context, QRScanScreen.id);
          },
        ),
      ),
    );
  }
}
