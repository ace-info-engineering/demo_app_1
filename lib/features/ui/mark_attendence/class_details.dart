import 'package:attendence_ace/features/ui/mark_attendence/class_roll_no.dart';
import 'package:flutter/material.dart';

class ClassDetails extends StatefulWidget {
  const ClassDetails({super.key});

  @override
  State<ClassDetails> createState() => _ClassDetailsState();
}

class _ClassDetailsState extends State<ClassDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class Details'),
        // actions: [
        //   IconButton(onPressed: (){

        //   }, 
        //   icon: Icon(Icons.bookmark)),
        //   IconButton(onPressed: (){

        //   },
        //   icon: Icon(Icons.menu))
        // ],
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            
            Text("Date : XXXXXX",
            style: TextStyle(
              fontSize: 35,
            )
            ),
            Text("Class : XXXXXX",
            style: TextStyle(
              fontSize: 35,
            )
            ),
            Text("Subject : XXXXXX",
            style: TextStyle(
              fontSize: 35,
            )
            ),
            Text("Time : XXXXXX",
            style: TextStyle(
              fontSize: 35,
            )
            ),
        SizedBox(height: 120),
        
        ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RollNos()));
            },
            child: Text(
                'Next',
              style: TextStyle(
                color: Colors.black,
                fontSize: 45,
                 ),
              ),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF5F9FFF)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0), // Rounded corners
              ),
            ),
          ),
        ),
          ],
          
        ),
      ),
    );
  }
}