import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() event;
  const CustomButton({super.key, required this.text, required this.event});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: InkWell(
        onTap: event,
        child: Container(
          height: 50,
          width: double.infinity,
         decoration: BoxDecoration(
           color: Colors.blue,
           borderRadius: BorderRadius.circular(10)
         ),
          child: Center(
            child: Text(text,style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ),
        ),
      ),
    );
  }
}
