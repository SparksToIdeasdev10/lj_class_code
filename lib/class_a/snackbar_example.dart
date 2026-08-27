import 'package:flutter/material.dart';
import 'package:lj/class_a/api_services/api_services.dart';

class SnackBarExample extends StatefulWidget {
  SnackBarExample({super.key});

  @override
  State<SnackBarExample> createState() => _SnackBarExampleState();
}

class _SnackBarExampleState extends State<SnackBarExample> {
  TextEditingController name = TextEditingController();

  TextEditingController password = TextEditingController();

  String selectedValue = "English";
  String selectedValueRadio = "Male";
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // Padding(
          //   padding: const EdgeInsets.all(28.0),
          //   child: TextField(
          //     controller: name,
          //   ),
          // ),

          //DropDown Button
          DropdownButton(
              items: [
                DropdownMenuItem(
                    child: Text("English"),
                  value: "English",
                ),
                DropdownMenuItem(
                  child: Text("Hindi"),
                  value: "Hindi",
                ),
                DropdownMenuItem(
                  child: Text("Gujarati"),
                  value: "Gujarati",
                ),
              ],
              value: selectedValue,
              onChanged: (Value){
                print(Value);
                setState(() {
                  selectedValue = Value!;
                });
              }
          ),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(
              onTap: (){

                ApiServices().Login();
              },
              child: Container(
                height: 40,
                width: double.infinity,
                color: Colors.blue,
                child:  Center(child: Text("Log In",)),
              ),
            ),
          ),

          Center(child: Text("Instagram",)),
          ElevatedButton(
              onPressed: (){
                if(name.text.isEmpty || password.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 2),
                        content: Text("Incorrect Username")
                    ),
                  );
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        backgroundColor: Colors.green,
                        duration: Duration(seconds: 2),
                        content: Text("username: ${name.text}")
                    ),
                  );
                }
              },
              child: Text("SnackBar Button")
          ),

          ElevatedButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(

                        title: Text("Delete!!!!!!!!"),
                        content: Text("Do You Really Want to Delete This Account?"),
                        actions: [
                          TextButton(onPressed: (){

                            },
                              child: Text("Yes")),
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                            },
                              child: Text("No")),
                        ],
                      );
                    }
                );
              },
              child: Text("Alert Dialog")
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

          //checkBox
          Row(
            children: [
              Checkbox(
                  value: checkBox,
                  onChanged: (value){
                    setState(() {
                      checkBox = value!;
                    });
                  }
              ),
              Text("Terms & Condition")
            ],
          )

        ],
      ),
    );
  }
}
