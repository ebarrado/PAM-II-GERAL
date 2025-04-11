// main.dart
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
      title: "Aplicativo DS",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //widget (componente)
        title: Text("Tela Login"), //titulo
        backgroundColor: Colors.black, //cor de fundo
        leading: IconButton(
          //objeto do lado esquerdo da appBar
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.face, color: Colors.white),
          ),
          PopupMenuButton(
            color: Colors.white,
            itemBuilder:
                (context) => [
                  PopupMenuItem(child: Text('Cadastrar')),
                  PopupMenuItem(child: Text('Contato')),
                ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Cadastrar"),
        ],
      ),
    );
  }
}
