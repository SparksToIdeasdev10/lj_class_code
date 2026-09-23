import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart' as http;
import 'package:lj1/class_a/login/login_model.dart';

class ApiServices{

  Future<login> Login() async{
    
    try{

      // final formdata = FormData();
      
      final respo = await http.post(
          Uri.parse("https://www.anniecabs.com/LJ/index.php/api/login"),
        body: {

        }

        // use this if you want to pass Raw Data
        // {
        //     "Email":"",
        //     "Password":"",
        // }
      );

      if(respo.statusCode == 200 || respo.statusCode == 201){

        final jsonData = jsonDecode(respo.body);

        final userValue = login.fromJson(jsonData);

        // final user_value = login.fromJson(respo.body as Map<String, dynamic>);
        return userValue;
      }else{
        throw Exception("Error!!!!");
      }

    }catch(e){
      print(e);
      throw Exception("$e");
    }
    
  }

}
