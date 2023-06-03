import 'package:flutter/material.dart';
import 'package:hellonavigationdrawer/home.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(onTap: (value) {
        if(value == 0){
           Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
        }else if(value == 1){
          //pergi ke account
        }
      }, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'Account')
      ]),
      appBar: AppBar(
        title: Text('Hello Navigation Drawer'),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
          )
        ],
      )),
    );
  }
}
