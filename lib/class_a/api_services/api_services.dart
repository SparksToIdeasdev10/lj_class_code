import 'package:http/http.dart' as http;
import 'package:lj1/class_a/login/login_model.dart';

class ApiServices{

  Future <login> Login() async{

    try{
      final respo = await http.post(Uri.parse("https://www.anniecabs.com/LJ/index.php/api/login"));
      if(respo.statusCode == 200 || respo.statusCode == 201){
        final user_value = login.fromJson(respo.body as Map<String, dynamic>);
        return user_value;
      }else{
        throw Exception("Error!!!");
      }
    }catch(e){
      print(e);
      throw Exception("Error!!!");
    }
  }
}
