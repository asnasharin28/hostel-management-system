import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'page/warden.dart';
import 'page/Loginpage.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return WardenPage();
          
          } else {
            return LoginPage();
          }
        },
      ),
      
     
    );
  }
}


   