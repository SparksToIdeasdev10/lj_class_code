import 'package:flutter/material.dart';
import 'package:lj/class_a/button_examples.dart';
import 'package:lj/class_a/stack_example.dart';
import 'gridview_example.dart';

class BottomNavExample extends StatefulWidget {
  BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int currentIndex = 0;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  List screens = [
    StackExample(),
    GridViewExample(),
    ButtonExamples(),
    ButtonExamples(),
    ButtonExamples(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.cyan,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,

          items: [
            BottomNavigationBarItem(
              label: "Home",
                backgroundColor: Colors.red,
                icon: Icon(Icons.account_balance_rounded)
            ),
            BottomNavigationBarItem(
                label: "Task",
                backgroundColor: Colors.black,
                icon: Icon(Icons.task)
            ),
            BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person)
            ),
            BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person)
            ),
            BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person)
            ),

          ]
      ),
    );
  }
}
