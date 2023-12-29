// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:my_flutter_app/page/register.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFFCF5ED)),
    );
  }
}
