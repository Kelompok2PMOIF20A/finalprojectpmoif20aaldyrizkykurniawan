import 'package:finalprojectpmoif20aaldyrizkyk/screens/pendonor.dart';
import 'package:finalprojectpmoif20aaldyrizkyk/screens/penerima_donor.dart';
import 'package:finalprojectpmoif20aaldyrizkyk/screens/requirement.dart';
import 'package:finalprojectpmoif20aaldyrizkyk/screens/profile.dart';
import 'package:finalprojectpmoif20aaldyrizkyk/screens/signin_screen.dart';
import 'package:finalprojectpmoif20aaldyrizkyk/screens/square.dart';
import 'package:finalprojectpmoif20aaldyrizkyk/screens/pendonor.dart';
import 'package:finalprojectpmoif20aaldyrizkyk/screens/homepage.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final List _posts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Dashboard',
        ),
        backgroundColor: const Color(0xffcd0000),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: const Color(0xFFF44336)),
              accountName: Text(
                "Arief Ade I",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "ariefade1@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/122.png"),
                  )),
            ),
            // ListTile(
            //   leading: Icon(
            //     Icons.home,
            //   ),
            //   title: const Text('Pendonor'),
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => HomePage()));
            //   },
            // ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: const Text('Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.question_mark,
              ),
              title: const Text('Persyaratan Pendonor'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Requirement()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: const Text('Logout'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Pendonor()));
                },
                child: const Text('Pendonor')
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Requestblood()));
                },
                child: const Text('Membutuhkan Donor')
            ),
          ],
        ),
      ),
    );

  }
}
