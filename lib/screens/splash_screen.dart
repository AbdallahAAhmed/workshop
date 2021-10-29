import 'package:flutter/material.dart';
import 'package:workshop/constraints.dart';
import 'landing_screen.dart';

// Splash Page
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // the below method is for after 2 sec of display spalsh page, open Another page.
    Future.delayed(
        const Duration(seconds: 2),
            () => {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MountsApp()))
        });

    return Container(
      color: mainColor,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.terrain,
              color: Colors.white,
              size: 90,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 80),
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}