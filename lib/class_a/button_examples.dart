import 'package:flutter/material.dart';

class ButtonExamples extends StatefulWidget {
  ButtonExamples({super.key});

  @override
  State<ButtonExamples> createState() => _ButtonExamplesState();
}

class _ButtonExamplesState extends State<ButtonExamples> {
  int count = 1;
  TextEditingController name = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    count = 5;
    name.text = "XYZ";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(48.0),
            child: TextField(
              controller: name,
            ),
          ),

          Center(
            child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    count++;
                    print(count);
                  });

                },
                child: Text("Submit")
            ),
          ),

          InkWell(
            onTap: (){
              setState(() {
                count++;
                print(count);
              });
            },
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

          Text(count.toString()),

        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    count;
    name;
  }


}
