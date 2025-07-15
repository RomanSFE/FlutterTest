import 'package:flutter/material.dart';

class FlutterForm extends StatelessWidget {
  const FlutterForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Form', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Enter your number',
                  hintText: 'Enter your phone number here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                      bottom: Radius.circular(20),
                    ),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  prefixIcon: Icon(Icons.phone, color: Colors.green),
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  hintText: 'Enter your password here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                      bottom: Radius.circular(20),
                    ),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  prefixIcon: Icon(Icons.lock, color: Colors.green),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.green),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Space between text field and button
            ElevatedButton( 
              onPressed: () {
                // Handle form submission
                if(phoneController.text.isNotEmpty && passwordController.text.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Form submitted successfully!'))
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please fill in all fields.'))
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('Submit'),
            ),
            SizedBox(height: 10),
            ElevatedButton( 
              onPressed: () {
                // Handle form submission
                phoneController.clear();
                passwordController.clear();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('Clear'),
            ), // Space between button and text
          ],
        ),
      ),
    );
  }
}