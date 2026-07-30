import 'package:flutter/material.dart';

class CloumnRow extends StatelessWidget {
  const CloumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          //block 1
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      // borderRadius: BorderRadius.circular(60)
                  ),
                  child: Text(""),
                ),
              ),

              //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(60)
                      ),
                      child: Text(""),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(60)
                      ),
                      child: Text(""),
                    ),
                  ],
                ),
              ),

            ],
          ),

          //block 2




        ],
      ),

    );
  }
}
