import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset("../assets/images/1000062505.jpg",
              height: 200,
              ),
              Positioned(
                bottom: -40,
                right: 40,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child:Column(
                    children: [
                      TextField(),
                      TextField(),
                    ],
                  ),
                )
                // CircleAvatar(
                //   radius: 40,
                //   backgroundColor: Colors.red,
                // ),
              ),
              Positioned(
                  bottom: -80,
                  right: 50,
                  child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
