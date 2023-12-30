// ignore_for_file: unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class register_staff extends StatefulWidget {
  final String? registeredName;
  final String? registeredPhoneNo;

  const register_staff({
    Key? key,
    this.registeredName,
    this.registeredPhoneNo,
  }) : super(key: key);

  @override
  State<register_staff> createState() => _register_staffState();
}

class _register_staffState extends State<register_staff> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _phoneNo = TextEditingController();

  Future<String> register(String name, String phoneNo) async {
    try {
      DocumentReference docRef =
          await FirebaseFirestore.instance.collection('staffdetails').add({
        'Name': name,
        'PhoneNO': phoneNo,
      });

      // Return the document ID
      return docRef.id;
    } catch (e) {
      print("Error registering staff: $e");
      // Handle the error as needed
      throw e; // Rethrow the error to propagate it
    }
  }

  @override
  void dispose() {
    _name.dispose();
    _phoneNo.dispose();

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
              bottom: Radius.circular(40),
            ),
          ),
          title: Text(
            'Register',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          elevation: 18,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This Field is required';
                    }
                    return null;
                  },
                  controller: _name,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0xFFCE5A67),
                        width: 3,
                      ),
                    ),
                    labelText: "Name*",
                    labelStyle: TextStyle(
                      color: Color(0xFFCE5A67),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This Field is required';
                    }
                    return null;
                  },
                  controller: _phoneNo,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0xFFCE5A67),
                        width: 3,
                      ),
                    ),
                    labelText: "Phone No*",
                    labelStyle: TextStyle(
                      color: Color(0xFFCE5A67),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      // Only proceed with registration if form validation passes
                      try {
                        // Register the staff and get the document ID
                        String docId = await register(
                          _name.text.trim(),
                          _phoneNo.text.trim(),
                        );

                        // Navigate to WardenStaff page with registered data
                       
                      } catch (e) {
                        // Handle the error if needed
                        print("Error in registration: $e");
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFFCE5A67),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 18,
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}