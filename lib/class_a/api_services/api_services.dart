import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:lj1/class_a/login/login_model.dart';
import 'package:lj1/class_a/news/news_model.dart';
import 'package:lj1/class_a/tree_plant/tree_model.dart';

class ApiServices{
  Dio dio = Dio();
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

  Future<tree> Tree() async{
    try{
      final respo = await dio.get(
        "https://www.anniecabs.com/LJ/index.php/api/get_tree_plant",);
      if(respo.statusCode == 200){
        final user_value = tree.fromJson(respo.data);
        return user_value;
      }else{
        throw Exception("Error!!!!");
      }
    }catch(e){
      print(e);
      throw Exception("$e");
    }
  }

  Future<news> News()async{
    try{
      final respo = await dio.get("https://gnews.io/api/v4/search?q=example&lang=en&country=us&max=10&apikey=b9c7382436b811f3b66d2091f54e9f5a",
        // queryParameters: {
        // "q":"example",
        // }
      );

      if(respo.statusCode == 200){
        final value = news.fromJson(respo.data);
        return value;
      }else{
        throw Exception("Error!!");
      }

    }catch(e){
      print("error: $e");
      throw Exception("Error!!");
    }
  }

}
