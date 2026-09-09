import 'package:flutter/material.dart';
import 'package:lj1/class_e/admin_screen.dart';

import 'insta_login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) => InstaLogin())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Center(
            child: Image.asset(
                "../assets/images/Screenshot.png",
              height: double.infinity,
              // width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // ElevatedButton(
          //     onPressed: (){
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => AdminScreen())
          //       );
          //     },
          //     child: Text("Next Page"))

    );
  }
}
