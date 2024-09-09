import 'package:flutter/material.dart';
import 'package:food_app/Home.dart';
import 'dart:math'as math;

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>with TickerProviderStateMixin {
  late AnimationController _controller=AnimationController(
      duration: Duration(seconds: 3),
      vsync: this)..repeat();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),() => Navigator.push(context,MaterialPageRoute(builder: (context) => Home(),)),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Expanded(child: Image(image: AssetImage("assets/images/bur.png"))),
          AnimatedBuilder(
            child: Column(
              children: [
                Text("Hunger Mart",style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            animation: _controller,
              builder: (BuildContext context,Widget? child,) {
                return Transform.scale(
                  scale: _controller.value*1.2*math.pi,
                  child: child,
                );
              },),
          Expanded(child: Image(image: AssetImage("assets/images/piza.png"))),
        ],
      ),
    );
  }
}
