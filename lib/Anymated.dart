import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/splashScreen.dart';
import 'package:page_animation_transition/animations/top_to_bottom_faded.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class Anymated extends StatefulWidget {
  const Anymated({super.key});

  @override
  State<Anymated> createState() => _AnymatedState();
}

class _AnymatedState extends State<Anymated> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 60,
          ),
          Image.asset(
            "assets/images/logos.png",
            width: 320,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Go to Pizza Shop",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SwipeableButtonView(
              buttonColor: Colors.yellow,
              isFinished: isFinished,
              onWaitingProcess: () {
                Future.delayed(
                  Duration(seconds: 3),
                  () {
                    setState(
                      () {
                        isFinished = true;
                      },
                    );
                  },
                );
              },
              activeColor: Colors.grey,
              buttonWidget: Container(
                child: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.black,
                  size: 40,
                ),
              ),
              buttonText: "Go For Pizza",
              buttontextstyle: TextStyle(
                fontSize: 25,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
              onFinish: () async {
                await Navigator.push(
                  context,
                  PageAnimationTransition(
                    page: Splashscreen(),
                    pageAnimationType: TopToBottomFadedTransition(),
                  ),
                );
                setState(
                  () {
                    isFinished = false;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
