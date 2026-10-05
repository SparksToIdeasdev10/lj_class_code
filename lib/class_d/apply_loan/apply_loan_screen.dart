import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj1/class_d/insta_login.dart';
import 'package:lj1/class_d/utils/custom_button.dart';

class ApplyLoanScreen extends StatelessWidget {
  const ApplyLoanScreen({super.key});

  Widget CustomField(){
    return TextField(

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Apply for a Loan"),
          CustomButton(text: "Apply",
              onTap: (){
            Get.to(InstaLogin());
          }
          ),
          CustomField()
        ],
      ),
    );
  }
}
