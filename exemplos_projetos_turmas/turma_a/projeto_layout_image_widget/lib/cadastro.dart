// cadastro.dart
import 'package:flutter/material.dart';

class TelaCadastro extends StatelessWidget {
  const TelaCadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cadastrar Usuário"
        ),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Nome",
              border: OutlineInputBorder()
            ),
          ),
          SizedBox( height: 16,),
          TextField(
            decoration: InputDecoration(
              labelText: "E-mail",
              border: OutlineInputBorder()
            ),
          ),
          SizedBox( height: 16,)

        ],
      ),
    );
  }
}
