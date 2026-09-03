import 'package:flutter/material.dart';
import 'package:lj/class_d/buttons_example.dart';

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
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) => ButtonsExample()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("../assets/images/105127.png")
        ],
      ),
    );
  }
}
