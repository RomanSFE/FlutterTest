import 'package:flutter/material.dart';

class StackAndProgress extends StatelessWidget {
  const StackAndProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack and Progress')),
      body: Center(
        child: Stack(
          children: [
            // GridView.count(
            //   crossAxisCount: 2,
            //   crossAxisSpacing: 10,
            //   mainAxisSpacing: 10,
            //   children: [
            //   Container(color: Colors.red, height: 100, width: 100),
            //   Container(color: Colors.green, height: 100, width: 100),
            //   Container(color: Colors.blue, height: 100, width: 100),
            //   Container(color: Colors.yellow, height: 100, width: 100),
            // ]),
            // GridView.count(
            //   crossAxisCount: 2,
            //   crossAxisSpacing: 10,
            //   mainAxisSpacing: 10,
            //   children: List.generate(4, (index) {
            //     return Card(
            //       color: Colors.red,
            //       elevation: 5,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(20),
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           // CircularProgressIndicator(
            //           //   value: (index + 1) / 4,
            //           //   strokeWidth: 5,
            //           // ),
            //           Icon(Icons.phone_android, size: 50, color: Colors.white),
            //           SizedBox(height: 10),
            //           // Text('Progress ${index + 1}'),
            //           Text('Cash Out ${index + 1}', style: TextStyle(fontSize: 20, color: Colors.white) ),
            //         ],
            //       ),
            //     );
            //   }),
            // ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.blue,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text('Item ${index + 1}', style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}