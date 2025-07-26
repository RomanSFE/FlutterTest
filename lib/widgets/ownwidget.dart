import 'package:flutter/material.dart';
import 'package:fluttertestproject/widgets/citycard.dart';

class OwnWidget extends StatelessWidget {
  const OwnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OwnWidget Example')),
      body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 222, 222, 223),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                CityCard(title: 'Title 1', img: 'assets/bg2.jpg'),
                SizedBox(height: 20),
                CityCard(title: 'Title 2', img: 'assets/bg1.jpg'),
                SizedBox(height: 40),

                // ✅ Horizontal Scroll
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CityCard(title: 'Title 3', img: 'assets/bg1.jpg'),
                      SizedBox(width: 10),
                      CityCard(title: 'Title 4', img: 'assets/bg2.jpg'),
                      SizedBox(width: 10),
                      CityCard(title: 'Title 5', img: 'assets/bg1.jpg'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),


    );
  }
}