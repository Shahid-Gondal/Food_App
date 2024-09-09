import 'package:flutter/material.dart';

class Bottomnavbar extends StatelessWidget {
  const Bottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Total:",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "\$80",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ],
            ),
            ElevatedButton(
              style: ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
                  backgroundColor: WidgetStatePropertyAll(Colors.red)),
              onPressed: () {},
              child: Text(
                "Order Now",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
