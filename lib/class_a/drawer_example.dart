import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget {
  DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  double sliderValue = 50;
  bool switchValue = false;

  DateTime Date = DateTime.now();

  void SelectDate()async{
    final date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
    );
    setState(() {
      Date = date!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Test"),
                accountEmail: Text("Test@gmail.com"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Friends"),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //Slider
          Slider(
              value: sliderValue,
              // divisions: 3,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
          ),

          //Switch
          Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
          ),

          //Date Picker
          ElevatedButton(
              onPressed: (){
                SelectDate();
              },
              child: Text("Date")
          ),

          Text(Date.toString())
        ],
      ),
    );
  }
}
