import 'package:flutter/material.dart';

class MyTextFieldLogin extends StatefulWidget {
  const MyTextFieldLogin({super.key});

  @override
  State<MyTextFieldLogin> createState() => _MyTextFieldLoginState();
}

class _MyTextFieldLoginState extends State<MyTextFieldLogin> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(),
      obscureText: true,
      decoration: InputDecoration(
        label: Text('Senha'),
        border: OutlineInputBorder(),
      ),
    );
  }
}