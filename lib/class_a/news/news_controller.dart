import 'package:get/get.dart';
import 'package:lj1/class_a/api_services/api_services.dart';
import 'package:lj1/class_a/news/news_model.dart';

class NewsController extends GetxController{

  RxList<Articles> NewsData = <Articles>[].obs;
  RxBool isLoading = false.obs;

  Future<void> NewsCont() async{
    isLoading.value = true;

    final respo = await ApiServices().News();

    if(respo.articles != [] || respo.articles != null){
      isLoading.value = false;
      NewsData.value = respo.articles ?? [];
    }else{
      Get.snackbar("Error", "");
      isLoading.value = false;
    }
  }

}