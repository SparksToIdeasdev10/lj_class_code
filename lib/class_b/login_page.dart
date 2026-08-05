import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Login",style: TextStyle(
              color: Colors.cyan,
              fontSize: 30,
            ),
            ),
          ),

          SizedBox(
            width: 300,
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                label: Text("Username",style: TextStyle(
                  color: Colors.white
                ),),
                prefixIcon: Icon(Icons.person,color: Colors.cyan,),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.cyan
                  )
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.cyan
                    )
                ),
              ),
            ),
          ),

          SizedBox(
            width: 300,
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                label: Text("Username",style: TextStyle(
                    color: Colors.white
                ),),
                prefixIcon: Icon(Icons.person,color: Colors.cyan,),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.cyan
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.cyan
                    )
                ),
              ),
            ),
          )


        ],
      ),
    );
  }
}
