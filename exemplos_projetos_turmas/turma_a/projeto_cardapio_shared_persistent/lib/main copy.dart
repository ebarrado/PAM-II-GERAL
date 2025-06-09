// main copy.dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

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

class CardapioItem extends StatelessWidget {
  final String itemCardapio;
  final String descricao;
  final String imagem;
  final double preco;

  const CardapioItem(
    this.itemCardapio,
    this.descricao,
    this.imagem,
    this.preco, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Image.network(imagem, width: 120, height: 120, fit: BoxFit.cover),
          SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemCardapio,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(descricao, style: TextStyle(color: Colors.grey[700])),
                  SizedBox(height: 8),
                  Text(
                    "R\$ ${preco.toStringAsFixed(2)}",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                      ),
                      child: Text('Adicionar ao Pedido'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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

  //inicar a lista de itens do cardápio
  @override
  void initState() {
    super.initState();
    carregarCardapio();
  }

  //metodo para salvar o cardápio no SharedPreferences

  Future<void> salvarCardapio() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonCardapio = jsonEncode(_itemCardapio);
    await prefs.setString('cardapio', jsonCardapio);
  }

  //metodo para carregar o cardápio do SharedPreferences

  Future<void> carregarCardapio() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonCardapio = prefs.getString('cardapio');
    if (jsonCardapio != null) {
      setState(() {
        _itemCardapio = List<Map<String, String>>.from(
          jsonDecode(jsonCardapio),
        );
      });
    }
  }

  //metodo para adicionar um item ao cardápio

  void adicinarItemCardapio(
    String nomeItem,
    String descricaoItem,
    double precoItem,
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
    salvarCardapio();
  }

  void modalCadastrarItem(BuildContext context) {
    final TextEditingController nomeItemController = TextEditingController();
    final TextEditingController descricaoItemController =
        TextEditingController();
    final TextEditingController precoItemController = TextEditingController();
    final TextEditingController imagemItemController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext contexto) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 450,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Cadastrar Item',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: nomeItemController,
                    decoration: const InputDecoration(
                      labelText: 'Nome do Item',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: descricaoItemController,
                    decoration: const InputDecoration(
                      labelText: 'Descrição',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: precoItemController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Preço',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: imagemItemController,
                    decoration: const InputDecoration(
                      labelText: 'URL da Imagem',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 223, 13, 13),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      adicinarItemCardapio(
                        nomeItemController.text,
                        descricaoItemController.text,
                        double.tryParse(precoItemController.text) ?? 0.0,
                        imagemItemController.text,
                      );
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cadastrar'),
                  ),
                ],
              ),
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
        title: const Text('🍽️ Cardápio Restaurante'),
        backgroundColor: const Color.fromARGB(255, 223, 13, 13),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            _itemCardapio.isEmpty
                ? const Center(child: Text('Nenhum item cadastrado ainda.'))
                : ListView.builder(
                  itemCount: _itemCardapio.length,
                  itemBuilder: (context, index) {
                    final item = _itemCardapio[index];
                    return CardapioItem(
                      item['nome']!,
                      item['descricao']!,
                      item['imagem']!,
                      double.parse(item['preco']!),
                    );
                  },
                ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 223, 13, 13),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Cardápio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Pedido',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => modalCadastrarItem(context),
        backgroundColor: const Color.fromARGB(255, 223, 13, 13),
        child: const Icon(Icons.add),
      ),
    );
  }
}
