import 'package:flutter/material.dart';

class BottomNavTask extends StatelessWidget {
  const BottomNavTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1f4b3e),
        centerTitle: true,
        title: Text("My Appoinment",style: TextStyle(
          color: Colors.white
        ),),
        leading: Icon(Icons.arrow_back,color: Colors.white),
      ),

      body: Column(
        children: [

          Card(
            color: Color(0xff1f4b3e),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("OrderID",style: TextStyle(
                          color: Color(0xffc18f2c),
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
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("OrderID",style: TextStyle(
                            color: Color(0xffc18f2c),
                          ),),
                          Text("1231231231",style: TextStyle(
                              color: Colors.white
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("OrderID",style: TextStyle(
                            color: Color(0xffc18f2c),
                          ),),
                          Text("1231231231",style: TextStyle(
                              color: Colors.white
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )

        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color(0xffc18f2c),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
              label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.sticky_note_2_outlined),
                label: "Bookings"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.percent),
                label: "Offer"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"
            ),
          ]
      ),
    );
  }
}
