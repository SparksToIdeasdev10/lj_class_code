import 'package:flutter/material.dart';

class ColumnRowTask extends StatelessWidget {
  const ColumnRowTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //block 1
          Row(
            children: [
              //part 1
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: 50,
                  color: Colors.red,
                ),
              ),

              //part 2
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 150,
                      color: Colors.blue,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 150,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),

              //part 3
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                ],
              ),

              //part 4
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: 50,
                  color: Colors.green,
                ),
              ),

            ],
          ),

          //block 2
          Column(
            children: [

            ],
          ),

          //block 3
          Row(
            children: [
              //part 1
              Column(
                children: [

                ],
              ),

            ],
          )

        ],
      ),
    );
  }
}
