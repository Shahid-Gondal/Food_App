import 'package:flutter/material.dart';
import 'package:food_app/ItemPage.dart';

class Popularwidget extends StatelessWidget {

  const Popularwidget({super.key,});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      "assets/images/bur.png",
      "assets/images/bir.png",
      "assets/images/coldrink.png",
      "assets/images/handi.png",
      "assets/images/piza.png",
      // "assets/images/bur6.png",
      // "assets/images/bur7.png",
      // "assets/images/bur8.png",
      // "assets/images/bur9.png",
      // "assets/images/bur10.png",
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < imagePaths.length; i++)
            Container(
              margin: EdgeInsets.all(10),
              height: 225,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemPage(),
                            ));
                      },
                      child: Container(
                        child: Image.asset(
                          imagePaths[i],
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      "Hot Burger",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      "Taste our Hot Burger",
                      style: TextStyle(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "\$10",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
