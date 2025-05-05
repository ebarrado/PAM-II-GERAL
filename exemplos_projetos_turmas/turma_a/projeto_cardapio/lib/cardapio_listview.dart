// cardapio_listview.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const CardapioApp());
}

class CardapioApp extends StatelessWidget {
  const CardapioApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cardápio',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CardapioListView(),
    );
  }
}

class CardapioListView extends StatelessWidget {
  const CardapioListView({super.key});
  //classe parametros nome, preco, descricao, imagem

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cardápio')),
      body: ListView(
        children: [
          CardapioItem("Pizza de Mussarela", "Deliciosa pizza de mussarela"),
          CardapioItem("Pizza de Calabresa", "Saborosa pizza de calabresa"),
          CardapioItem(
            "Pizza de Frango com Catupiry",
            "Deliciosa Pizza de frango com catupiry",
          ),
          CardapioItem("Pizza Portuguesa", "Pizza portuguesa com ovos"),
        ],
      ),
    );
  }
}

class CardapioItem extends StatelessWidget {
  final String itemCardapio; //parametro nomedoitem do cardapio
  final String descricao; //parametro descricao do item do cardapio

  const CardapioItem(this.itemCardapio, this.descricao, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          "https://media.istockphoto.com/id/938742222/pt/foto/cheesy-pepperoni-pizza.jpg?s=612x612&w=0&k=20&c=IMbsKsB8sD78lAiCFax9rJAfl9nMvvRurZkrmNIZMQA=",
          width: 120,
          height: 120,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),

                child: Container(
                  width: double.maxFinite,
                  child: Text(
                    itemCardapio,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    descricao,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    "R\$ 78,90",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Adicionar ao Pedido'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
