import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: Stack(
              clipBehavior: Clip.none,
               children: [

                 Container(
                   height: 300,
                   width: 400,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     image: DecorationImage(
                       fit: BoxFit.fill,
                         image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2IiWjNx1CKFbmT7kjQOdxvrdmIuVz_MobdUsmYVqzMg&s=10")
                     )
                   ),
                 ),
                 // Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2IiWjNx1CKFbmT7kjQOdxvrdmIuVz_MobdUsmYVqzMg&s=10"),

                 Positioned(
                   bottom: -60,
                   right: 60,
                   child: Container(
                     child: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(18.0),
                           child: TextField(
                             decoration: InputDecoration(
                               label: Text("UserName"),
                               border: OutlineInputBorder()
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 18.0),
                           child: TextField(
                             decoration: InputDecoration(
                               label: Text("Password"),
                               border: OutlineInputBorder()
                             ),
                           ),
                         ),
                       ],
                     ),
                     height: 170,
                     width: 280,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),
                     ),
                   ),
                 ),

                 Positioned(
                   bottom: -80,
                   right: 180,
                   child: CircleAvatar(
                     backgroundColor: Colors.cyan,
                     child: Icon(Icons.chevron_right_outlined,color: Colors.white,),
                   ),
                 ),


               ],
            ),
          )

        ],
      ),
    );
  }
}
