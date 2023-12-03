import 'package:flutter/material.dart';

class StaffPage1 extends StatefulWidget {
  @override
  _StaffPage1State createState() => _StaffPage1State();
}

class _StaffPage1 extends State<StaffPage1> {
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Staff',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
        ),
      ),
    ),
  }
  }
}
            ),
          ],
        ),
      ),