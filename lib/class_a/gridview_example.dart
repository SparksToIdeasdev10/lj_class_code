import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  GridViewExample({super.key});

List color = [Colors.blue,
  Colors.orange,Colors.red,Colors.green,Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Example"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          ),
          itemCount: color.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                color: color[index],
              ),
            );
          }
      )

      // GridView(
      //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 4,
      //           mainAxisSpacing: 10,
      //             childAspectRatio: 0.7,
      //           crossAxisSpacing: 10,
      //         ),
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Container(
      //             height: 100,
      //             width: 100,
      //             decoration: BoxDecoration(
      //               color: Colors.red,
      //               // borderRadius: BorderRadius.circular(60)
      //             ),
      //             child: Text(""),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Container(
      //             height: 100,
      //             width: 100,
      //             decoration: BoxDecoration(
      //               color: Colors.red,
      //               // borderRadius: BorderRadius.circular(60)
      //             ),
      //             child: Text(""),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Container(
      //             height: 100,
      //             width: 100,
      //             decoration: BoxDecoration(
      //               color: Colors.red,
      //               // borderRadius: BorderRadius.circular(60)
      //             ),
      //             child: Text(""),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Container(
      //             height: 100,
      //             width: 100,
      //             decoration: BoxDecoration(
      //               color: Colors.red,
      //               // borderRadius: BorderRadius.circular(60)
      //             ),
      //             child: Text(""),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Container(
      //             height: 100,
      //             width: 100,
      //             decoration: BoxDecoration(
      //               color: Colors.red,
      //               // borderRadius: BorderRadius.circular(60)
      //             ),
      //             child: Text(""),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Container(
      //             height: 100,
      //             width: 100,
      //             decoration: BoxDecoration(
      //               color: Colors.red,
      //               // borderRadius: BorderRadius.circular(60)
      //             ),
      //             child: Text(""),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Container(
      //             height: 100,
      //             width: 100,
      //             decoration: BoxDecoration(
      //               color: Colors.red,
      //               // borderRadius: BorderRadius.circular(60)
      //             ),
      //             child: Text(""),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Container(
      //             height: 100,
      //             width: 100,
      //             decoration: BoxDecoration(
      //               color: Colors.red,
      //               // borderRadius: BorderRadius.circular(60)
      //             ),
      //             child: Text(""),
      //           ),
      //         ),
      //
      //       ],
      //     )

    );
  }
}
