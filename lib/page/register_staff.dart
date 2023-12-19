import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class register_staff extends StatefulWidget {
  const register_staff({super.key});

  @override
  State<register_staff> createState() => _register_staffState();
}

class _register_staffState extends State<register_staff> {
  final _Name = TextEditingController();
  final _PhoneNo = TextEditingController();
  

  final _emailController = TextEditingController();
  final _PasswordController = TextEditingController();

  Future Register(
    String Name,
    String PhoneNO,
   
  ) async {
    await FirebaseFirestore.instance
        .collection('staffdetails')
        
        .add({
      'Name': Name,
      'PhoneNO': PhoneNO,
      
    });
  }

  void dispose() {
    _Name.dispose();
    _PhoneNo.dispose();
   

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
                controller: _PhoneNo,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Color(0xFFCE5A67),
                      width: 3,
                    ),
                  ),
                  labelText: "Phone NO",
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
                        _PhoneNo.text.trim(),
                       
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
