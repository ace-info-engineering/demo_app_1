import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
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
          // Center(
          //   child: Container(
          //     width: 220, // Set a fixed width for the container
          //     child: Text(
          //       "Manage your\n connected experiences\n and account settings\n across the application.",
          //       textAlign: TextAlign.center, // Center-align the text
          //       style: TextStyle(
          //         fontSize: 20,
          //         fontWeight: FontWeight.w500,
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
              onTap: () {
                
              },
              borderRadius: BorderRadius.circular(15), // Keeps the ripple effect within the rounded corners
              child: Container(
                height: 75,
                // width:65,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 227, 224, 224),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 380,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Report a Problem',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
              onTap: () {
                
              },
              borderRadius: BorderRadius.circular(15), // Keeps the ripple effect within the rounded corners
              child: Container(
                height: 75,
                // width:65,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 227, 224, 224),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 380,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Help Center',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
              onTap: () {
                
              },
              borderRadius: BorderRadius.circular(15), // Keeps the ripple effect within the rounded corners
              child: Container(
                height: 75,
                // width:65,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 227, 224, 224),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 380,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Securtiy Help',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
              onTap: () {
                
              },
              borderRadius: BorderRadius.circular(15), // Keeps the ripple effect within the rounded corners
              child: Container(
                height: 75,
                // width:65,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 227, 224, 224),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 380,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Privacy & Security Help',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    
  }
}