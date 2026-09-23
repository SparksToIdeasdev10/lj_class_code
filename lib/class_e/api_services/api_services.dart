import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lj1/class_e/login/login_model.dart';

class apiServices{

  Future<login> Login(String email,String password) async{
    try{
      final respo = await http.post(
        Uri.parse("https://www.anniecabs.com/LJ/index.php/api/login"),
        body: {
         "Email": email,
         "Password": password
        }
      );
      if(respo.statusCode == 200 || respo.statusCode == 201){
        final jsonData = jsonDecode(respo.body);
        final user_value = login.fromJson(jsonData);
        return user_value;
      }else{
        throw Exception("Error!!!!");
      }
    }catch(e){
      print("Error $e");
      throw Exception("Error!!!!");
    }
  }

}