import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navegación Básica',
    home: PrimeraRuta(),
  ));
}
//clase Todo

class Todo {
  final String title;
  final String description;

  //constructor
  Todo(this.title, this.description);
}

//fin clase Todo

class PrimeraRuta extends StatelessWidget {
  final Todo objeto1 = Todo("parametro1", "parametro2");
  PrimeraRuta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera Ruta'),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Abrir Ruta 2'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => SegundaRuta(objeto: objeto1))));
        },
      )),
    );
  }
}

class SegundaRuta extends StatelessWidget {
  final Todo objeto;
  const SegundaRuta({Key? key, required this.objeto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Ruta'),
      ),
      body: Center(child: Text(objeto.title + "->" + objeto.description)),
    );
  }
}
