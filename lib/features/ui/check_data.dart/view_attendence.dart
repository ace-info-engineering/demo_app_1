import 'package:flutter/material.dart';

class ViewAttendence extends StatefulWidget {
  const ViewAttendence({super.key});

  @override
  State<ViewAttendence> createState() => _ViewAttendenceState();
}

class _ViewAttendenceState extends State<ViewAttendence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Attendance'),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.bookmark),
          ),
          IconButton(
            onPressed: () {
              // Menu action
            },
            icon: Icon(Icons.menu),
          ),
        ],
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}