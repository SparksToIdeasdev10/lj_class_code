import 'package:flutter/material.dart';
import 'package:lj1/class_c/utils/custom_button.dart';

class ApplyLoanScreen extends StatelessWidget {
  const ApplyLoanScreen({super.key});

  Widget CustomTextField(){
    return Column(
      children: [
        Text(""),
        TextField(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Apply for a Loan"),
            ),
          ),
          CustomButton(text: "Apply",event: (){print("1");},),
          CustomTextField()
        ],
      ),
    );
  }
}
