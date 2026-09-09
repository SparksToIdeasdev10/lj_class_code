import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Dashboard",style: TextStyle(
          color: Colors.white
        )),
        backgroundColor: Color(0xff1d2ed3),
      ),

      body: Column(
        children: [
          // Container(),
          // SizedBox(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue.shade100,
                        child: Icon(Icons.admin_panel_settings),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Super Admin",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),),

                          Text("admin@example.com",style: TextStyle(
                              fontSize: 12,
                          ),),
                        ],
                      ),
                      Icon(Icons.lock_reset)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
