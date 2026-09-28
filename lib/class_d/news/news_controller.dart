import 'package:get/get.dart';
import 'package:lj1/class_d/api_services/api_services.dart';
import 'package:lj1/class_d/news/news_model.dart';

class NewsController extends GetxController{

  ApiServices api = ApiServices();
  RxList<Articles> NewsData = <Articles>[].obs;
  RxBool isLoading = false.obs;

  Future<void> NewsCont() async{
    isLoading.value = true;

    final respo = await api.News();

    if(respo.articles != [] || respo.articles != null){
      NewsData.value = respo.articles ?? [];
      isLoading.value = false;
    }else{
      Get.snackbar("Error", "Facing Error Please Try again");
      isLoading.value = false;
    }

  }

}