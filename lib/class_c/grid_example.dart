import 'package:flutter/material.dart';

class GridExample extends StatelessWidget {
  const GridExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      child: Icon(Icons.admin_panel_settings_outlined),
                    ),
                    Column(
                      children: [
                        Text("Super Admin",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Text("admin@example.com",style: TextStyle(
                            fontSize: 12,
                        ),
                        ),
                      ],
                    ),
                    Icon(Icons.lock_reset_rounded)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      // body: GridView.builder(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 2,
      //       childAspectRatio: 1.5,
      //       mainAxisSpacing: 10,
      //       crossAxisSpacing: 20,
      //     ),
      //   itemCount: 5,
      //   itemBuilder: (context,index){
      //       return Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.red,
      //         ),
      //       );
      //   },
      // ),
    );
  }
}
