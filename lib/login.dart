import 'package:flutter/material.dart';

class loginView extends StatefulWidget {
  const loginView({super.key});

  @override
  State<loginView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<loginView> {
  List friends = ["bilal", "ahmed", "umer", "akmal"];
  TextEditingController friendscontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: TextField(
          controller: friendscontroller,
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                friends.add(friendscontroller.text);
                friendscontroller.clear();
              });
            },
            child: Text("Add"),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          return Container(
            child: ListTile(
              tileColor: Colors.blue,
              title: Text(friends[index]),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    friends.removeAt(index);
                  });
                },
                icon: Icon(Icons.delete),
              ),
            ),
          );
        },
      ),
    );
  }
}
