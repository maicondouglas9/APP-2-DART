import 'package:aula6/screen/settingspage.dart';
import 'package:flutter/material.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
      unselectedItemColor: Colors.green,

      onTap: (i) {
        setState(() {
          _index = i;
          switch (_index) {
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MySettingsPage(title: "Configurações"),
                ),
              );
          }
          ;
        });
      },

      currentIndex: _index,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Contato"),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Configurações",
        ),
      ],
    );
  }
}
