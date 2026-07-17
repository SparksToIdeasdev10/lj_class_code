import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard",
          style: TextStyle(
            color: Colors.red
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: Icon(Icons.account_box_sharp),
        actions: [
          Icon(Icons.account_box_sharp,
              color: Colors.red,
            size: 60,
          ),
          Icon(Icons.account_box_sharp),
        ],
      ),
    );
  }
}
