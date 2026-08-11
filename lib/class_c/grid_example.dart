import 'package:flutter/material.dart';

class GridExample extends StatelessWidget {
  GridExample({super.key});

  List dataIcon = [Icons.people,Icons.task,
    Icons.calendar_month_outlined];
  List dataText = ["    Employe \nManagement",
    "Task \nManagement","Attendance \nManagement"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        child: Icon(Icons.admin_panel_settings_outlined),
                      ),
                      Column(
                        children: [
                          Text("Super Admin",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Text("admin@example.com",style: TextStyle(
                              fontSize: 12,
                          ),
                          ),
                        ],
                      ),
                      Icon(Icons.lock_reset_rounded)
                    ],
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: dataIcon.length,
                itemBuilder: (context,index){
                  return Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(dataIcon[index],size: 36,color: Colors.blue,),
                        Text("${dataText[index]}"),
                      ],
                    ),
                  );
                }
            ),
          ),
        ],
      ),
      // body: GridView.builder(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 2,
      //       childAspectRatio: 1.5,
      //       mainAxisSpacing: 10,
      //       crossAxisSpacing: 20,
      //     ),
      //   itemCount: 5,
      //   itemBuilder: (context,index){
      //       return Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.red,
      //         ),
      //       );
      //   },
      // ),
    );
  }
}
