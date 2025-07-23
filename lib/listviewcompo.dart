import 'package:flutter/material.dart';

class ListviewCompo extends StatelessWidget {
  const ListviewCompo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view Widgets', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10, // Number of items in the list
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.list, color: Colors.teal),
              title: Text('Item ${index + 1}', style: TextStyle(fontSize: 18)),
              subtitle: Text('This is the description for item ${index + 1}'),
              trailing: Icon(Icons.arrow_forward, color: Colors.teal),
              onTap: () {
                // Action when the list item is tapped
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Tapped on Item ${index + 1}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}