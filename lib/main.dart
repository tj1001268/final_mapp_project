
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapp/firebase_options.dart';
import 'package:flutter_mapp/plugins/local_notifications.dart';
import 'package:flutter_mapp/screens/Temp_screen.dart';
import 'package:flutter_mapp/screens/splash_screen.dart';

import 'plugins/local_shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotification.initialize();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      // home: TempScreen(),
      // home: HomeLayout(),
    );
  }
}
