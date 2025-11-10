import 'package:aula6/widget/mycard.dart';
import 'package:aula6/widget/mydrawer.dart';
import 'package:aula6/widget/mystory.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          'Aula 6',
          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
          ),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, itens) {
                  return MyStory(title: "Flutter I");
                },
                ),
            ),

            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, itens) {
                  return MyCard(title: "Flutter", image: "", like: false);
                },
                ),
            ), 
          ],
        ),
      ),
    );
  }
}
