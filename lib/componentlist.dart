import 'package:flutter/material.dart';

class ComponentList extends StatelessWidget {
  const ComponentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component List', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {}, child: Text("Click Me")
          ),
          SizedBox(height: 10), // Space between buttons
          SizedBox(
            height: 40,
            // width: 200,
            width: double.infinity, // Full width
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 186, 245, 48),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {}, child: Text("Full width")
          ),
          ),
          SizedBox(height: 10), // Space between buttons
          OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
          SizedBox(height: 10), // Space between buttons
          TextButton(onPressed: () {}, child: Text("Text Button")),
          SizedBox(height: 10), // Space between buttons and list
          Icon(Icons.home, size: 50, color: Colors.blue),
          SizedBox(height: 10), // Space between buttons and list
          IconButton(onPressed: () {}, icon: Icon(Icons.settings, size: 30, color: Colors.blue)),
          SizedBox(height: 10), // Space between buttons and list
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Text(
              'Go to Home Page',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(height: 10), // Space between buttons and list
          ListTile(
            title: Text('Settings Page'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          // Add more components as needed
        ],
        ),
      ),
    );
  }
}