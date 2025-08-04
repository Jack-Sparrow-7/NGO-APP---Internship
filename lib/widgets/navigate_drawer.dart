import 'package:flutter/material.dart';
import 'package:ngo_app/services/screen_utils.dart';

class NavigateDrawer extends StatelessWidget {
  const NavigateDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: context.w(50),
      backgroundColor: Color(0xFFE8F0F2),
      child: Column(
        children: [
          DrawerHeader(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.only(top: 16, bottom: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('assets/images/ngo.png'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_filled, size: 30),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () => Navigator.pushNamedAndRemoveUntil(
              context,
              '/home',
              (route) => false,
            ),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 30),
            title: Text(
              "Volunteer",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () => Navigator.pushNamedAndRemoveUntil(
              context,
              '/volunteer',
              (route) => false,
            ),
          ),
        ],
      ),
    );
  }
}
