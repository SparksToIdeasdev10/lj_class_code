import 'package:flutter/material.dart';

class BottomTask extends StatelessWidget {
  const BottomTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3a6154),
        centerTitle: true,
        title: Text("My Appoinment",style: TextStyle(
          color: Colors.white
        ),),
        leading: Icon(Icons.arrow_back,color: Colors.white,),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color(0xff3a6154),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Order ID",style: TextStyle(
                            color: Color(0xff995d03)
                        ),),
                        Text("1231231231",style: TextStyle(
                            color: Colors.white
                        ),),
                      ],
                    ),
                  ),
                  Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Appointment Date",style: TextStyle(
                                color: Color(0xff995d03)
                            ),),
                            Text("Saturday, March 7,2023",style: TextStyle(
                                color: Colors.white
                            ),),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Appointment Time",style: TextStyle(
                                color: Color(0xff995d03)
                            ),),
                            Text("11:00 AM",style: TextStyle(
                                color: Colors.white
                            ),),
                          ],
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
