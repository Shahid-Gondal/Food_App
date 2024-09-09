import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/AppBarWidget.dart';
import 'package:food_app/Cartpage.dart';
import 'package:food_app/CategoryWidget.dart';
import 'package:food_app/Newestitem.dart';
import 'package:food_app/Popularwidget.dart';
import 'package:food_app/darwerwidget.dart';
import 'package:food_app/notify.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Notify(),));
          }, icon: Icon(Icons.notifications_active))
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "What would you Like to have?",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Icon(Icons.filter_list)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Categories",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Categorywidget(),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Popular",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Popularwidget(),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Newest",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Newestitem(),
          ],
        ),
      ),
      drawer: DrawerWidget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: FloatingActionButton(
          shape: CircleBorder(
              eccentricity: CircularProgressIndicator.strokeAlignCenter),
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cartpage(),
                ));
          },
          child: Icon(
            size: 28,
            CupertinoIcons.cart_fill,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
