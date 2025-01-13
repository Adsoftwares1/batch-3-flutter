import 'package:first_app_batch_3/12_23_2024/login_ui.dart';
import 'package:first_app_batch_3/1_13_2025/drawer_practice.dart';
import 'package:first_app_batch_3/1_13_2025/profile.dart';
import 'package:first_app_batch_3/1_13_2025/setting.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // drawer header
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 135, 100, 98),
            ),

            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/icon/icon.png"),
                  radius: 30,
                ),
                Text("Mukesh Ambani", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          // home screen
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DrawerPractice()));
            },
            child: Card(
              color: const Color.fromARGB(255, 229, 218, 217),
              child: ListTile(
                title: Text("Home"),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
          ),

          // profile SCreen
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: Card(
                child: ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
            )),
          ),

          // settings screen
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingScreen()));
            },
            child: Card(
                child: ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
            )),
          ),

          // logout screen
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Card(
                child: ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout),
            )),
          )
        ],
      ),
    );
  }
}
