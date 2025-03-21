// tela_login.dart
import 'package:flutter/material.dart';
import 'package:projeto_aula_07_03/tela_cadastro.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela de Login"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Nome",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              labelText: "Senha",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              //logica para entrar
            },
            child: const Text("Entrar"),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TelaCadastro()),
              );
            },
            child: const Text("Não tem conta? Cadastre-se aqui"),
          ),
        ],
      ),
    );
  }
}
