import 'package:flutter/material.dart';
import 'package:form_flutter/pages/login_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: MediaQuery.of(context).size.width *0.5,
        backgroundColor: const Color.fromARGB(255, 185, 131, 216),
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
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA6fpdwgVlLirfHTWTsEk00fmWLlFymWDLqoUADaywi0XEa2WywlYaXN4S6rf_l0rEgfTVV6JjhXk0O1wM2hI-uo-s78jutu2UZVVgg4g&s=10'),
            ),
            Divider(color: Colors.white,),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(Icons.login),
              title: Text('Login',),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)  => MyLoginPage()));},
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(Icons.settings),
              title: Text('Configurações',),
            )
          ],
        ),
      );
  }
}