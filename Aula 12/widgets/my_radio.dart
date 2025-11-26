import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  final String? title;
  
  const MyRadio({super.key, required this.title});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  final bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile(
        value: _value,
        title: Text(widget.title!),
        
      ),
    );
  }
}