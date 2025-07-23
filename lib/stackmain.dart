import 'package:flutter/material.dart';

class StackMain extends StatelessWidget {
  const StackMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack Main')),
      body: SingleChildScrollView(  // ✅ Added scrollable wrapper
        child: Column(
          children: [
            // First Stack
            Stack(
              children: [
                Container(
                  height: 200,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Stack Background',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 50,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Center(child: Text('Positioned Box')),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Second Stack
            Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.green,
                  child: Text('Avatar'),
                ),
                Positioned(
                  top: 70,
                  left: 80,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // List inside scroll
            ListView.builder(
              shrinkWrap: true, // ✅ Important for scroll inside SingleChildScrollView
              physics: NeverScrollableScrollPhysics(), // ✅ Disable inner scrolling
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 244, 244),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Row(
                      children: [
                        Image.network(
                          'assets/bg2.jpg', // Ensure you have these images
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Padding(padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Item ${index + 1}',
                                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: List.generate(5, (starIndex) {
                                    return Icon(
                                      Icons.star,
                                      color: starIndex < 3 ? Colors.yellow : Colors.grey,
                                      size: 16,
                                    );
                                  }),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Location ${index + 1}',
                                      style: TextStyle(color: const Color.fromARGB(255, 2, 2, 2), fontSize: 14),
                                    ),
                                    ElevatedButton(onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(255, 7, 201, 65),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Text('View', style: TextStyle(color: Colors.white))),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20),

            // Image Stack
            Stack(
              children: [
                Image.asset(
                  'assets/bg1.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Overlay Text',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
