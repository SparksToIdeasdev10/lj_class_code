import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj1/class_d/api_services/api_services.dart';
import 'package:lj1/class_d/tree_plant/tree_model.dart';

class TreeController extends GetxController{

  RxBool isLoading = false.obs;
  RxList<TreePlant> treeDataList = <TreePlant>[].obs;

  Future<void> TreeCont()async{
    isLoading.value = true;
    final respo = await ApiServices().Tree();

    if(respo.responseCode.toString() == "1"){
      treeDataList.value = respo.treePlant ??[];
      isLoading.value = false;
    }else{
      isLoading.value = false;
      Get.snackbar("Error", respo.message.toString());
    }
  }
}