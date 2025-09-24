import 'package:flutter/material.dart';
import 'package:praktikum_2/screens/profile_screen.dart';
import 'package:praktikum_2/screens/shopping_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components (is providing structure to the page)
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.home),
            const SizedBox(width: 10.0),
            const Text("Home"),
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
      backgroundColor: Colors.cyan[400],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "Selamat datang di halaman utama!",
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              label: Text("Profile"),
              icon: Icon(Icons.person),
            ),
            SizedBox(height: 20.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ShoppingScreen(title: 'Shopping'),
                  ),
                );
              },
              label: Text("Shopping"),
              icon: Icon(Icons.shopping_cart),
            ),
          ],
        ),
      ),
    );
  }
}
