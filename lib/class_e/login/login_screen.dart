import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj1/class_e/login/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: controller.email,
                // obscureText: true,
                // maxLines: 3,
                style: TextStyle(
                  color: Colors.red,

                ),
                decoration: InputDecoration(
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.person),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width:300,
              child: TextField(
                controller: controller.password,
                maxLength: 10,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    color: Colors.blueAccent
                ),
                // maxLines: 4,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    fillColor: Colors.transparent,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    label: Text("Password")
                ),
              ),
            ),
          ),

          ElevatedButton(
              onPressed: (){
                controller.LoginCont(); 
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
