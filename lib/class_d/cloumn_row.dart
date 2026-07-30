
import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
               height: 100,
               width: 100,
               decoration: BoxDecoration(
                   color: Colors.red,
                ),
               // child: Text("luyc"),
             ),
          ),
          Container(
             height: 100,
             width: 100,
             decoration: BoxDecoration(
                 color: Colors.red,
             ),
             // child: Text("luyc"),
           ),
        ],
      ),

    );
  }
}
