import 'package:flutter/material.dart';
import 'package:food/pages/donate.dart';
import 'package:food/pages/home.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Sajal Shrestha'),
          accountEmail: Text('info@codeit.com.np'),
          currentAccountPicture: CircleAvatar(
            child: Text('S'),
          ),
        ),

        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
          },
          leading: Icon(Icons.home),
          title: Text('Home'),
        ),
        ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Donate()));
          },
          leading: Icon(Icons.fastfood),
          title: Text('Donate'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Exit'),
        )
      ],
    ),
  );
}
