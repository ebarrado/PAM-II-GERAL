// exemplo_stack.dart
import 'package:flutter/material.dart';

class ExemploStack extends StatelessWidget {
  const ExemploStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Layout
      appBar: AppBar(
        title: Center(
          child: Text(
            'Trabalhando com Stack',
            style: TextStyle(color: const Color.fromARGB(255, 19, 95, 3)),
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: criarStack(),
      backgroundColor: Colors.grey,
    );
  }
}

Stack criarStack() {
  return Stack(
    children: <Widget>[
      Image.network(
        'https://marketplace.canva.com/EAFfbzRyhmQ/2/0/900w/canva-fundo-de-tela-para-celular-aquarela-m%C3%A1rmore-minimalista-aesthetic-rosa-e-branco-jXm_DWP3Iu4.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    ],
  );
}
