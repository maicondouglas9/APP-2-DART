import 'package:desafio1/widget/myappbar.dart';
import 'package:desafio1/widget/mycontainer.dart';
import 'package:desafio1/widget/myelev.dart';
import 'package:desafio1/widget/myfab.dart';
import 'package:desafio1/widget/mytxt.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final ValueNotifier<String> texto = ValueNotifier<String>("Eu amo Flutter!");

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desafio 1',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: MyAppBar(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 80,
                  child: Myfab(textoNotifier: texto,),              
                ),
                SizedBox(
                  height: 80,
                  child: MyElev(textoNotifier: texto,),
                ),
                SizedBox(
                  height: 80,
                  child: MyTxt(textoNotifier: texto,),
                ),
                MyContainer(textoNotifier: texto,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
