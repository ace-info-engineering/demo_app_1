import 'package:flutter/material.dart';

class Accessibility extends StatefulWidget {
  const Accessibility({super.key});

  @override
  State<Accessibility> createState() => _AccessibilityState();
}

class _AccessibilityState extends State<Accessibility> {
  String _selectedMode = 'Default'; // Initial selected mode

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accessibility'),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 224, 224),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dark Mode',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    title: const Text('Dark'),
                    leading: Radio<String>(
                      value: 'Dark,',
                      groupValue: _selectedMode,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedMode = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Light'),
                    leading: Radio<String>(
                      value: 'Light',
                      groupValue: _selectedMode,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedMode = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Default'),
                    leading: Radio<String>(
                      value: 'Default',
                      groupValue: _selectedMode,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedMode = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
