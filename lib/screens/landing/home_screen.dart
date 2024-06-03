
import 'package:flutter/material.dart';
import 'package:flutter_mapp/plugins/local_shared_preferences.dart';
import 'package:flutter_mapp/widgets/landing/summary_accounts.dart';
import 'package:flutter_mapp/widgets/landing/summary_home.dart';
import 'package:flutter_mapp/widgets/landing/summary_transactions.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../splash_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> logoutUser() async {
    await setTokenToBlank();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => SplashScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SummaryHome(),
          SummaryAccounts(),
          SummaryTransactions()
        ],
      ),
    );
   }
}
