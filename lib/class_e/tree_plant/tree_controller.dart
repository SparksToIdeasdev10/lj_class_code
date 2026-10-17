import 'package:get/get.dart';
import 'package:lj1/class_e/api_services/api_services.dart';
import 'package:lj1/class_e/tree_plant/tree_model.dart';

class TreeController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    TreeCont();
  }

  RxBool isLoading = false.obs;
  RxList<TreePlant> TreeData = <TreePlant>[].obs;

  Future<void> TreeCont() async{
    try{
      isLoading.value = true;
      final respo = await apiServices().Tree();

      // if(respo.treePlant != null || respo.treePlant != []){
      if(respo.responseCode.toString() == "1"){
        TreeData.value = respo.treePlant ?? [];
        isLoading.value = false;
      }else{
        Get.snackbar("Error!!", "PLease try again");
        isLoading.value = false;
      }
    }catch(e){
      print(e);
      isLoading.value = false;
      Get.snackbar("Error!!", "$e");
    }finally{
      isLoading.value = false;
    }
  }
}