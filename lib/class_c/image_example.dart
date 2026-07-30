import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Example"),
        leading: CircleAvatar(
          radius: 10,
          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-rTdT2WX-YerT0ldO_FyTb_NKUhhniDuZrrD5FNJlHA&s=10"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-rTdT2WX-YerT0ldO_FyTb_NKUhhniDuZrrD5FNJlHA&s=10"),
            ),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-rTdT2WX-YerT0ldO_FyTb_NKUhhniDuZrrD5FNJlHA&s=10",
            width: 200,
              fit: BoxFit.cover,
            ),
            Image.asset("assets/images/1000062505.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
