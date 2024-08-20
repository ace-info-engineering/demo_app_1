import 'package:attendence_ace/features/ui/auth.dart';
import 'package:attendence_ace/features/ui/mark_attendence/class_details.dart';
import 'package:attendence_ace/features/ui/profile/accessibility.dart';
import 'package:attendence_ace/features/ui/profile/help.dart';
import 'package:attendence_ace/features/ui/profile/profile_main.dart';
import 'package:attendence_ace/features/ui/profile/security.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            width: 220,
            height: 220,
            child: UserAccountsDrawerHeader(
              accountName: Text("Professor X",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
              ),
              accountEmail: Text('H & BS',
              style: TextStyle(
                fontSize: 19
              ),
              ),
              currentAccountPicture: CircleAvatar(
                    radius: 60, // Increase the radius to make the CircleAvatar larger
                    child: Icon(
                      Icons.person,
                      size: 50, // Adjust the icon size to fit within the larger CircleAvatar
                    ),
                  )
            ),
          ),
          ListTile(
            leading: Icon(Icons.check_box),
            title: Text('Mark Attendence'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ClassDetails()));
              // Navigate or perform action related to 'Personal Dashboard'
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Edit Profile'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileMain()));
              // Navigate or perform action related to 'Daily Tasks'
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Accessibility'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Accessibility()));
              // Navigate or perform action related to 'Contests'
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Security'),
            onTap: () {
              Navigator.pop(context);
              // Navigate or perform action related to 'Opportunities'
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Security()));
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpPage()));
              // Navigate or perform action related to 'Opportunities'
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.pop(context);
              // Navigate or perform action related to 'Opportunities'
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AuthPage()));
            },
          ),
          
        ],
      ),
    );
  }
}
