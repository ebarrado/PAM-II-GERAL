// cardapio_listview_modal copy.dart
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
      home: CadastrarItem(),
    );
  }
}

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

//Classe CadastrarItem herdando de Classe StatefulWidget ( com estado)
// Essa classe é responsável por criar o modal de cadastro de item
class CadastrarItem extends StatefulWidget {
  const CadastrarItem({super.key});

  @override
  State<CadastrarItem> createState() => _CadastrarItemState();
}

class _CadastrarItemState extends State<CadastrarItem> {
  List<Map<String, String >> _itemCardapio = [];
  //Altereção do código para criar o addItem
  void addItemCardapio(
    String nomeItem,
    String descricaoItem,
    String precoItem,
    String imagemItem,
  ) {
    setState(() {
      _itemCardapio.add({
        'nome': nomeItem,
        'descricao': descricaoItem,
        'preco': precoItem,
        'imagem': imagemItem,
      });
    });
  }

  //Criar um Modal
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
            // height: 300,
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
                    labelText: 'Nome do Item do Cardapio',
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
                  decoration: const InputDecoration(
                    labelText: 'Preço',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: imagemItemController,
                  decoration: const InputDecoration(
                    labelText: 'Imagem do Item',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão
                    addItemCardapio(
                      nomeItemController.text,
                      descricaoItemController.text,
                      precoItemController.text,
                      imagemItemController.text,
                    );

                    //
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

  ///
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
        child: ListView.builder(
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
          //modalCadastrarItem(context);
          modalCadastrarItem(context);
        },
        backgroundColor: const Color.fromARGB(255, 223, 13, 13),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
