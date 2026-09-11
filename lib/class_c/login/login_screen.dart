import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj/class_c/login/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Login",style: TextStyle(
              color: Colors.cyan,
              fontSize: 30,
            ),
            ),
          ),

          SizedBox(
            width: 300,
            child: TextField(
              controller: controller.email,
              decoration: InputDecoration(
                label: Text("Email",style: TextStyle(
                    color: Colors.white
                ),),
                prefixIcon: Icon(Icons.person,color: Colors.cyan,),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.cyan
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.cyan
                    )
                ),
              ),
            ),
          ),

          SizedBox(
            width: 300,
            child: TextField(
              controller: controller.password,
              decoration: InputDecoration(
                label: Text("Username",style: TextStyle(
                    color: Colors.white
                ),),
                prefixIcon: Icon(Icons.person,color: Colors.cyan,),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.cyan
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.cyan
                    )
                ),
              ),
            ),
          )


        ],
      ),
    );
  }
}
