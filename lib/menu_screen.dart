import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Menu screen"),
      ),
      //card
      body: Center(
        child: Container(
          width: 200,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/burger.jpg",
                    height: 110,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Product title
                const Text(
                  "Beef cheese burger",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "1 Burger with fries and 500ML soft drink.",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$30",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                      width: 35,
                      child: FittedBox(
                        child: FloatingActionButton(
                          onPressed: null,
                          child: Icon(Icons.add),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
