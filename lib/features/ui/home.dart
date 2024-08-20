import 'package:attendence_ace/features/ui/menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:attendence_ace/features/ui/check_data.dart/check_attendence.dart';
import 'package:attendence_ace/features/ui/mark_attendence/class_details.dart';
import 'package:attendence_ace/features/ui/profile/profile_main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () {
              // Action for bookmark button
            }, 
            icon: Icon(Icons.bookmark),
          ),
        ],
        backgroundColor: Colors.blueAccent,
      ),
      drawer: const NavBar(),  // Adding the NavBar as a drawer
      body: Center(
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}
