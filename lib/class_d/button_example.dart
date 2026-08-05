import 'package:flutter/material.dart';

class ButtonExample extends StatefulWidget {
  ButtonExample({super.key});

  @override
  State<ButtonExample> createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  int count = 1;

  TextEditingController name = TextEditingController();
  void add(int a){
    a++;
    print(a);
  }

  @override
  void initState() {
    super.initState();
    count = 3;
    name.text = "xyz";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          TextField(
            controller: name,
          ),
          GestureDetector(
            onTap: (){},
              child: Text("xyz")),
          InkWell(
            onTap: (){
              setState(() {

              });
              count++;
              print(count);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 150,
                child: Center(child: Text("Submit")),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Text(count.toString()),
          ElevatedButton(
              onPressed: (){

                add(count);
              },
              child: Text("Submit")
          ),
          TextButton(
              onPressed: (){},
              child: Text("Submit")
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.add)
          ),
          OutlinedButton(
              onPressed: (){},
              child: Text("Submit")
          ),

        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    name;
    count;
  }
}
