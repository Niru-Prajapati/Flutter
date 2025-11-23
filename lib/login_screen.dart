import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color (0xffF3E8DF),
      body: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 20,
            right: 20,
            bottom: 20,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/logo.png', width: 200),
          SizedBox(height: 10),
          Text(
            'Welcome Back',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,

            ),
          ),
          Text(
            'Make it work, Make it right, Make it fast.',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ]
      ),
      ));
  }
}
