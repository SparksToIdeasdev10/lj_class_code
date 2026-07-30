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
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj52IoidB3ghopPH5raotIgz1Hm7kMPji6V95YnW9i1A&s=10",
              height: 300,
                fit: BoxFit.fill,
              ),

              Positioned(
                bottom: -30,
                right: 120,
                child: CircleAvatar(
                  radius: 40,
                  child: Icon(Icons.arrow_right_alt),
                  backgroundColor: Colors.red,
                ),
              ),

            ],
          ),

        ],
      ),

    );
  }
}
