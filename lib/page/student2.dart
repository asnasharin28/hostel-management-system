import 'package:flutter/material.dart';

class Student2Page extends StatefulWidget {
  @override
  _Student2PageState createState() => _Student2PageState();
}

class _Student2PageState extends State<Student2Page> {
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
            Icons.account_circle,
            color: Colors.black,
          ),
          iconSize: 50,
          onPressed: () {
            // Add your onPressed logic here
          },
        ),
        title: Text(
          'Name\nStudent',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              alignment: Alignment.topLeft, // Aligns the content to the top-left corner
              padding: EdgeInsets.all(10),
              height: 330,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFCE5A67),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, // Aligns the content to the top
                crossAxisAlignment: CrossAxisAlignment.start, // Aligns the content to the left
                children: [
                  Text(
                    'Name :',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 15, 14, 14),
                    ),
                  ),
                  SizedBox(height: 5), // Added space between the texts
                  Text(
                    'Department :',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5), // Added space between the texts
                  Text(
                    'Year :',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5), // Added space between the texts
                  Text(
                    'Admission No :',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5), // Added space between the texts
                  Text(
                    'Room no :',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5), // Added space between the texts
                  Text(
                    'Phone :',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5), // Added space between the texts
                  Text(
                    'Blood Group :',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5), // Added space between the texts
                  Text(
                    'Parent Name :',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5), // Added space between the texts
                  Text(
                    'Phone no :',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
