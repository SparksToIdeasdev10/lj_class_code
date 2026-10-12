import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  final FirebaseAuth auth = FirebaseAuth.instance;
  final isLoading = false.obs;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool obscureText = true;
  final formKey = GlobalKey<FormState>();

  Future<void> LoginCont()async{
    try {
      isLoading.value = true;
      await auth.signInWithEmailAndPassword(
          email: email.text,
          password: password.text
      );

      Get.snackbar("Success", "Login Successfully",
        backgroundColor: Colors.green
      );
    }on FirebaseAuthException catch(e){
      String message;

      if(e.code == "invalid-email"){
        message = "Email is wrong";
      }else if(e.code == "wrong-password"){
        message = "Password is wrong";
      }else{
        message = "Login Failed";
      }

      Get.snackbar("Error!!", message,
          backgroundColor: Colors.red);

    }catch (e){
      Get.snackbar("Error", "Login Failed",
          backgroundColor: Colors.red);
    }finally{
      isLoading.value = false;
    }
  }
}