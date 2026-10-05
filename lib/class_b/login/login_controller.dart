import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lj1/class_b/api_services/api_services.dart';
import 'package:lj1/class_b/gridview_example.dart';

class LoginController extends GetxController{
  ApiServices api = ApiServices();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> LoginCont()async{

    final respo = await ApiServices().Login();

    if(respo.responseCode.toString() == "1"){
      Get.snackbar("Success", respo.message.toString());

      Get.to(GridViewExample());
    }else{
      Get.snackbar("Error!!", respo.message.toString());
    }
  }
}