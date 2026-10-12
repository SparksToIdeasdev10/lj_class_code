import 'package:flutter/material.dart';
import 'package:lj/class_a/utils/custom_button.dart';

class ApplyLoan extends StatelessWidget {
  const ApplyLoan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Apply for a Loan",style: TextStyle(
            color: Color(0xfff66c2b)
          ),
          ),
          CustomButton(text: "Apply")
        ],
      ),
    );
  }
}
