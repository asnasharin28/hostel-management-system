import 'package:flutter/material.dart';
import 'package:my_flutter_app/page/Loginpage.dart';
import 'page/staff3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
