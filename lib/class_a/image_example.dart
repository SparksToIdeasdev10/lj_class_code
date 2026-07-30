import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/images/1000062505.jpg"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(image:AssetImage("assets/images/1000062505.jpg",)    ),
              ),
                child: Center(child: Text("Image")),
              ),
            ),
            CircleAvatar(
              radius: 100,
              child: Text("Image"),
              backgroundImage: AssetImage("assets/images/1000062505.jpg",
              ),

            ),
            Image.asset("assets/images/1000062505.jpg",
            height: 200,
            ),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj52IoidB3ghopPH5raotIgz1Hm7kMPji6V95YnW9i1A&s=10",
              height: 200,
              width: 400,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
