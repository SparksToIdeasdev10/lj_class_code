import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lj1/class_d/news/news_controller.dart';
import 'package:lj1/class_d/news/news_detail.dart';

class NewsScreen extends StatefulWidget {
  NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final NewsController controller = Get.put(NewsController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.NewsCont();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.isLoading.value
          ? Center(child: CircularProgressIndicator())
          : controller.NewsData.isEmpty
          ? Center(child: Text("No Data Found"),)
          : RefreshIndicator(
            color: Colors.red,
            backgroundColor: Colors.blue,
            onRefresh: ()async{
              controller.NewsCont();
            },
            child: ListView.builder(
               itemCount: controller.NewsData.length,
               itemBuilder: (context,index){
                 final data = controller.NewsData[index];
             return InkWell(
               onTap: (){
                 Get.to(NewsDetail(
                     image: data.image.toString(),
                     title: data.title.toString(),
                     // content: data.content.toString(),
                     // publishedAt: data.publishedAt.toString()
                 )
                 );
               },
               child: ListTile(
                 leading: Image.network(data.image.toString()),
                 title: Text(data.title.toString()),
                 subtitle: Text(data.description.toString()),
            ),
             );
        },
      ),
          )
      ),
    );
  }
}
