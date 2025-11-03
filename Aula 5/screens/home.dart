import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Placeholder(),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.timelapse, color: Colors.white)
            ),
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.dry_cleaning, color: Colors.white)
            )  
        ],
        centerTitle: true,
        title: Text(
          "Aula 5",
          style: TextStyle(color: Colors.white),
          ),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 100,
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Flutter",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 40),
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset(
                "lib/assets/patolino.jpg",
                fit: BoxFit.contain,
                alignment: AlignmentGeometry.topCenter
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset(
                "lib/assets/pernalonga.jpg",
                fit: BoxFit.contain,
                alignment: AlignmentGeometry.topCenter,
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset(
                "lib/assets/papaleguas.png",
                fit: BoxFit.contain,
                alignment: AlignmentGeometry.topCenter,
              ),
            ),
            //Para testar rolagem horizontal dentro da vertival
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[],
              ),
            ),
            //Fim do teste
          ],
        ),
      ),
    );
  }
}