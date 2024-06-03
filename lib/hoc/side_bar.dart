import 'package:flutter/material.dart';
import 'package:flutter_mapp/screens/landing/home_screen.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

 @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5, // Adjust the width as needed
      child: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/photo.jpg', // Path to your image asset
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Tshering Jatsho',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent,
                  ),
                ),
              ],
            ),
          ),

          ListTile(
            leading: Icon(Icons.account_circle_outlined), 
            title: Text('Update Profile'),
            onTap: () {
              // Implement drawer item 1 functionality
            },
          ),
          ListTile(
            leading: Icon(Icons.change_circle), // Icon for "H
            title: Text('Forgot T-Pin'),
            onTap: () {
              // Implement drawer item 2 functionality
            },
          ),

          ListTile(
            leading: Icon(Icons.change_history_outlined), 
            title: Text('Change T-Pin'),
            onTap: () {
              // Implement drawer item 2 functionality
            },
          ),

          ListTile(
            leading: Icon(Icons.change_circle), 
            title: Text('Change Password'),
            onTap: () {
            },
          ),

          ListTile(
            leading: Icon(Icons.account_circle_outlined), 
            title: Text('About Us'),
            onTap: () {
            },
          ),

          ListTile(
            leading: Icon(Icons.star_border_outlined), 
            title: Text('Rate Us'),
            onTap: () {
            },
          ),

          ListTile(
            leading: Icon(Icons.logout), 
            title: Text('Logout'),
            onTap: () {
            },
          ),
          
        ],
      ),
      )
    );
  }
}