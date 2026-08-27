import 'package:flutter/material.dart';
import 'package:lj/class_d/textfield_example.dart';
import 'package:lj/class_d/image_example.dart';
import 'package:lj/class_d/gridview_example.dart';

class BottomNavExample extends StatefulWidget {
  BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int currentI = 0;

  void indexChange(int index){
    setState(() {
      currentI = index;
    });
  }

  List screens = [
    GridViewExample(),
    ImageExample(),
    TextFieldExample(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentI],
      bottomNavigationBar: BottomNavigationBar(
        onTap: indexChange,
        currentIndex: currentI,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            backgroundColor: Colors.blue,
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
              backgroundColor: Colors.green,
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
