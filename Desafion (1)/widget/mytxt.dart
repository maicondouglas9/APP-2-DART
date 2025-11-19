import 'package:flutter/material.dart';

class MyTxt extends StatelessWidget {
  final ValueNotifier<String> textoNotifier;

  const MyTxt({super.key, required this.textoNotifier});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          textoNotifier.value = "Eu amo Flutter!\n\n  Text Button";
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.purple),
        ),
        child: const Text("Text Button", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
