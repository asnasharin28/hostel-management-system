import 'package:flutter/material.dart';
import 'package:my_flutter_app/page/warden/wardenedit.dart';

class WardenProfile extends StatefulWidget {
  const WardenProfile({super.key});

  @override
  State<WardenProfile> createState() => _WardenProfileState();
}

class _WardenProfileState extends State<WardenProfile> {

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
              position: RelativeRect.fromLTRB(
                  0, 100, 100, 0), 
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
                    MaterialPageRoute(builder: (context) => WardenProfile()),
                  );
                }
              });
            });
          },
        ),
        title: Text(
          'Name\nWarden',
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
              height: 30,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFCE5A67),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.3,
                            color: const Color.fromARGB(255, 15, 14, 14),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        ': Fathima Dhilshana MP',
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.3,
                          color: const Color.fromARGB(255, 15, 14, 14),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          'Phone No',
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.3,
                            color: const Color.fromARGB(255, 15, 14, 14),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        ': 7510779845',
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.3,
                          color: const Color.fromARGB(255, 15, 14, 14),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 500,
              margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: ElevatedButton(
                child: Text(
                  "Edit",
                  style: TextStyle(
                    color: Colors.black, // Set the text color
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WardenEdit()));
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFFCE5A67),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    // Set the border radius for the button
                  ),

                  // Set the elevation for the button
                ),
              ),
            ),
            Container(
              width: 500,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text(
                  "Log Out",
                  style: TextStyle(
                    color: Colors.black, // Set the text color
                  ),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFFCE5A67),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    // Set the border radius for the button
                  ),

                  // Set the elevation for the button
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
