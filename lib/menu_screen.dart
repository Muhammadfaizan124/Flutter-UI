import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30,
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Welcome to our store",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                width: MediaQuery.of(context).size.width,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search store",
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.green[100],
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.store_sharp),
          label: "shop",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.manage_search_outlined),
          label: "explore",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "cart",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined), label: "favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
      ],
    );
  }
}
