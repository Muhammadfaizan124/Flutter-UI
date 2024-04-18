import 'package:flutter/material.dart';

import 'menu_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "NECTAR",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: "Helvetica",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 50,
                      height: 0.8,
                    ),
                  ),
                  const Text(
                    "Online shopping mart",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 20.0), // Add padding to bottom
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(
                    327,
                    50,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuScreen()),
                  );
                },
                child: Text("let's begin"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
