// ignore_for_file: unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WardenStudent extends StatefulWidget {
  const WardenStudent({super.key});

  @override
  State<WardenStudent> createState() => _WardenStudentState();
}

class _WardenStudentState extends State<WardenStudent> {
  List<DocumentSnapshot> studentDocuments = [];
  List<bool> isVisibleList = [];

  void initState() {
    super.initState();
    DisplayStudent();
  }

  Future<void> DisplayStudent() async {
    final QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('students').get();
    setState(() {
      studentDocuments = querySnapshot.docs;
      isVisibleList = List.generate(studentDocuments.length, (_) => false);
    });
  }

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
          'Name\nWarden',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: studentDocuments.length,
            itemBuilder: (BuildContext context, int index) {
              final student =
                  studentDocuments[index].data() as Map<String, dynamic>;
              return ListTile(
                title: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        width: 500,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name: ${student['Name']}' +
                                      '\nRoom No: ${student['RoomNo']}' +
                                      '\nPhone No: ${student['PhoneNo']}',
                                  style: TextStyle(
                                    fontSize: 15,
                                    height: 1.3,
                                    color:
                                        const Color.fromARGB(255, 15, 14, 14),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Visibility(
                                  visible: isVisibleList[index],
                                  child: Text(
                                    'Blood Group: ${student['BloodGroup']}' +
                                        '\nParent Name: ${student['ParentName']}' +
                                        '\nPhone No: ${student['GPhoneNo']}',
                                    style: TextStyle(
                                      fontSize: 15,
                                      height: 1.3,
                                      color: Color.fromARGB(255, 15, 14, 14),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisibleList[index] = !isVisibleList[index];
                                  for (int i = 0;
                                      i < isVisibleList.length;
                                      i++) {
                                    if (i != index) {
                                      isVisibleList[i] = false;
                                    }
                                  }
                                });
                              },
                              icon: isVisibleList[index]
                                  ? Icon(Icons.arrow_drop_up)
                                  : Icon(Icons.arrow_drop_down),
                              color: Colors.black,
                            )
                          ],
                        )),
                  ],
                ),
                // Add other widgets for additional details if needed
              );
            },
          ),
        ],
      ),
    );
  }
}
