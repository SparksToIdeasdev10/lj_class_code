import 'package:flutter/material.dart';
import 'package:lj/class_a/gridview_example.dart';
import 'package:lj/class_a/image_example.dart';
import 'package:lj/class_a/stack_example.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text("Tab Bar"),
            centerTitle: true,
            bottom: TabBar(
                tabs: [
                  Text("Home"),
                  Text("Task"),
                  Text("Profile"),
                ]
            ),
          ),
          body: TabBarView(
            children: [
              Text("Home"),
              ImageExample(),
              GridViewExample(),
            ],
          ),
        )
    );
  }
}
