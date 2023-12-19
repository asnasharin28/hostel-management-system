import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class parent_myprofile extends StatefulWidget {
  const parent_myprofile({super.key});

  @override
  State<parent_myprofile> createState() => _parent_myprofileState();
}

class _parent_myprofileState extends State<parent_myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xFFF4BF96),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.escalator_warning,
            color: Colors.black,
          ),
          iconSize: 50,
          onPressed: () {
            // Add your onPressed logic here
          },
        ),
        title: Text(
          'Name\nParent',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          Row(
            children: [
              Text(
                'My Profile',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 12.0), 
            ],
          ),
        ],
      ),
      backgroundColor: const Color(0xFFFCF5ED),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 150, 20, 50),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFCE5A67),
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 50, 48, 48).withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: Your Name',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 15, 14, 14),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Phone No: Your Phone No',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 15, 14, 14),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Student Name: Stdnt Name',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 15, 14, 14),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Student Phone No: Stdnt Phone No',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 15, 14, 14),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Room No: Room No',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 15, 14, 14),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
