import 'package:aula6/model/profile.dart';
import 'package:aula6/widget/mybottomnavigation.dart';
import 'package:aula6/widget/mycard.dart';
import 'package:aula6/widget/mydrawer.dart';
import 'package:aula6/widget/mystory.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {

  //Criando lista de dados
  final List<Profile> listaDados = [
    Profile(name: "Ronaldinho", image: "http://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Ronaldinho_11feb2007.jpg/250px-Ronaldinho_11feb2007.jpg", like: true),
    Profile(name: "Vaca", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA6fpdwgVlLirfHTWTsEk00fmWLlFymWDLqoUADaywi0XEa2WywlYaXN4S6rf_l0rEgfTVV6JjhXk0O1wM2hI-uo-s78jutu2UZVVgg4g&s=10", like: false),
    Profile(name: "Hilário", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA6fpdwgVlLirfHTWTsEk00fmWLlFymWDLqoUADaywi0XEa2WywlYaXN4S6rf_l0rEgfTVV6JjhXk0O1wM2hI-uo-s78jutu2UZVVgg4g&s=10", like: true),
    Profile(name: "Homer", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA6fpdwgVlLirfHTWTsEk00fmWLlFymWDLqoUADaywi0XEa2WywlYaXN4S6rf_l0rEgfTVV6JjhXk0O1wM2hI-uo-s78jutu2UZVVgg4g&s=10", like: false),
    Profile(name: "Augusta", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA6fpdwgVlLirfHTWTsEk00fmWLlFymWDLqoUADaywi0XEa2WywlYaXN4S6rf_l0rEgfTVV6JjhXk0O1wM2hI-uo-s78jutu2UZVVgg4g&s=10", like: true),
    Profile(name: "Jonas", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA6fpdwgVlLirfHTWTsEk00fmWLlFymWDLqoUADaywi0XEa2WywlYaXN4S6rf_l0rEgfTVV6JjhXk0O1wM2hI-uo-s78jutu2UZVVgg4g&s=10", like: false)
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
      
      bottomNavigationBar: MyBottomNavigation(),
    );
  }
}
