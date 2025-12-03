import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MobileApp extends StatelessWidget {
  const MobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Simple Flutter App',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontStyle:FontStyle.italic,
              color:Colors.pink,
            ),
          ),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
        );
  }
}
