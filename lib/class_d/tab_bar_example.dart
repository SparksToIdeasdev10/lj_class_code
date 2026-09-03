import 'package:flutter/material.dart';
import 'package:lj/class_d/bottom_nav_task.dart';
import 'package:lj/class_d/image_example.dart';
import 'package:lj/class_d/gridview_example.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Tab Bar"),
            bottom: TabBar(
                tabs: [
                  Row(
                     mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Chats"),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CircleAvatar(
                          radius: 10,

                        ),
                      )
                    ],
                  ),
                  Text("Status"),
                  Text("Calls"),
                ]
            ),
          ),
          body: TabBarView(
              children: [
                GridViewExample(),
                ImageExample(),
                BottomNavTask()
              ]
          ),
        )
    );
  }
}
