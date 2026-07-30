import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Home",
            style: TextStyle(
              color: Colors.red
            )),
        centerTitle: true,
        leading: Icon(Icons.person,
            color: Colors.red,
          size: 50,
        ),
        actions: [
          Icon(Icons.person),
          Icon(Icons.person),
        ],
      ),
    );
  }
}
