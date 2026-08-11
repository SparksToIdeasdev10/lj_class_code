import 'package:flutter/material.dart';

import 'gridview_example.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 // @override
 //  void initState() {
 //    // TODO: implement initState
 //    super.initState();
 //
 //    Future.delayed(Duration(seconds: 3),(){
 //      Navigator.push(context,
 //          MaterialPageRoute(
 //              builder: (context) => GridViewExample()));
 //    });
 //
 //  }

  List iconText = [
    {"icon":Icons.translate,"text":"Application Language"},
    {"icon":Icons.password_sharp,"text":"Change Password"},
    {"icon":Icons.translate,"text":"Application Language"},
    {"icon":Icons.translate,"text":"Application Language"},
    {"icon":Icons.translate,"text":"Application Language"},
    {"icon":Icons.translate,"text":"Application Language"},
    {"icon":Icons.translate,"text":"Application Language"},
    {"icon":Icons.translate,"text":"Application Language"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back),
      ),

    body: ListView.builder(
      itemCount: iconText.length,
        itemBuilder: (context,index) {
          return Column(
            children: [
              ListTile(
                leading: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(iconText[index]["icon"],
                        color: Colors.white),
                  ),
                ),
                title: Text(iconText[index]["text"]),
                trailing: Icon(Icons.chevron_right),
              ),
              index == iconText.length-1
              ?SizedBox()
              :Divider(),
            ],
          );

        }

    )

    // Column(
    //   children: [
    //
    //
    //
    //     // Image.asset("../assets/images/1000062505.jpg",
    //     // height: 100,
    //     // )
    //
    //     // ElevatedButton(
    //     //     onPressed: (){
    //     //   Navigator.push(context,
    //     //       MaterialPageRoute(
    //     //           builder: (context) => GridViewExample()));
    //     // },
    //     //     child: Text("Next Page"),
    //     // )
    //   ],
    // ),
    );
  }
}
