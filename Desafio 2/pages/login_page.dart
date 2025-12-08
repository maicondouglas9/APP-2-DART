import 'package:flutter/material.dart';
import 'package:form_flutter/pages/form_page.dart';
import 'package:form_flutter/widgets/my_button.dart';
import 'package:form_flutter/widgets/my_drawer.dart';
import 'package:form_flutter/widgets/my_text_field.dart';
import 'package:form_flutter/widgets/my_text_field_login.dart';

class MyLoginPage extends StatelessWidget {
  final TextEditingController _controllerLogin = TextEditingController();

  MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      drawer: MyDrawer(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLkLkgbwppUqEqYZHZDFas6QungHnqk8ZDcA&s',
                ),
              ),
              SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                child: MyTextField(
                  title: "Nome",
                  isDate: false,
                  controller: _controllerLogin,
                ),
              ),

              SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                child: MyTextFieldLogin(),
              ),

              SizedBox(height: 15),

              MyButton(title: 'Entrar', icon: Icons.login, onClick: () {}),

              SizedBox(height: 15),

              MyButton(
                title: 'Cadastrar-se',
                icon: Icons.create,
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FormPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
