// exemplo_stack.dart
import 'package:flutter/material.dart';
import 'package:projeto_aula_07_03/tela_login.dart';

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
      body: criarStack(context),
      backgroundColor: Colors.grey,
    );
  }
}

Stack criarStack(BuildContext context) {
  return Stack(
    children: <Widget>[
      Image.network(
        'https://marketplace.canva.com/EAFfbzRyhmQ/2/0/900w/canva-fundo-de-tela-para-celular-aquarela-m%C3%A1rmore-minimalista-aesthetic-rosa-e-branco-jXm_DWP3Iu4.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Positioned(bottom: 100, left: 130, child: Text('DS Turma B')),
      Positioned(
        bottom: 50,
        left: 230,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TelaLogin()),
            );
          },
          child: const Text("Ir para Login"),
        ),
      ),
    ],
  );
}
