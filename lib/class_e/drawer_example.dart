import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget {
  DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  DateTime? selectedDate;

  void DatePicker(BuildContext context) async{

    final date = showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
    );

    print(date);
    selectedDate = await date;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            // header
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(""),
              ),
                accountName: Text("Name"),
                accountEmail: Text("Email.com"),
            ),

            ListTile(
              leading: Icon(Icons.verified_user_outlined),
              title: Text("User"),
            ),
            ListTile(
              leading: Icon(Icons.verified_user_outlined),
              title: Text("User"),
            ),
            ListTile(
              leading: Icon(Icons.verified_user_outlined),
              title: Text("User"),
            ),
            ListTile(
              leading: Icon(Icons.verified_user_outlined),
              title: Text("User"),
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          //Date Picker
          ElevatedButton(
              onPressed: (){
                DatePicker(context);
              },
              child: Text("Date Picker")
          ),

          Text(selectedDate.toString()),
        ],
      ),
    );
  }
}
