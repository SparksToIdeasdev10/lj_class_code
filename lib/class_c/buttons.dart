import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  String selectedItem = "Apple";
  String selectedRadioItem = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          //drop-down
          Center(
            child: DropdownButton(
              value: selectedItem,
              onChanged: (value){
                setState(() {
                  print(value);
                  selectedItem = value!;
                });
              },
                items: [
                  DropdownMenuItem(
                      child: Text("Apple"),
                    value: "Apple",
                  ),
                  DropdownMenuItem(
                    child: Text("Mango"),
                    value: "Mango",
                  ),
                ],
            ),
          ),

          //radio button
          RadioListTile(
            title: Text("Male"),
              value: "Male",
              groupValue: selectedRadioItem,
              onChanged: (value){
              setState(() {
                selectedRadioItem = value!;
              });
              }
          ),

          RadioListTile(
              title: Text("Female"),
              value: "Female",
              groupValue: selectedRadioItem,
              onChanged: (value){
                setState(() {
                  selectedRadioItem = value!;
                });
              }
          ),


        ],
      ),
    );
  }
}
