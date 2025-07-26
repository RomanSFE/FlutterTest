import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String title;
  final String img;

  const CityCard({super.key, required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, // ✅ Important for horizontal scroll
      margin: EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              img,
              fit: BoxFit.cover,
              width: 250,
              height: 150,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Click'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
