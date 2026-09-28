import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj1/class_a/api_services/api_services.dart';
import 'package:lj1/class_a/tree_plant/tree_model.dart';

class TreeController extends GetxController{

  ApiServices api = ApiServices();
  RxList<TreePlant> treeDataList = <TreePlant>[].obs;
  RxBool isLoading = false.obs;

  Future<void> TreeCont()async{
    isLoading.value = true;

    final respo = await api.Tree();

    if(respo.responseCode.toString() == "1"){

      treeDataList.value = respo.treePlant ?? [];
      isLoading.value = false;

    }else{
      isLoading.value = false;
      Get.snackbar("Error", respo.message.toString(),
        backgroundColor: Colors.red
      );
    }
  }
}