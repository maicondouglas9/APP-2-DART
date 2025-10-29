import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aula 4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 169, 183)),
      ),
      home: const MyHomePage(title: 'Contador'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _clearCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Contagem:', style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Padding(padding: EdgeInsetsGeometry.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _incrementCounter, 
                  child: Text("+", style: TextStyle(fontSize: 30),),   
                ),
                ElevatedButton(
                  onPressed: _clearCounter, 
                  child: Text("Zerar", style: TextStyle(fontSize: 20),), 
                ),
                ElevatedButton(
                  onPressed: _decrementCounter, 
                  child: Text("-", style: TextStyle(fontSize: 30),), 
                ),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}
