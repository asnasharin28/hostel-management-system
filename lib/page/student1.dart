import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Student1Page extends StatefulWidget {
  @override
  _Student1PageState createState() => _Student1PageState();
}

class _Student1PageState extends State<Student1Page> {
  List<String> items = ['My Profile', 'Log Out'];
  String? dropvalue;

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
            showMenu(
              context: context,
              position: RelativeRect.fromLTRB(0, 100, 100, 0),
              items: items.map((String item) {
                return PopupMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
            ).then((value) {
              setState(() {
                dropvalue = value;
                if (value == 'My Profile') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Text('My Profile')),
                  );
                } else if (value == 'Log Out')
                  (FirebaseAuth.instance.signOut());
              });
            });
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
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              //height:100,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFCE5A67),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 50, 48, 48).withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                'My Profile',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 15, 14, 14),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              //height:100,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFCE5A67),
              ),
              child: Text(
                'Mess detsils',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 15, 14, 14),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              //height:100,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFCE5A67),
              ),
              child: Text(
                'Fee Details',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 15, 14, 14),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              //height:100,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFCE5A67),
              ),
              child: Text(
                'Attendece',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 15, 14, 14),
                ),
              ),
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
