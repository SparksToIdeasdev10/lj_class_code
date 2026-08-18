

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          //block 1
          Row(
            children: [

              //block 1-1
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: 150,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                  ),
                ),
              ),

              //block 1-2

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),

              //block 1-3
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                        borderRadius: BorderRadius.circular(100)

                    ),
                  ),
                ],
              ),

              //block 1-4
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: 150,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                ),
              ),

            ],
          ),

          //block 2
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
              ),
            ],
          ),

          //block 3


        ],
      )

    );
  }
}
