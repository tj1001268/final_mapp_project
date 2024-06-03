import 'package:flutter/material.dart';
import 'package:flutter_mapp/hoc/side_bar.dart';
import 'package:flutter_mapp/plugins/local_shared_preferences.dart';
import 'package:flutter_mapp/screens/account/account_screen.dart';
import 'package:flutter_mapp/screens/landing/home_screen.dart';
import 'package:flutter_mapp/screens/splash_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectedIndex = 0;

  List<String> titles = ['Home', 'Account', 'AddTransaction'];
  
  List<Widget> screens = [
    HomeScreen(),
    AccountScreen(),
  ];

  Future<void> logoutUser() async {
    await setTokenToBlank();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => SplashScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(titles[_selectedIndex]),
        backgroundColor: Color(0xFFEA6C43),
        // Set the background color of the app bar
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 40,
              fit: BoxFit.contain,
            ),
          ],
        ),
        actions: [
          const SizedBox(
            width: 40, // Adjust the width as needed for spacing
            child: Icon(Icons.search),
          ),
          ClipOval(
            child: Image.asset(
              'assets/images/photo.jpg',
              height: 50,
              fit: BoxFit.contain,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.power_settings_new), // Logout Icon
            onPressed: () {
              logoutUser();
            },
          ),
          const SizedBox(width: 8), // Adjust the width as needed for spacing
        ],
      ),

      drawer: SideBar(), //

      body: RefreshIndicator(
        onRefresh: () async {
          print('here');
        },
        child: SingleChildScrollView(
          child: screens[_selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (val) {
          setState(() {
            _selectedIndex = val;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Accounts'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'AddTransaction'),
        ],
      ),
    );
  }
}
