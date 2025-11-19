import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final ValueNotifier<String> textoNotifier;

  const MyContainer({super.key, required this.textoNotifier});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: textoNotifier,
      builder: (context, value, _) {
        return Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: const Color.fromARGB(179, 222, 130, 245),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              value,
              style: const TextStyle(fontSize: 24, color: Colors.white,),
            ),
          ),
        );
      },
    );
  }
}
