import 'package:flutter/material.dart';

class BottomTask extends StatelessWidget {
  const BottomTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Card(
          color: Color(0xff3a6154),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("OrderID",style: TextStyle(
                        color: Color(0xffe5a013),
                      ),),
                      Text("1234567890",style: TextStyle(
                        color: Color(0xffffffff),
                      ),
                      ),
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
                            color: Color(0xffe5a013),
                          ),),
                          Text("Saturday, March 7, 2023",style: TextStyle(
                            color: Color(0xffffffff),
                          ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Appointment Time",style: TextStyle(
                            color: Color(0xffe5a013),
                          ),),
                          Text("11:00 AM",style: TextStyle(
                            color: Color(0xffffffff),
                          ),
                          ),
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
