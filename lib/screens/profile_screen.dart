import 'package:flutter/material.dart';
import 'package:praktikum_2/main.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp is a widget that introduces a number of widgets (is the main wrapper)
    return MaterialApp(
      // home is referred to tha main page (the first screen that will be displayed)
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components (is providing structure to the page)
    return Scaffold(
      // Gives color to the background page
      backgroundColor: Colors.cyan[400],
      // SafeArea is a widget that insets its child by sufficient padding to avoid intrusions by the operating system (like notches, status bar, etc)
      body: SafeArea(
        // Column is a layout widget that arranges its children vertically
        child: Column(
          // mainAxisAlignment is used to align the children vertically in the center
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Rule of thumb:
            // - Use const when the widget and everything it contains are fully static.
            // - Omit const if any part depends on runtime computation, state, or context.
            // CircleAvatar is a widget that shows a circular image (typically used for profile pictures)
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('./lib/assets/images/pbw.jpeg'),
            ),
            const Text(
              'OwO',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
