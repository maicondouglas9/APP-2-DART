import 'package:flutter/material.dart';

class MyElev extends StatefulWidget {
  final ValueNotifier<String> textoNotifier;
  const MyElev({super.key, required this.textoNotifier});

  @override
  State<MyElev> createState() => _MyElevState();
}

class _MyElevState extends State<MyElev> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          widget.textoNotifier.value = "Eu amo Flutter!\n\nElevated Button";
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.purple),
        ),
        child: Text('Elevated Button', style: TextStyle(color: Colors.white),)
      ),
    );
  }
}