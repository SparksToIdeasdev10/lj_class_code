import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  ListViewExample({super.key});

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
      body: ListView.builder(
        // scrollDirection: Axis.horizontal,
        // physics: BouncingScrollPhysics(),
        itemCount: color.length,
          itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(),
              title: Text("Name"),
              subtitle: Text("Messages"),
            );

            //   Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Container(
            //       height: 150,
            //       width: 150,
            //       child: Text("$index"),
            //       decoration: BoxDecoration(
            //         color: color[index],
            //       ),
            //     ),
            //   ),
            // );
          }
      )
    );
  }
}
