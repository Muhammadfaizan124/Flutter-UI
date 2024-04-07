//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key); // corrected constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "PALESTINE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                height: 0.8,
              ),
            ),
            const Text(
              "FREE PALESTINE FREE GAZA",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: Text("lets go"),
            ),
          ],
        ),
      ),
    );
  }
}
