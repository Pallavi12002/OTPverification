import 'package:flutter/material.dart';
import 'otp_verification_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OtpVerificationScreen(),
    );
  }
}
