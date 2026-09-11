import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lj/class_d/api_services/api_services.dart';

class LoginController extends GetxController{
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  ApiServices api = ApiServices();

  Future<void> LoginCont()async{

    final respo = await api.Login(email.text, password.text);

    if(respo.responseCode.toString() == "1"){

    }else{

    }
  }

}