import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  TextEditingController name = TextEditingController();

  var selectedValue = "Apple";
  var selectedValueRadio = "Male";
  var checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SizedBox(
            width: 150,
            child: TextField(
              controller: name,
            ),
          ),

          //snack Bar
          ElevatedButton(
              onPressed: (){
                if(name.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 1),
                          content: Text("Please Fill all Details")
                      )
                  );
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          backgroundColor: Colors.green,
                          duration: Duration(seconds: 3),
                          content: Text("Logged in Successfully")
                      )
                  );
                }
              },
              child: Text("Snack Bar")
          ),

          //alert dialog
          ElevatedButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Delete!!!"),
                        content: Text("Do You Really want to Delete Your Account?"),
                        actions: [
                          TextButton(
                            onPressed: (){},
                            child: Text("Yes"),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text("No"),
                          ),
                        ],
                      );
                    }
                );
              },
              child: Text("Alert Dialog")
          ),


          //drop-down button
          DropdownButton(
            value: selectedValue,
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
              onChanged: (value){
              setState(() {
                selectedValue = value!;
              });
              },
          ),

          //radio button
          RadioListTile(
            title: Text("Male"),
              value: "Male",
              groupValue: selectedValueRadio,
              onChanged: (value){
              setState(() {
                selectedValueRadio = value!;
              });
              }
          ),

          RadioListTile(
              title: Text("Female"),
              value: "Female",
              groupValue: selectedValueRadio,
              onChanged: (value){
                setState(() {
                  selectedValueRadio = value!;
                });
              }
          ),

          //check Box
          Row(
            children: [
              Checkbox(
                  value: checkBoxValue,
                  onChanged: (value){
                    setState(() {
                      checkBoxValue = value!;
                    });
                  }
              ),
              Text("Terms & Condition")
            ],
          ),

        ],
      ),
    );
  }
}
