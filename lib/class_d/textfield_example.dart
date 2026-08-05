import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  TextFieldExample({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Example"),
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(28.0),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  label: Text("Name"),
                  prefixIcon: Icon(Icons.person),
                  // border: OutlineInputBorder(
                  //
                  // ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,

                    ),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue
                      ),
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(28.0),
            child: SizedBox(
              width: 300,
              child: TextField(

                // maxLines: 5,
                // maxLength: 10,
                // keyboardType: TextInputType.number,
                // obscureText: true,
                // style: TextStyle(
                //   color: Colors.yellow
                // ),
                controller: password,
                decoration: InputDecoration(
                  label: Text("Password",style: TextStyle(),),
                  prefixIcon: Icon(Icons.person),
                  // border: OutlineInputBorder(
                  //
                  // ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,

                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue
                      ),
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ),
          ),

          ElevatedButton(
              onPressed: (){},
              child: Text("Submit"),

          ),


        ],
      ),
    );
  }
}
