import 'package:flutter/material.dart';

class WardenPage2 extends StatefulWidget {
  @override
  _WardenPage2State createState() => _WardenPage2State();
}

class _WardenPage2State extends State<WardenPage2> {
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
              'Warden',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 130,
                  width: 130,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFCE5A67),
                    /*boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 50, 48, 48).withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],*/
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                      'Total Students',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 15, 14, 14),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                      Text(
                      '100',
                      style: TextStyle(
                        fontSize: 25,
                        color: const Color.fromARGB(255, 15, 14, 14),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    ],
                  ) 
                    
                  
                ),
                SizedBox(width: 16.0),
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFCE5A67),
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                      'Students\nchecked in',
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 15, 14, 14),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                      Text(
                      '92',
                      style: TextStyle(
                        fontSize: 25,
                        color: const Color.fromARGB(255, 15, 14, 14),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    ],
                  ) 
                    
                  
                ),

              ],
            ),
            SizedBox(height: 30.0),
            Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFCE5A67),
            ),
            child: Text(
              'UG',
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
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFCE5A67),
            ),
            child: Text(
              'PG',
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
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFCE5A67),
            ),
            child: Text(
              'B.ED',
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 15, 14, 14),
              ),
            ),
          ),
          SizedBox(height: 30.0),
        ],
      ),
          ],
        ),
      ),
      
    );
  }
}
