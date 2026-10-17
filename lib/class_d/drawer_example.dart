import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget {
  DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  List data = [
    {"icon":Icons.person,"text":"Friends"},
    {"icon":Icons.person,"text":"Friends"},
    {"icon":Icons.person,"text":"Friends"},
  ];

  double sliderValue = 12;
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(""),
              ),
                accountName: Text("Name"),
                accountEmail: Text("Name.gmail.com"),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: data.length,
                itemBuilder: (context,index){
                  return ListTile(
                    leading: Icon(data[index]["icon"]),
                    title: Text(data[index]["text"]),
                  );
                })
          ],
        ),
      ),
      body: Column(
        children: [
          Slider(
            // divisions: 4,
              min: 0,
              max: 100,
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
          ),

          Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
          )
        ],
      ),
    );
  }
}
