import 'package:flutter/material.dart';

class Notify extends StatelessWidget {
  const Notify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Notification",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.black,
            ),),
          ),
        ],
      ),
    );
  }
}
