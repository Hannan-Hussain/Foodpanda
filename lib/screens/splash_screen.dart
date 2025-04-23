import 'package:app01/screens/location_screen.dart';
import 'package:app01/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
void initState() {
  super.initState();
  Future.delayed(Duration(seconds: 5), () {

     Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (c) => SigninScreen()),
        (route) => false,
      );
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.pinkAccent,
      body: Center(
       child: Image.asset(
  'assets/logo.png',
  scale: 3.0, 
),

      ),
    );
  }
}