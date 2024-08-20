import 'package:attendence_ace/features/ui/profile/change_pass.dart';
import 'package:flutter/material.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
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
          SizedBox(height: 30),
          Center(
            child: Container(
              width: 220, // Set a fixed width for the container
              child: Text(
                "Manage your\n connected experiences\n and account setting\n across the application.",
                textAlign: TextAlign.center, // Center-align the text
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ChangePass();
                  },
                );
              },
              borderRadius: BorderRadius.circular(15), // Keeps the ripple effect within the rounded corners
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 227, 224, 224),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: double.infinity,
                child: ListTile(
                  leading: Icon(Icons.shield, size: 45),
                  title: Text(
                    'PASSWORDS',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Change Password",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
