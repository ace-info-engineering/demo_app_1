import 'package:flutter/material.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({super.key});

  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  TextEditingController _currentPass = TextEditingController();
  TextEditingController _newPass = TextEditingController();
  TextEditingController _rePass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Passwords Change"),
      content: Container(
        width: double.maxFinite, // Ensure it has a bounded width
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _currentPass,
              decoration: InputDecoration(
                labelText: 'Current Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Hides the text input
              keyboardType: TextInputType.visiblePassword, // Suitable for passwords
            ),
                        SizedBox(height: 20),
                        TextFormField(
              controller: _newPass,
              decoration: InputDecoration(
                labelText: 'Current Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Hides the text input
              keyboardType: TextInputType.visiblePassword, // Suitable for passwords
            ),
                        SizedBox(height: 20),
                        TextFormField(
              controller: _rePass,
              decoration: InputDecoration(
                labelText: 'Current Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Hides the text input
              keyboardType: TextInputType.visiblePassword, // Suitable for passwords
            ),
            SizedBox(height: 20),
            Row(
              // mainAxisAlignment: MainAxisAlignment.end, // Align buttons to the end
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: Text('Cancel',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  ),
                ),
                SizedBox(width: 90),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                  onPressed: () {
                    // Add your submit action here
                  },
                  child: Text('Submit',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
