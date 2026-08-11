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
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-rTdT2WX-YerT0ldO_FyTb_NKUhhniDuZrrD5FNJlHA&s=10",
                width: 200,
              ),

              Positioned(
                bottom: -60,
                right: 10,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                ),
              ),
              Positioned(
                bottom: -120,
                right: 30,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
