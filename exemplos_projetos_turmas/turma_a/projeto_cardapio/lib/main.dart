// main.dart
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

      title: 'Cardápio Restaurante',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CardapioPage(),
    );
  }
}

class CardapioPage extends StatelessWidget {
  const CardapioPage({super.key});

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
      body: Column(
        children: [
          Row(
            children: [
              Image.network(
                "https://media.istockphoto.com/id/938742222/pt/foto/cheesy-pepperoni-pizza.jpg?s=612x612&w=0&k=20&c=IMbsKsB8sD78lAiCFax9rJAfl9nMvvRurZkrmNIZMQA=",
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: Container(
                      width: double.maxFinite,
                      child: Text(
                        "Pizza Margherita",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                        "Molho de tomate, mussarela, manjericão fresco.",
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
            ],
          ),
          // Adicione mais itens do cardápio aqui
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx5T1LvEjeIQBt-UxZLODbdXIF-tr7NXUvdQ&s",
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),

                          child: Container(
                            width: double.maxFinite,
                            child: Text(
                              "Hambúrguer Artesanal",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Text(
                              "Pão brioche, carne 150g, queijo cheddar e maionese da casa.",
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Text(
                              "R\$ 54,30",
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        // Adicione mais itens do cardápio aqui
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
                  ],
                ),
              ],
            ),
          ),
          // Adicione mais itens do cardápio aqui
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKDFtf7FwX501b8MKcCR_42gyObXYM6jvUKg&s",
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),

                          child: Container(
                            width: double.maxFinite,
                            child: Text(
                              "Donut Recheado",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Text(
                              "Cobertura de chocolate com recheio cremoso.",
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Text(
                              "R\$ 54,30",
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
                  ],
                ),
              ],
            ),
          ),
        ],
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
    );
  }
}
