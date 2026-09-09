import 'package:flutter/material.dart';
import 'package:lj1/class_e/gridview_example.dart';
import 'package:lj1/class_e/image_example.dart';

class BottomNavExample extends StatefulWidget {
  BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int currentI = 0;

  void changeIndex(int index){
    setState(() {
      print(index);
      currentI = index;
      print(currentI);
    });
  }

  List screens = [
    GridViewExample(),
    ImageExample(),
    ImageExample(),
    ImageExample(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentI],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: currentI,
          onTap: changeIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                backgroundColor: Colors.red,
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
                backgroundColor: Colors.green,
              label: "Profile"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                backgroundColor: Colors.purple,
                label: "Profile"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"
            ),
          ]
      ),
    );
  }
}
