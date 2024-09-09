import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Home.dart';

class Appbarwidget extends StatelessWidget {
  const Appbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
            },
              child: Container(
                padding: const EdgeInsets.all(10),  // Adjust padding to control size
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),  // Adjust borderRadius to control roundness
                ),
                child: const Icon(
                  Icons.arrow_back,
                  size: 16,  // Adjust icon size
                  color: Colors.black,  // Adjust icon color if needed
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),  // Adjust padding to control size
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
              borderRadius: BorderRadius.circular(10),  // Adjust borderRadius to control roundness
            ),
            child: const Icon(
              Icons.notifications,
              size: 16,  // Adjust icon size
              color: Colors.black,  // Adjust icon color if needed
            ),
          ),
        ],
      ),
    );
  }
}
