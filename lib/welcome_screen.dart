//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "PALESTINE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                height: 0.8,
              ),
            ),
            Text(
              "FREE PALESTINE FREE GAZA",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
