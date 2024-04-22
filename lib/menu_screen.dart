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
                  decoration: const InputDecoration(
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
              // Displaying multiple instances of Customcards
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6, // Change this to the number of instances you want
                itemBuilder: (context, index) {
                  return Customcards();
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}

//class for bottom navigation bar
class BottomNavbar extends StatefulWidget {
  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int myindex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          myindex = index;
        });
      },
      currentIndex: myindex,
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
        // BottomNavigationBarItem(
        //     icon: Icon(Icons.favorite_border_outlined), label: "favorite"),
        // BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
      ],
    );
  }
}

//class for cards
class Customcards extends StatelessWidget {
  final List img = [
    "apple",
    "banana",
    "beef",
    "chicken",
    "mango",
    "strawbery",
  ];

  Customcards({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      physics: NeverScrollableScrollPhysics(),
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/${img[i]}.jpeg",
                    height: 90,
                    width: 90,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      img[i],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
