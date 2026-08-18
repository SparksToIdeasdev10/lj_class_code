import 'package:flutter/material.dart';

class WhatsAppUI extends StatelessWidget {
  const WhatsAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        title: Text("WhatsApp",style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.green,
        actions: [
          Icon(Icons.search,color: Colors.white,),
          Icon(Icons.more_vert_sharp,color: Colors.white,),

        ],
      ),
      body: ListView.builder(
          itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
              ),
              title: Text("Name"),
              subtitle: Text("Name"),
              trailing: Text("Name"),
            );
          }
      ),
    );
  }
}
