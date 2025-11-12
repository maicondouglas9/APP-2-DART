import 'package:aula6/model/profile.dart';
import 'package:aula6/widget/mycard.dart';
import 'package:aula6/widget/mydrawer.dart';
import 'package:aula6/widget/mystory.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {

  //Criando lista de dados
  List<Profile> listaDados = [
    Profile(name: "Ronaldinho", image: "http://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Ronaldinho_11feb2007.jpg/250px-Ronaldinho_11feb2007.jpg", like: true),
    Profile(name: "Giovane", image: "", like: false),
    Profile(name: "Hilário", image: "", like: true),
    Profile(name: "Homer", image: "", like: false),
    Profile(name: "Augusta", image: "", like: true),
    Profile(name: "Jonas", image: "", like: false)
  ];

  MyHomePage({super.key});

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
                itemCount: listaDados.length,
                itemBuilder: (context, item) {
                  return MyStory(title: listaDados[item].name, image: listaDados[item].image,);
                },
                ),
            ),

            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listaDados.length,
                itemBuilder: (context, item) {
                  return MyCard(
                    title: listaDados[item].name, 
                    image: listaDados[item].image, 
                    like: listaDados[item].like
                  );
                },
              ),
            ), 
          ],
        ),
      ),
    );
  }
}
