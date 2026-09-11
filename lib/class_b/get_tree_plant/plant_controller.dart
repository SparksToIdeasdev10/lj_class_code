import 'package:get/get.dart';
import 'package:lj/class_b/api_services/api_services.dart';

class PlantController extends GetxController{

  Future<void> treePlantCont()async{

    final respo = await ApiServices().treePlant();

    if(respo.responseCode.toString() == "1"){

    }else{

    }
  }
}