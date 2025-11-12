import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: MediaQuery.of(context).size.width *0.5,
        backgroundColor: Colors.greenAccent,
        elevation: 40,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: Text(
                "Bem vindo!",
                style: TextStyle(
                  fontSize: 20, 
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(color: Colors.white,),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(Icons.mail),
              title: Text('Conato',),
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(Icons.settings),
              title: Text('Preferências',),
            )
          ],
        ),
      );
  }
}