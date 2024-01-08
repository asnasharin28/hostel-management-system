// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:my_flutter_app/Login_page.dart';
import 'package:my_flutter_app/page/feedetails.dart';
import 'package:my_flutter_app/page/admin.dart';
import 'package:my_flutter_app/page/parent.dart';
import 'package:my_flutter_app/page/parent_myprofile.dart';
import 'package:my_flutter_app/page/register.dart';
import 'package:my_flutter_app/page/Loginpage.dart';
import 'package:my_flutter_app/page/register_staff.dart';
import 'package:my_flutter_app/page/student4.dart';
import 'package:my_flutter_app/page/warden.dart';

import 'package:my_flutter_app/page/warden2.dart';
import 'package:my_flutter_app/page/warden3.dart';
import 'package:my_flutter_app/page/wardenattendance.dart';
import 'package:my_flutter_app/page/wardenstudent.dart';

import 'package:my_flutter_app/page/wardenstudent.dart';
import 'page/staff3.dart';
import 'package:my_flutter_app/page/student1.dart';
import 'package:my_flutter_app/page/student2.dart';
import 'package:my_flutter_app/page/student3.dart';
import 'page/warden3.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:my_flutter_app/page/parent_student.dart';

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
      home: AdminPage(),
    );
  }
  }