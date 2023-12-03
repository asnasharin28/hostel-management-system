import 'package:flutter/material.dart';

class WardenPage3 extends StatefulWidget {
  @override
  _WardenPage3State createState() => _WardenPage3State();
}

class _WardenPage3State extends State<WardenPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              'Warden',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        toolbarHeight: 100,
      ),
      backgroundColor: Color(0xFFFCF5ED),
      body: Column(
        children: [
          SizedBox(height: 50), // Add the SizedBox before the ListView.builder
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                // Return the widget from the itemBuilder
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFCE5A67),
                        ),
                        child: Center(
              child: Icon(
                Icons.favorite, // Replace with your desired icon
                color: Colors.white,
                size: 50,
              ),
            ),
                      ),
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFCE5A67),
                        ),
                        child: Center(
              child: Icon(
                Icons.account_circle_outlined, // Replace with your desired icon
                color: Colors.white,
                size: 50,
              ),
            ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
