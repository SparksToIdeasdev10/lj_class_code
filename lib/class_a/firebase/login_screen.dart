import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj1/class_a/firebase/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: controller.loginKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if(value == "" || value == null){
                return "Please fill Details";
                }

                if (!GetUtils.isEmail(value)) {
                  return 'Please enter a valid email';
                }

                return "";
              },
            ),

            ElevatedButton(onPressed: (){
              controller.loginKey.currentState!.validate();
              controller.LoginCont(controller.email.text, controller.password.text);
            },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
