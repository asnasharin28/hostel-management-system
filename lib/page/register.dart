// ignore_for_file: unused_import, unused_field

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _Name = TextEditingController();
  final _Department = TextEditingController();
  final _PhoneNo = TextEditingController();
  final _AdmissionNo = TextEditingController();
  final _BloodGroup = TextEditingController();
  final _ParentName = TextEditingController();
  final _GPhoneNo = TextEditingController();
  final _RoomNo = TextEditingController();
  final _Year = TextEditingController();
  final _emailController = TextEditingController();
  final _PasswordController = TextEditingController();
  final _GraduationController = TextEditingController();

  Future Register(
    String Name,
    String Department,
    String PhoneNo,
    String AdmissionNo,
    String BloodGroup,
    String ParentName,
    String GPhoneNo,
    String RoomNo,
    String Year,
    String Graduation,
  ) async {
    await FirebaseFirestore.instance.collection('students').add({
      'Name': Name,
      'Department': Department,
      'PhoneNO': PhoneNo,
      'AdmissionNO': AdmissionNo,
      'BloodGroup': BloodGroup,
      'ParentName': ParentName,
      'GPhoneNo': GPhoneNo,
      'RoomNo': RoomNo,
      'Year': Year,
      'Graduation': Graduation,
    });
  }

  void dispose() {
    _Name.dispose();
    _AdmissionNo.dispose();
    _BloodGroup.dispose();
    _Department.dispose();
    _GPhoneNo.dispose();
    _ParentName.dispose();
    _PhoneNo.dispose();
    _RoomNo.dispose();
    _Year.dispose();
    _GraduationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Color(0xFFF4BF96),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(
                  40), // Set the border radius for the bottom left corner
            ),
          ),
          title: Text(
            'Register',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          centerTitle: true,
          elevation: 18,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: _Name,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFFCE5A67),
                      width: 3,
                    ),
                  ),
                  labelText: "Name",
                  labelStyle: TextStyle(
                    color: Color(0xFFCE5A67),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _GraduationController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFFCE5A67),
                      width: 3,
                    ),
                  ),
                  labelText: "UG/PG/B-ED",
                  labelStyle: TextStyle(
                    color: Color(0xFFCE5A67),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _Department,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFFCE5A67),
                      width: 3,
                    ),
                  ),
                  labelText: "Department",
                  labelStyle: TextStyle(
                    color: Color(0xFFCE5A67),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _Year,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFFCE5A67),
                      width: 3,
                    ),
                  ),
                  labelText: "Year",
                  labelStyle: TextStyle(
                    color: Color(0xFFCE5A67),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _PhoneNo,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFFCE5A67),
                      width: 3,
                    ),
                  ),
                  labelText: "Phone No",
                  labelStyle: TextStyle(
                    color: Color(0xFFCE5A67),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _AdmissionNo,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFFCE5A67),
                      width: 3,
                    ),
                  ),
                  labelText: "Admission No",
                  labelStyle: TextStyle(
                    color: Color(0xFFCE5A67),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _BloodGroup,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFFCE5A67),
                      width: 3,
                    ),
                  ),
                  labelText: "Blood Group",
                  labelStyle: TextStyle(
                    color: Color(0xFFCE5A67),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _RoomNo,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFFCE5A67),
                      width: 3,
                    ),
                  ),
                  labelText: "Room No",
                  labelStyle: TextStyle(
                    color: Color(0xFFCE5A67),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _ParentName,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFFCE5A67),
                      width: 3,
                    ),
                  ),
                  labelText: "Parent Name",
                  labelStyle: TextStyle(
                    color: Color(0xFFCE5A67),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _GPhoneNo,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFFCE5A67),
                      width: 3,
                    ),
                  ),
                  labelText: "Phone No",
                  labelStyle: TextStyle(
                    color: Color(0xFFCE5A67),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your logic for button press here
                  // For example, you can validate the form fields and submit the registration data
                  // Replace the print statement with your actual logic.
                  print("Registration button pressed");
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFFCE5A67),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    // Set the border radius for the button
                  ),
                  elevation: 18, // Set the elevation for the button
                ),
                child: TextButton(
                    onPressed: () {
                      Register(
                        _Name.text.trim(),
                        _Department.text.trim(),
                        _PhoneNo.text.trim(),
                        _AdmissionNo.text.trim(),
                        _BloodGroup.text.trim(),
                        _ParentName.text.trim(),
                        _PhoneNo.text.trim(),
                        _RoomNo.text.trim(),
                        _Year.text.trim(),
                        _GraduationController.text.trim(),
                      );
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.black, // Set the text color
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
