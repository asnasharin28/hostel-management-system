import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import FirebaseFirestore

class WardenPage2 extends StatefulWidget {
  @override
  _WardenPage2State createState() => _WardenPage2State();
}

Future<String> fetchData() async {
  final QuerySnapshot<Map<String, dynamic>> snapshot =
      await FirebaseFirestore.instance.collection('students').get();
  final int documents = snapshot.docs.length;
  return documents.toString();
}

Future<String> attendance() async {
  final QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance
      .collection('students')
      .where('Attendance', isEqualTo: 'in')
      .get();
  final int attended = snapshot.docs.length; // Fix variable name
  return attended.toString();
}

class _WardenPage2State extends State<WardenPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Your existing Scaffold code...

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
                  // Your existing Container code...
                  child: Column(
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
                      FutureBuilder<String>(
                        future: fetchData(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return Text(
                              snapshot.data!,
                              style: TextStyle(
                                fontSize: 25,
                                color: const Color.fromARGB(255, 15, 14, 14),
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.0),
                Container(
                  // Your existing Container code...
                  child: Column(
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
                      FutureBuilder<String>(
                        future: attendance(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            return Text(
                              snapshot.data!,
                              style: TextStyle(
                                fontSize: 25,
                                color: const Color.fromARGB(255, 15, 14, 14),
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Your existing SizedBox and Column code...
          ],
        ),
      ),
    );
  }
}
