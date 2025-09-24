import 'package:flutter/material.dart';

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
              'Prabs Wibowo',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
                color: Colors.white, // Constant color
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Informatika',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.green[100], // Dynamic color
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            // SizedBox is a box with a specified size (used for spacing)
            SizedBox(
              height: 20.0,
              width: 100.0,
              // Divider is a thin horizontal line (used to separate content)
              child: Divider(color: Colors.teal.shade100), // Dynamic color
            ),
            // Card is a sheet of Material used to represent some related information (like a contact)
            // Card has slightly rounded corners and a shadow
            Card(
              // Margin is the space outside the border
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                // Row is a layout widget that arranges its children horizontally
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.cyan[900], // Dynamic color
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      '+62 812-3456-7890',
                      style: TextStyle(
                        color: Colors.cyan[900], // Dynamic color
                        fontFamily: 'Source Sans Pro',
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: EdgeInsets.all(0.0),
                // ListTile is a single fixed-height row that typically contains some text as well as a leading or trailing icon
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.cyan[900], // Dynamic color
                  ),
                  title: Text(
                    'prabsngabers@gmail.com',
                    style: TextStyle(
                      color: Colors.cyan[900], // Dynamic color
                      fontFamily: 'Source Sans Pro',
                      fontSize: 10.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
