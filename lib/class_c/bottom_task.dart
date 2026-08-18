import 'package:flutter/material.dart';

class BottomTask extends StatelessWidget {
  const BottomTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff07651b),
        title: Text("My Appointments",style: TextStyle(
          color: Colors.white
        )),
        leading: Icon(Icons.arrow_back_outlined,color: Colors.white,),
      ),

      body: Column(
        children: [
          Card(
            color: Color(0xff07651b),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Order ID",style: TextStyle(
                        color: Color(0xffd3cf16),
                      )),
                      Text("1231231231",style: TextStyle(
                          color: Colors.white,
                      )),
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
                          Text("Appoinment Date",style: TextStyle(
                            color: Color(0xffd3cf16),
                          )),
                          Text("Saturday, March 7, 2023",style: TextStyle(
                            color: Colors.white,
                          )),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Appoinment Time",style: TextStyle(
                            color: Color(0xffd3cf16),
                          )),
                          Text("11:00 AM",style: TextStyle(
                            color: Colors.white,
                          )),
                        ],
                      ),
                    ),
                  ],
                )


              ],
            ),
          )
        ],
      ),
    );
  }
}
