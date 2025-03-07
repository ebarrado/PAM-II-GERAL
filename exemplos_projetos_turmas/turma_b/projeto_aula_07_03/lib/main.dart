// main.dart
import 'package:flutter/material.dart';
import 'package:projeto_aula_07_03/exemplo_stack.dart';

void main() {
  runApp(Aplicativo());
}

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TesteExemplo',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: ExemploStack(),
    );
  }
}
