import 'package:flutter/material.dart';

class Myfab extends StatefulWidget {
  final ValueNotifier<String> textoNotifier;
  const Myfab({super.key, required this.textoNotifier});

  @override
  State<Myfab> createState() => _MyfabState();
}

class _MyfabState extends State<Myfab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FloatingActionButton.extended(
        onPressed: (){
          widget.textoNotifier.value = "Eu amo Flutter!\n\nFloating Button";
        }, 
        backgroundColor: Colors.purple, 
        label: Text(
          "Floating Button", 
          style: TextStyle(color: Colors.white),
        )
      ),
    );
  }
}