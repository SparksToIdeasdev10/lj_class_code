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
            child: Container(
              width: 300,
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  label: Text("Name"),
                  prefixIcon: Icon(Icons.account_circle),
                  suffixIcon: Icon(Icons.account_circle),
                  // hintText: "Name",
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(20)
                  // ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.brown,
                      ),
                  ),
                ),
              ),
            ),
          ),

          //name
          //email
          //number
          //password

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              child: TextField(
                keyboardType: TextInputType.number,
                // obscureText: true,
                // maxLength: 10,
                // maxLines: 4,
                controller: password,
                decoration: InputDecoration(
                  label: Text("Passwod"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  // hintText: "Name",
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(20)
                  // ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.brown,
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
