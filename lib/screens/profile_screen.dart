import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components (is providing structure to the page)
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.person),
            const SizedBox(width: 10.0),
            const Text(
              "Profile",
              style: TextStyle(fontFamily: 'Source Sans Pro'),
            ),
          ],
        ),
        // centerTitle: true,
        backgroundColor: Colors.cyan[500],
        // flexibleSpace is a widget that is stacked behind the toolbar and the tab bar
        flexibleSpace: Container(
          // BoxDecoration is a class that allows you to decorate a box with various styles
          decoration: BoxDecoration(
            // LinearGradient is a gradient that transitions between colors in a straight line
            gradient: LinearGradient(
              colors: [Colors.cyan.shade600, Colors.cyan.shade400],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
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
              backgroundImage: AssetImage('./lib/assets/images/ishowjava.jpg'),
            ),
            const Text(
              'Raden Ishowjava',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Constant color
              ),
            ),
            Text(
              'Informatika',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
                color: Colors.green[100], // Dynamic color
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
                        fontFamily: 'Source Sans Pro',
                        fontSize: 10.0,
                        color: Colors.cyan[900], // Dynamic color
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
                    'ishowjava.kingofjava@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 10.0,
                      color: Colors.cyan[900], // Dynamic color
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
