
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj/class_c/bottom_nav_example.dart';
import 'package:lj/class_c/api_services/api_services.dart';

class LoginController extends GetxController{

  ApiServices api = ApiServices();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> LoginCont()async{
    try{
      final respo = await api.Login(email.text, password.text);

      if (respo.responseCode.toString() == "1") {
        Get.snackbar(
            "Success", "",
          backgroundColor: Colors.green
        );

        Get.to(BottomNavExample());
      } else {
        Get.snackbar(
            "Error", "",
            backgroundColor: Colors.red

        );
      }
    }catch(e){
      print(e);
    }
  }

}