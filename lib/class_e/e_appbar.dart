
import 'package:flutter/material.dart';

class EAppBar extends StatelessWidget {
  const EAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("AppBar",
            style: TextStyle(
          color: Colors.purple,
        ),
        ),
        centerTitle: true,
        leading: Icon(Icons.dashboard_rounded,color: Colors.purple),
        actions: [
          Icon(Icons.notifications_active),
          Icon(Icons.notifications_active),
        ],
      ),

    );
  }
}

