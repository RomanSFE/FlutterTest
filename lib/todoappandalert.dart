import 'package:flutter/material.dart';

class TodoAppAndAlert extends StatelessWidget {
  const TodoAppAndAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo App and Alert')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Alert'),
                    content: Text('This is an alert dialog.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Show Alert'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => SimpleDialog(
                    title: Text('Add Todo'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(labelText: 'Todo Item'),
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('Add'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Add Todo'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    height: 200,
                    child: Center(
                      child: Text('This is a bottom sheet'),
                    ),
                  ),
                );
              },
              child: Text('Show Bottom Sheet'),
            ),

          ],
        )
      ),
    );
  }
}