import 'package:flutter/material.dart';

class WhatsAppUI extends StatelessWidget {
  WhatsAppUI({super.key});

  List names = [
    {"name":"names","message":"Messages"},
    {"name":"jane Whitman","message":"Messages"},
    {"name":"names","message":"Messages"},
    {"name":"names","message":"Messages"},
    {"name":"names","message":"Messages"},
    {"name":"names","message":"Messages"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("WhatsApp",style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera_alt_outlined,color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert_sharp),
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: names.length,
          itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(

              ),
              title: Text(names[index]["name"]),
              subtitle: Text(names[index]["message"]),
              trailing: Column(
                children: [
                  Text("12:20 pm"),
                  Icon(Icons.pin_drop_rounded)
                ],
              ),
            );
          }
      ),

    );
  }
}
