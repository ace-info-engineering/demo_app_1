import 'package:attendence_ace/features/ui/home.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 45),
            Center(
              child: Column(
                children: [
                  Image.asset('assets/images/logo.png'),
                  SizedBox(height: 20),
                  Text(
                    'ATTENDENCE APP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xFF5F9FFF),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'One point for attendence',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF5F9FFF),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Login To Your Account',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Color(0xFF5F9FFF),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 360,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email or Phonenumber',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
      
            
      
            Container(
              width: 360,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 15),
      
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Text(
                  'Log-In',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
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
              SizedBox(height: 20),
      
            Center(
              child: Column(
                children: [
                  // Text("or",
                  // style: TextStyle(
                  //   fontSize: 20
                  // ),
                  // ),
                  Text(
                    "or Continue with",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      width: 80,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            child: Image.asset('assets/images/google.png'),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Google',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0), // Rounded corners
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Column(
                      children: [
                        // Text("or",
                        // style: TextStyle(
                        //   fontSize: 20
                        // ),
                        // ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
