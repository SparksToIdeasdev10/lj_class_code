import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lj/class_a/login/login_model.dart';

class ApiServices{

  Future<login> Login() async{

    try {
      final respo = await http.post(
          Uri.parse("https://www.anniecabs.com/LJ/index.php/api/login"));
      print(respo);

      if (respo.statusCode == 200 || respo.statusCode == 201) {
        final Map<String, dynamic> jsonData = jsonDecode(respo.body);

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



}