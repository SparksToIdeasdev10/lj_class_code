import 'package:flutter/material.dart';
import 'package:lj/class_b/utils/custom_button.dart';

class ApplyLoanScreen extends StatelessWidget {
  const ApplyLoanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Apply for a Loan"),
          CustomButton(text: "Apply",)
        ],
      ),
    );
  }
}
