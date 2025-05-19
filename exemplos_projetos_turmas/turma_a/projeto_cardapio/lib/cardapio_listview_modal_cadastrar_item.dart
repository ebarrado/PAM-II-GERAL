// cardapio_listview_modal copy 2.dart
import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

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
      title: '🍽️ Cardápio Restaurante',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CadastrarItem(),
    );
  }
}
//Cardapio Item

class CardapioItem extends StatelessWidget {
  final String itemCardapio; //parametro nomedoitem do cardapio
  final String descricao; //parametro descricao do item do cardapio
  final String imagem; //parametro imagem do item do cardapio
  final double preco; //parametro preco do item do cardapio

  const CardapioItem(
    this.itemCardapio,
    this.descricao,
    this.imagem,
    this.preco, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(imagem, width: 120, height: 120, fit: BoxFit.cover),
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
                    "R\$" + preco.toString(),
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

class CadastrarItem extends StatefulWidget {
  const CadastrarItem({super.key});

  @override
  State<CadastrarItem> createState() => _CadastrarItemState();
}

class _CadastrarItemState extends State<CadastrarItem> {
  List<Map<String, String>> _itemCardapio = [];
  //Método para adicionar um item ao cardápio
  void adicinarItemCardapio(
    String nomeItem,
    String descricaoItem,
    Double precoItem,
    String imagemItem,
  ) {
    setState(() {
      _itemCardapio.add({
        'nome': nomeItem,
        'descricao': descricaoItem,
        'preco': precoItem.toString(),
        'imagem': imagemItem,
      });
    });
  }

  //Criar um Modal
  void modalCadastrarItem(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext contexto) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Cadastrar Item',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Nome do Item',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Descrição',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Preço',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cadastrar'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '🍽️ Cardápio Restaurante',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(Icons.search, color: const Color.fromARGB(255, 241, 241, 241)),
          SizedBox(width: 16),
        ],
        backgroundColor: const Color.fromARGB(255, 223, 13, 13),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            CardapioItem(
              "Pizza de Mussarela",
              "Deliciosa pizza de mussarela",
              "https://imagens.imirante.com.br/imagens/noticias/2024/01/24/dUNM2xe8QlsRbcQiPMrN7PsaK1pTExip6UD1Ni8q.jpg?w=896&h=448&crop=896%2C+448%2C+0%2C+26&fit=crop&fm=webp&s=ee5e8a27385bcca449e94286564705a0",
              89.90,
            ),
            CardapioItem(
              "Pizza de Marguerita",
              "Pizza de marguerita com tomate e manjericão",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSetY5d0rQCAGZnsjh7IZEsDqSwUHbBrEx8yw&s",
              90.99,
            ),
            CardapioItem(
              "Pizza de Calabresa",
              "Saborosa pizza de calabresa",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9q12OjKbFmOtepiFAYJop1tctLN06DG3CSA&s",
              67.59,
            ),
            CardapioItem(
              "Pizza de Frango com Catupiry",
              "Deliciosa Pizza de frango com catupiry",
              "https://swiftbr.vteximg.com.br/arquivos/ids/203714-636-636/618062-pizza-de-frango-com-catupiry-seara_1.jpg.jpg?v=638708260014000000",
              89.00,
            ),
            CardapioItem(
              "Pizza Portuguesa",
              "Pizza portuguesa com ovos",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPk6Da5pSFa_4Eb4Pl5EfWPlWQ_JW2WR7ypg&s",
              102.80,
            ),
          ],
        ),
      ),
      // Adicionando BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 223, 13, 13),
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme: const IconThemeData(color: Colors.white70),
        selectedItemColor: Colors.white, // Cor da label do item selecionado
        unselectedItemColor:
            Colors.white70, // Cor da label dos itens não selecionados
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant_menu,
              color: const Color.fromARGB(255, 241, 241, 241),
            ),
            label: 'Cardapio',
            backgroundColor: const Color.fromARGB(255, 253, 253, 253),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: const Color.fromARGB(255, 241, 241, 241),
            ),
            label: 'Pedido',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: const Color.fromARGB(255, 241, 241, 241),
            ),
            label: 'Perfil',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação do botão flutuante
          modalCadastrarItem(context);
        },
        backgroundColor: const Color.fromARGB(255, 223, 13, 13),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
