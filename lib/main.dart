import 'package:flutter/material.dart';
import 'package:workshop_project/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workshop App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SignupPage(),
    );
  }
}


