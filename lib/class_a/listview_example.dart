
import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  ListViewExample({super.key});

  List color = [Colors.blue,Colors.red,Colors.purple,Colors.green,Colors.orange];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: color.length,
          itemBuilder: (context,index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                color: color[index],
                child: Text("$index"),
              ),
            ),
          );
        }
      )
    );
  }
}

