import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  GridViewExample({super.key});

  List color = [
    {"color":Colors.red,"names":"asd"},
    {"color":Colors.blueAccent,"names":"asd"},
    {"color":Colors.orange,"names":"asd"},
    {"color":Colors.green,"names":"asd"},
    {"color":Colors.purple,"names":"asd"},
    {"color":Colors.black,"names":"asd"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // crossAxisSpacing: 10
                // childAspectRatio: 1.5
              ),
              itemCount: color.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Center(child: Text("${color[index]["names"]}")),
                    height: 150,
                    width: 150,
                    color: color[index]["color"],
                  ),
                );
              },
            ),
          ),
        ],
      )

    );
  }
}
