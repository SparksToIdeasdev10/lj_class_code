import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  ListViewExample({super.key});

  List names = [
    {"name":"xyz","message":"new Message"},
    {"name":"xyz","message":"new Message"},
    {"name":"xyz","message":"new Message"},
    {"name":"xyz","message":"new Message"},
    {"name":"xyz","message":"new Message"},
    {"name":"a","message":"new Message"},
    {"name":"xyz","message":"new Message"},
    {"name":"xyz","message":"new Message"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: names.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(names[index]["name"]),
              subtitle: Text(names[index]["message"]),
              leading: CircleAvatar(),
              trailing: Column(
                children: [
                  Text("12:20 pm"),
                  Icon(Icons.pin_drop)
                ],
              ),
            );

            //   Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Container(
            //       height: 100,
            //       width: 100,
            //       color: color[index],
            //       // index == 1
            //       //     ?Colors.blue
            //       //     :Colors.red,
            //       child: Text("$index"),
            //     ),
            //   ),
            // );
          }
      )
    );
  }
}
