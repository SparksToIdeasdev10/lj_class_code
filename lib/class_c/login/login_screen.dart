import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj1/class_b/login/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          TextField(
            controller: controller.name,
          )
        ],
      ),

    );
  }
}
