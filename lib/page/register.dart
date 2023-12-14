import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //TextEditingController _emailController = TextEditingController();
 // TextEditingController _passwordController = TextEditingController();

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color(0xFFCE5A67),
                    width: 3,
                  ),
                ),
                labelText: "NAME",
                labelStyle: TextStyle(
                  color: Color(0xFFCE5A67),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color(0xFFCE5A67),
                    width: 3,
                  ),
                ),
                labelText: "DEPARTMENT",
                labelStyle: TextStyle(
                  color: Color(0xFFCE5A67),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color(0xFFCE5A67),
                    width: 3,
                  ),
                ),
                labelText: "YEAR",
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
                primary: Color(0xFFCE5A67), // Set the button color
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  // Set the border radius for the button
                ),
                elevation: 18, // Set the elevation for the button
              ),
              child: Text(
                "SUBMIT",
                style: TextStyle(
                  color: Colors.black, // Set the text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
