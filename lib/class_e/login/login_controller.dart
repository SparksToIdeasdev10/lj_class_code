import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj1/class_e/api_services/api_services.dart';
import 'package:lj1/class_e/gridview_example.dart';

class LoginController extends GetxController{

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

Future<void> LoginCont() async{
  try{
    final respo = await apiServices().Login(email.text,password.text);
    if(respo.responseCode == "1"){
      Get.snackbar("Success", "Login Successfully",backgroundColor: Colors.green);
      Get.to(GridViewExample());
    }else{
      Get.snackbar("Error", "Invalid Email or Password",backgroundColor: Colors.red);
    }
  }catch(e){
    Get.snackbar("Error", "$e",backgroundColor: Colors.red);
  }
}
}