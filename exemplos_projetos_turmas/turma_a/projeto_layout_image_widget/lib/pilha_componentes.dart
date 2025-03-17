// pilha_componentes.dart
import 'package:flutter/material.dart';

//stl - Selecionar StatelesWidget
class PilhaCompenentes extends StatelessWidget {
  const PilhaCompenentes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Componentes usando Pilha",
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.lightBlueAccent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ), // Ícone de configurações
            onPressed: () {
              // Ação ao pressionar o ícone
              print("Botão Pressionado");
            },
          ),
        ],
      ),
      body: criarPilhaComponente(),
    );
  }
}

Stack criarPilhaComponente() {
  return Stack();
}
