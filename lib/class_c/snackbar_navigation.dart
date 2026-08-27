import 'package:flutter/material.dart';
import 'package:lj/class_b/login_page.dart';
import 'package:lj/class_c/grid_example.dart';

class SnackBarExample extends StatefulWidget {
  SnackBarExample({super.key});

  @override
  State<SnackBarExample> createState() => _SnackBarExampleState();
}

class _SnackBarExampleState extends State<SnackBarExample> {
  TextEditingController name = TextEditingController();

  bool checkBoxSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GridExample()));
              },
              child: Text("Next Page")
          ),

          SizedBox(
            width: 200,
              child: TextField(
                controller: name,
              )),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: (){

                  if(name.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            backgroundColor: Colors.red,
                            duration: Duration(seconds: 2),
                            content: Text("Please fill all Details")
                        )
                    );
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            backgroundColor: Colors.green,
                            duration: Duration(seconds: 1),
                            content: Text("Logged In Successfully")
                        )
                    );
                  }

                },
                child: Text("SnackBar")
            ),
          ),

          ElevatedButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Logout"),
                        backgroundColor: Colors.blue.shade300,
                        elevation: 6,
                        shadowColor: Colors.red,
                        content: Text("Do You Really want to Logout!!!!!"),
                        actions: [
                          TextButton(
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              child: Text("Yes")
                          ),
                          TextButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: Text("No")
                          ),
                        ],
                      );
                    }
                );
              },
              child: Text("Alert Dialog")
          ),

          //checkbox
          Checkbox(
              value: checkBoxSelect,
              onChanged: (selected){
                print(selected);
                setState(() {
                  checkBoxSelect = selected!;
                });
              }
          ),

        ],
      ),
    );
  }
}
