import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  final FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool isLoading = false.obs;

  final loginKey = GlobalKey<FormState>();

  Future<void> LoginCont(String email,String password)async{
    try {
      isLoading.value = true;
      await auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );

      // await auth.createUserWithEmailAndPassword(
      //     email: email, password: password
      // );

      Get.snackbar("Success",
          "Login Successfully",
          backgroundColor: Colors.green);

    } on FirebaseAuthException catch(e){
      String message;

      if(e.code == 'invalid-email'){
        message = 'Please enter a valid email address.';
      }else if(e.code == 'wrong-password'){
        message = 'Incorrect password.';
      }else{
        message = 'Login failed.';
      }

      Get.snackbar("Error!!!", message);

    }catch(e){
      Get.snackbar("Error!!!",
          "Login Failed",
          backgroundColor: Colors.red);
    } finally{
      isLoading.value = false;
    }
  }

}