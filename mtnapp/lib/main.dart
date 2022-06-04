import 'package:flutter/material.dart';
import 'package:mtnapp/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctxt) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
