import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:lj/class_b/get_tree_plant/plant_model.dart';
import 'package:lj/class_c/login/login_model.dart';

class ApiServices{

  Dio dio = Dio();


  Future<login> Login(String email,String password)
  async{

    try {
      final respo = await http.post(
          Uri.parse("https://www.anniecabs.com/LJ/index.php/api/login"),
          body: {
            "Email":email,
            "Password":password,
          }
      );
      print(respo);

      if (respo.statusCode == 200 || respo.statusCode == 201) {
        final jsonData = jsonDecode(respo.body);
        final user_value = login.fromJson(jsonData);
        return user_value;
      } else {
        throw Exception("Error!!!!");
      }
    }catch(e){
      print(e.toString());
      throw Exception("Error!!!!");
    }
  }

  Future<plant> treePlant()async{
    try{
      final respo = await dio.get("https://www.anniecabs.com/LJ/index.php/api/get_tree_plant");
      if(respo.statusCode == 200){
        final user_value = plant.fromJson(respo.data);
        return user_value;
      }else{
        throw Exception("Error!!!!");
      }
    }catch(e){
      print(e);
      throw Exception("Error!!!!");
    }
  }
}