// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trabalhando com Listas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trabalhando com Listas')),
      body: ListView(
        children: [
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
          Item(),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(Icons.home, size: 50, color: Colors.blue),
            Text(
              'Exemplo Aula',
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        ),
      ],
    );
  }
}
