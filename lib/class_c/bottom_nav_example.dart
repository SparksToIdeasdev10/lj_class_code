import 'package:flutter/material.dart';
import 'package:lj/class_c/grid_example.dart';
import 'package:lj/class_c/listview_example.dart';

import '../class_c/stack_example.dart';

class BottomNavExample extends StatefulWidget {
  BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int currentI = 0;

  void indexChange(int index){
    print(index);
    setState(() {
      currentI = index;
    });
  }

  List screens = [
    GridExample(),
    StackExample(),
    ListViewExample()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentI],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: currentI,
        onTap: indexChange,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
              icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
              icon: Icon(Icons.task),
              label: "Task"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"
          ),
        ],
      ),
    );
  }
}
