import 'package:flutter/material.dart';

class StaffPage3 extends StatefulWidget {
  @override
  _StaffPage3State createState() => _StaffPage3State();
}

class _StaffPage3State extends State<StaffPage3> {
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
            Icons.groups,
            color: Colors.black,
          ),
          iconSize: 50,
          onPressed: () {
            // Add your onPressed logic here
          },
        ),
        title: Text(
          'Name\nStaff',
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
              height: 90,
            ),
            GestureDetector(
              onTap: () {
                _showAlertDialog();
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
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
            ),
            SizedBox(height: 50.0),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFCE5A67),
              ),
              child: Text(
                'Mess Poll',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 15, 14, 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Container(
            width: 200.0, // Set your desired width
            height: 200.0, // Set your desired height
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // Handle Option 1
                    print("Option 1");
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Name:"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle Option 2
                    print("Option 2");
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Phone number:"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle Option 3
                    print("Option 3");
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Place:"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle Option 4
                    print("Option 4");
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Blood group:"),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the AlertDialog
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
