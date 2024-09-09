import 'package:flutter/material.dart';

class Categorywidget extends StatelessWidget {
  const Categorywidget({super.key});

  @override
  Widget build(BuildContext context) {
    // List of image paths
    final List<String> imagePaths = [
      "assets/images/coldrink.png",
      "assets/images/bir.png",

        "assets/images/bur.png",
       "assets/images/handi.png",
       "assets/images/piza.png",
      // "assets/images/coldrink7.png",
      // "assets/images/coldrink8.png",
      // "assets/images/coldrink9.png",
      // "assets/images/coldrink10.png",
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: Row(
          children: [
            for (int i = 0; i < imagePaths.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        spreadRadius: 2,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    imagePaths[i], // Use the image path from the list
                    height: 70,
                    width: 70,fit: BoxFit.cover,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
