import 'package:attendence_ace/features/ui/home.dart';
import 'package:attendence_ace/features/ui/profile/accessibility.dart';
import 'package:flutter/material.dart';

class ProfileMain extends StatefulWidget {
  const ProfileMain({super.key});

  @override
  State<ProfileMain> createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.bookmark),
        //   ),
        //   IconButton(
        //     onPressed: () {
        //       // Menu action
        //     },
        //     icon: Icon(Icons.menu),
        //   ),
        // ],
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
