import 'package:flutter/material.dart';
import 'package:lj1/class_e/gridview_example.dart';
import 'package:lj1/class_e/image_example.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            bottom: TabBar(
                tabs: [
                  Icon(Icons.camera_alt_outlined),
                  Text("Chats"),
                  Text("Status"),
                ]
            ),
          ),
          body: TabBarView(
            children: [
              GridViewExample(),
              ImageExample(),
              ImageExample(),
            ],
          ),
        )
    );
  }
}
