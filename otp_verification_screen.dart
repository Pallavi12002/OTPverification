import 'package:flutter/material.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7775F8),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40), // Spacer to push content down a bit
              // Logo and Title
              Column(
                children: [
                  Image.asset(
                    'assets/logo.png', // Replace with your logo asset
                    height: 80, // Adjust the height of the logo
                    width: 80, // Adjust the width of the logo
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'OTP Verification',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Illustration
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Image.asset(
                  'assets/illustration.png', // Replace with your illustration asset
                  height: 300, // Adjust the height of the illustration
                ),
              ),
              SizedBox(height: 24),

              // OTP Instructions
              Text(
                'Enter the OTP sent to - 91+617890550',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),

              // OTP Input Fields
              OtpInputFields(),
              SizedBox(height: 16),

              // Resend OTP Link
              GestureDetector(
                onTap: () {
                  // Handle resend OTP
                },
                child: Text(
                  "Didn't you receive the OTP then? Resend OTP",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

class OtpInputFields extends StatefulWidget {
  @override
  _OtpInputFieldsState createState() => _OtpInputFieldsState();
}

class _OtpInputFieldsState extends State<OtpInputFields> {
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) {
        return Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 2, color: Colors.white),
            ),
          ),
          child: TextField(
            controller: _otpController,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        );
      }),
    );
  }
}
