import 'package:flutter/material.dart';
import 'package:lj/class_b/listview_example.dart';
import 'package:lj/class_b/textfield_example.dart';

class BottomNavExample extends StatefulWidget {
  BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int currentI = 0;

  void changeIndex(int index){
    setState(() {
      currentI = index;
    });
  }

  List screens = [
    ListViewExample(),
    TextFieldExample(),
    TextFieldExample(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentI],
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.red,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: currentI,
        onTap: changeIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            backgroundColor: Colors.red,
            label: "Dashboard"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_number_sharp),
            backgroundColor: Colors.green,
            label: "Profile"
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
