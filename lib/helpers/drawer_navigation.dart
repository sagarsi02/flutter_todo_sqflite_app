import 'package:flutter/material.dart';
import 'package:flutter_todo_sqflite_app/screens/home_screen.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://source.unsplash.com/random/200x200/?Users'
                ),
              ),
                accountName: Text('Sagar Singh'),
                accountEmail: Text('sagarsingh@grampower.com'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('Categories'),
            ),
          ],
        ),
      ),
    );
  }
}
