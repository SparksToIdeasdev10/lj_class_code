import 'package:flutter/material.dart';

class NewsDetail extends StatelessWidget {
  final String image;
  final String title;

  const NewsDetail({super.key,
    required this.image,
    required this.title,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(image),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),

          // Text(content),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(publishedAt),
          // ),
        ],
      ),
    );
  }
}
