import 'package:flutter/material.dart';
import 'package:lj/class_d/gridview_example.dart';

class ButtonsExample extends StatefulWidget {
  ButtonsExample({super.key});

  @override
  State<ButtonsExample> createState() => _ButtonsExampleState();
}

class _ButtonsExampleState extends State<ButtonsExample> {
  TextEditingController name = TextEditingController();

  String selectedvalue = "Apple";
  String selectedvalueRadio = "Male";
  bool checkBox = false;

  List dropdownList = [
    "Apple",
    "Mango",
    "Banana",
    "Kiwi"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          ElevatedButton(
              onPressed: (){

                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => GridViewExample()));

                // Navigator.push(context,
                //     MaterialPageRoute(
                //         builder: (context) => GridViewExample() ));
              },
              child: Text("Next Page")
          ),

          SizedBox(
            width: 150,
            child: TextField(
              controller: name,
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: (){

                    print(checkBox);

                    if(name.text.length == 10){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              showCloseIcon: true,
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.red,
                              content: Text("Please Fill All Details")
                          )
                      );
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              showCloseIcon: true,
                              duration: Duration(seconds: 4),
                              backgroundColor: Colors.green,
                              content: Text("Sucessfully Logged in")
                          )
                      );
                    }
                  },
                  child: Text("SnackBar")
              ),
            ),
          ),

          //drop-down button
          DropdownButton(
            value: selectedvalue,
              items: dropdownList.map(
               (e) => DropdownMenuItem(
                 child: Text(e),
                 value: e.toString(),)
              ).toList(),
              // [
              //   DropdownMenuItem(
              //       child: Text("Apple"),
              //     value: "Apple",
              //   ),
              //   DropdownMenuItem(
              //       child: Text("Mango"),
              //     value: "Mango",
              //   ),
              // ],
              onChanged: (value){
              setState(() {
                selectedvalue = value!;
              });
              }
          ),

          //Radio button
          RadioListTile(
            title: Text("Male"),
              value: "Male",
              groupValue: selectedvalueRadio,
              onChanged: (value){
                setState(() {
                  selectedvalueRadio = value!;
                });
              }
          ),

          RadioListTile(
              title: Text("Female"),
              value: "Female",
              groupValue: selectedvalueRadio,
              onChanged: (value){
                setState(() {
                  selectedvalueRadio = value!;
                });
              }
          ),
          RadioListTile(
              title: Text("Other"),
              value: "Other",
              groupValue: selectedvalueRadio,
              onChanged: (value){
                setState(() {
                  selectedvalueRadio = value!;
                });
              }
          ),

          //CheckBox
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
              Text("Terms & Condition"),
            ],
          ),

        ],
      ),
    );
  }
}
