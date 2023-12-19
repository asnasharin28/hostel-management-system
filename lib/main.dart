import 'package:flutter/material.dart';
import 'package:my_flutter_app/Login_page.dart';
import 'package:my_flutter_app/page/parent.dart';
import 'package:my_flutter_app/page/parent_myprofile.dart';
import 'package:my_flutter_app/page/register.dart';
import 'package:my_flutter_app/page/Loginpage.dart';
import 'package:my_flutter_app/page/register_staff.dart';
import 'package:my_flutter_app/page/warden.dart';
import 'page/staff3.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:my_flutter_app/page/parent_student.dart';
import 'package:my_flutter_app/page/register_parent.dart';

Future<void> main() async {
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
      home:WardenPage(),
    );
  }
}
