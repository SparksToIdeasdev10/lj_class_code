import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  ListViewExample({super.key});

  List color = [
    Colors.cyan,
    Colors.orange,
    Colors.green,
    Colors.red,
    Colors.brown,
    Colors.black,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        // scrollDirection: Axis.horizontal,
        itemCount: color.length,
        itemBuilder: (context,index){
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                color: color[index],
                // index == 1
                //     ?Colors.blue
                //     :Colors.red,
                child: Text("$index"),
              ),
            ),
          );
        },
      ),
    );
  }
}
