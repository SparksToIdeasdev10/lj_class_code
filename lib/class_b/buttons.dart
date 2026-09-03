import 'package:flutter/material.dart';
import 'package:lj/class_b/listview_example.dart';

class Buttons extends StatefulWidget {
  Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  TextEditingController name = TextEditingController();

  String selectedValue = "Apple";
  String selectedValueRadio = "Male";
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: (){

                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => ListViewExample()));
                // Navigator.push(context,
                //     MaterialPageRoute(
                //         builder: (context) => ListViewExample()));
              },
              child: Text("Next Page")
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SizedBox(
                width: 150,
                child: TextField(
                  controller: name,
                ),
              ),
            ),
          ),

          ElevatedButton(
              onPressed: (){

                if(name.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("Please Fill all Details")
                      )
                  );
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          backgroundColor: Colors.green,
                          content: Text("Successfully Logged in")
                      )
                  );
                }

              },
              child: Text("Snackbar")
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
              }
          ),

          //Radio button
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

          //CheckBox
          Checkbox(
              value: checkBox,
              onChanged: (value){
                setState(() {
                  checkBox = value!;
                });
              }
          ),

          ElevatedButton(
              onPressed: (){
              showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text("Delete Entry!!"),
                      content: Text("Do You Want To Delete This Entry??!"),
                      actions: [
                        TextButton(
                          onPressed: (){},
                          child: Text("Yes"),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text("No"),
                        ),
                      ],
                    );
                  }
              );
              },
              child: Text("DialogBox")
          )

        ],
      ),
    );
  }
}
