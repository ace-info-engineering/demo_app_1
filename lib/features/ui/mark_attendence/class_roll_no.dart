import 'package:attendence_ace/features/ui/mark_attendence/class_details.dart';
import 'package:attendence_ace/features/ui/mark_attendence/review_attedndence.dart';
import 'package:flutter/material.dart';

class RollNos extends StatefulWidget {
  const RollNos({super.key});

  @override
  State<RollNos> createState() => _RollNosState();
}

class _RollNosState extends State<RollNos> {
  
  List<bool> attendance = List.generate(64, (index) => true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mark Attendance'),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       // Bookmark action
        //     },
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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "III CSE B",
              style: TextStyle(
                fontSize: 35,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: GridView.builder(
                padding: EdgeInsets.all(10),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), // Disable GridView's own scrolling
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // 4 items per row
                  childAspectRatio: 1, // Square aspect ratio
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: attendance.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        attendance[index] = !attendance[index];
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: attendance[index] ? Colors.green : Colors.red,
                      child: Text(
                        (501 + index).toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            height: 80, // Set the desired height for the bottom navigation bar
            decoration: BoxDecoration(
              color: Colors.blueAccent, // Optional: To highlight the bottom area
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    // Navigate to previous
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ClassDetails()));
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  iconSize: 45,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text(
                        attendance.where((present) => present).length.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Text(
                        attendance.where((present) => !present).length.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    // Navigate to next
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ReviewAttedndence()));
                  },
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.black,
                  iconSize: 45,
                ),
              ],
            ),
          )
        ],
      ),
    );
    
  }
}