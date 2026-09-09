import 'package:flutter/material.dart';

class InstaLogin extends StatelessWidget {
  const InstaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Instagram",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            
          ),
          ),
        ],
      ),
    );
  }
}

