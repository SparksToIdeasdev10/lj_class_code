import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj1/class_d/tree_plant/tree_controller.dart';

class TreeScreen extends StatefulWidget {
  TreeScreen({super.key});

  @override
  State<TreeScreen> createState() => _TreeScreenState();
}

class _TreeScreenState extends State<TreeScreen> {
  final TreeController controller = Get.put(TreeController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.TreeCont();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Obx(() => controller.isLoading.value
          ? Center(child: CircularProgressIndicator(),)
          :controller.treeDataList.isEmpty
          ?Center(child: Text("No Data Found"))
          :ListView.builder(
          itemCount: controller.treeDataList.length,
          itemBuilder: (context,index){
            final data = controller.treeDataList[index];
            return ListTile(
              leading: Image.network(data.image.toString()),
              title: Text(data.name.toString()),
              subtitle: Text(data.description.toString()),
            );
          }
      )
      )


    );
  }
}
