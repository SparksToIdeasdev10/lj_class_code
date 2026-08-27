import 'package:flutter/material.dart';
import 'package:lj/class_c/snackbar_navigation.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SnackBarExample()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("../assets/images/1000062505.jpg")
        ],
      ),
    );
  }
}
