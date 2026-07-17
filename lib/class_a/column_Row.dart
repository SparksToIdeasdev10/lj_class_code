import 'package:flutter/material.dart';

class CloumnRow extends StatelessWidget {
  const CloumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(60)
                ),
                child: Text(""),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(60)
                ),
                child: Text(""),
              ),
            ],
          ),

          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(60)
                ),
                child: Text(""),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(60)
            ),
            child: Text(""),
          ),
        ],
      ),

    );
  }
}
