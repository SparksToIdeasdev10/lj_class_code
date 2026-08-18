import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
              width: 200,
              child: TextField(
                controller: password,
                obscureText: true,
                // maxLines: 3,
                style: TextStyle(
                  color: Colors.red,

                ),
                decoration: InputDecoration(
                  label: Text("password"),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.circular(20),

                  ),

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 200,
              child: TextField(
                controller: name,
                maxLength: 10,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.blueAccent
                ),
                // maxLines: 4,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  fillColor: Colors.transparent,
                  filled: true,
                  border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(20)
                  ),
                  label: Text("Name")
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: (){
                print(name.text);
              },
            child: Text("Submit"),
          ),
          TextButton(
            onPressed: (){
              print(name.text);
            },
            child: Text("Submit"),
          ),

        ],
      ),

    );
  }
}
