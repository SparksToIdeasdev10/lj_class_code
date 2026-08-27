
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:lj/class_a/api_services/api_services.dart';

class loginController extends GetxController{

  Future<void> LoginCont() async{

    final respo = await ApiServices().Login();

    if(respo.responseCode.toString() == "1"){
      Get.snackbar(
          "title",
          "response"
      );
    }else{
      Get.snackbar(
          "title",
          "response"
      );
    }

  }



}