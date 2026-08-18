import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Dashboard",style: TextStyle(
          color: Colors.white
        )),
        backgroundColor: Color(0xff1d2ed3),
      ),
    );
  }
}
