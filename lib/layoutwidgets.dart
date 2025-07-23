import 'package:flutter/material.dart';
import 'package:fluttertestproject/listviewcompo.dart';

class LayoutWidgets extends StatelessWidget {
  LayoutWidgets({super.key});

  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout A Widgets', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.network('https://placehold.co/600x400/000000/FFFFFF/png',
            // height: 100,
            // width: 500),
            SizedBox(height: 10), // Space between image and text
            Image.asset('assets/fb.png',
            height: 100,
            width: 600),
            SizedBox(height: 10), // Space between image and text
            Text(
              'Login With Facebook',
              style: TextStyle(fontSize: 20, color: Colors.teal),
            ),
            SizedBox(height: 20), // Space between text and buttons
            Form(
              key: _formKey,
              child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10), // Space between text fields
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 20), // Space between text fields and buttons
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Process data
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Login Successful!')),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListviewCompo()),
                      );
                    }
                  },
                  child: Text('Login'),
                ),
              ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}