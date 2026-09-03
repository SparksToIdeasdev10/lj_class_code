import 'package:flutter/material.dart';
import 'package:lj/class_b/image_example.dart';
import 'package:lj/class_b/listview_example.dart';
import 'package:lj/class_b/stack_example.dart';
import 'buttons.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar"),
            bottom: TabBar(
                tabs: [
                  Text("Chats"),
                  Text("Status"),
                  Text("Call"),
                ]
            ),
          ),
          body: TabBarView(
              children: [
                ListViewExample(),
                ImageExample(),
                Buttons(),
              ]
          ),

        )
    );
  }
}
