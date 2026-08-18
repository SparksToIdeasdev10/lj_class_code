import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  GridViewExample({super.key});

  List color = [
    Colors.red,
    Colors.blueAccent,
    Colors.orange,
    Colors.green,
    Colors.purple,
    Colors.black,
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
                crossAxisSpacing: 10,
                // childAspectRatio: 1.7
              ),
              itemCount: color.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: color[index],
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
