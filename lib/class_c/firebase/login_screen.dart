import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj/class_c/firebase/login_controller.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              Icon(
                Icons.lock_outline,
                size: 70,
              ),
              SizedBox(height: 20),

              Text(
                'Welcome Back',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 8),

              Text(
                'Login to your account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextFormField(
                  controller: controller.email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Please Enter Email";
                    }
                    if(!GetUtils.isEmail(value)){
                      return "Please Enter a valid Email";
                    }
                    return null;
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextFormField(
                  obscureText: controller.obscureText,
                  controller: controller.password,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          controller.obscureText = !controller.obscureText;
                        });
                      },
                      icon: Icon(
                        controller.obscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
                      )
                    ),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Please Enter Password";
                    }

                    if(value.length < 6){
                      return "Your Password should have at least 6 digits";
                    }

                    return null;
                  },
                ),
              ),

              ElevatedButton(onPressed: (){
                if(controller.formKey.currentState!.validate()){
                  controller.LoginCont();
                }
              },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
