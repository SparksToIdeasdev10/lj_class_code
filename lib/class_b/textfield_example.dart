import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  TextFieldExample({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: name,
                style: TextStyle(
                  color: Colors.red
                ),
                decoration: InputDecoration(
                  // hintText: "Name"
                label: Text("Name"),
                  prefixIcon: Icon(Icons.person),
                  // prefix:Icon(Icons.person),
                 // fillColor: Colors.blueAccent,
                 //  filled: true,

                  suffixIcon: Icon(Icons.remove_red_eye),
                  // border: OutlineInputBorder(
                  //
                  // ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      // width: 5
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                      // width: 5
                    ),
                  ),

                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: password,
                obscureText: true,
                // maxLines: 4,
                // maxLength: 10,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    color: Colors.red
                ),
                decoration: InputDecoration(
                  // hintText: "Name"
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.person),
                  // prefix:Icon(Icons.person),
                  // fillColor: Colors.blueAccent,
                  //  filled: true,
                  suffixIcon: Icon(Icons.remove_red_eye),
                  // border: OutlineInputBorder(
                  //
                  // ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      // width: 5
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                      // width: 5
                    ),
                  ),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
