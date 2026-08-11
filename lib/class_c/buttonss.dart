import 'package:flutter/material.dart';
import 'package:lj/class_c/grid_example.dart';

class ButtonNavigation extends StatelessWidget {
  const ButtonNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => GridExample()));
              },
              child: Text("Next Screen"))
        ],
      ),
    );
  }
}
