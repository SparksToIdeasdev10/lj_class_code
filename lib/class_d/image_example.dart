import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("../assets/images/1000062505.jpg"),
            ),

            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2IiWjNx1CKFbmT7kjQOdxvrdmIuVz_MobdUsmYVqzMg&s=10",
            // height: 200,
            ),
            Image.asset("../assets/images/1000062505.jpg",
              height: 200,
              width: 400,
              fit: BoxFit.fill,
            )

          ],
        ),
      ),
    );
  }
}
