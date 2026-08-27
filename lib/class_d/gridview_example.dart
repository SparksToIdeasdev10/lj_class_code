import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            color: Colors.blue,
            elevation: 6.0,
            shadowColor: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("XYZ"),
                  Text("XYZ"),
                ],
              ),
            ),
          ),


          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  // childAspectRatio: 1.4,
                  // mainAxisSpacing: 10,
                  // crossAxisSpacing: 20
                ),
              itemCount: 7,
              itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                  );
              },
            ),
          ),
        ],
      ),
    );
  }
}
