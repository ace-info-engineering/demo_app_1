import 'package:attendence_ace/features/ui/home.dart';
import 'package:flutter/material.dart';

class ReviewAttedndence extends StatefulWidget {
  const ReviewAttedndence({super.key});

  @override
  State<ReviewAttedndence> createState() => _ReviewAttedndenceState();
}

class _ReviewAttedndenceState extends State<ReviewAttedndence> {

  TextEditingController _topicName = TextEditingController();
  TextEditingController _unitName = TextEditingController();

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              width: 370,
              child: Column(
                children: [
                  Text("II CSM A",
                  style: TextStyle(
                    fontSize: 35
                  ),
                  ),
                  SizedBox(height: 10),
                  
                  Text(
                    "Complier Design",
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  )
                ],
              ),
            ),
        
            SizedBox(height: 50),
        
            Center(
              child: Container(
                width: 320,
                height: 260,
                decoration: BoxDecoration(
                                color: const Color.fromARGB(77, 238, 199, 199),
                                borderRadius: BorderRadius.circular(15)
                ),
              
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                    "What are the topics covered ?",
                    style: TextStyle(
                      fontSize: 25
                    ),
                    ),
                    SizedBox(height: 20),
                    Container(
                width: 280,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Unit Name',
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 280,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Topic Name',
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),
        
              SizedBox(height: 15),
              
              ElevatedButton(onPressed: (){
              
              },
              child: Text(
                "Submit"  
              )
              
              )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
        
            Text("Abseentes",
            style: TextStyle(
              fontSize: 25,
            )),
        
            SizedBox(height: 120),
        
            ElevatedButton(
              onPressed: () {
                // Your onPressed code here
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
              },
              child: Text("Proceed",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                  ),
                ),
              ),
            )
        
           
            
          ],
        ),
      ),
    );
    
  }
}