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
          //name
          //number
          //email
          //description
          //password
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  label: Text("Name"),
                  prefixIcon: Icon(Icons.person),
                  // hintText: "Name",
                  // border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                   borderSide: BorderSide(
                     color: Colors.red,
                   )
                  ),
                  enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.cyan,
                      )
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: password,
                // obscureText: true,
                // maxLength: 10,
                maxLines: 4,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.red
                ),
                decoration: InputDecoration(
                  label: Text("password"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  // hintText: "Name",
                  // border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.red,
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.cyan,
                      )
                  ),
                ),
              ),
            ),
          ),

          ElevatedButton(
              onPressed: (){},
              child: Text("Submit")
          ),
        ],
      ),
    );
  }
}
