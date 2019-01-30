import 'package:flutter/material.dart';
import './LoginPage.dart';
void main()=>runApp(LoginApp());
class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
title: 'Login Page',
theme:ThemeData(
primarySwatch: Colors.blue
),
      home: LoginPage(),debugShowCheckedModeBanner: false,
    );
  }
}