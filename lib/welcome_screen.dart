import 'package:flutter/material.dart';
import 'package:graduation_project/sign_in_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10.0,
                  ),
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/studAvatar.png'),
                  ),
                  SizedBox(
                    width: 40.0,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  FlatButton(
                    color: Colors.white,
                    onPressed: () {
                      String role = "student";
                      Navigator.pushNamed(context, SignInScreen.id,
                          arguments: {'role': role});
                    },
                    child: Text(
                      'Student',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.blueGrey.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 50.0,
                    backgroundImage: AssetImage('images/professorAvatar.png'),
                  ),
                  SizedBox(
                    width: 40.0,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  FlatButton(
                    color: Colors.white,
                    onPressed: () {
                      String role = "instructor";
                      Navigator.pushNamed(context, SignInScreen.id,
                          arguments: {'role': role});
                    },
                    child: Text(
                      'Instructor',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.blueGrey.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
