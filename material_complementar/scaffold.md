# Scaffold no Flutter

O `Scaffold` é um widget fundamental no Flutter que fornece uma estrutura básica para a criação de interfaces de usuário. Ele é amplamente utilizado para criar layouts padrão de aplicativos, como barras de navegação, rodapés, áreas de conteúdo e muito mais.

## Estrutura do Scaffold

O `Scaffold` oferece várias propriedades para construir a interface, como:

- **`appBar`**: Define uma barra de aplicativos no topo.
- **`body`**: Área principal para o conteúdo.
- **`floatingActionButton`**: Botão de ação flutuante.
- **`drawer`**: Menu lateral.
- **`bottomNavigationBar`**: Barra de navegação inferior.
- **`backgroundColor`**: Cor de fundo do Scaffold.

## Exemplo Básico

```dart
import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: Text('Exemplo de Scaffold'),
                ),
                body: Center(
                    child: Text('Olá, Scaffold!'),
                ),
                floatingActionButton: FloatingActionButton(
                    onPressed: () {
                        print('Botão pressionado!');
                    },
                    child: Icon(Icons.add),
                ),
            ),
        );
    }
}
```

## Exemplo com Menu Lateral e Barra Inferior

```dart
import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: Text('Scaffold com Menu e Barra Inferior'),
                ),
                drawer: Drawer(
                    child: ListView(
                        children: [
                            DrawerHeader(
                                decoration: BoxDecoration(color: Colors.blue),
                                child: Text('Menu', style: TextStyle(color: Colors.white)),
                            ),
                            ListTile(
                                title: Text('Item 1'),
                                onTap: () {},
                            ),
                            ListTile(
                                title: Text('Item 2'),
                                onTap: () {},
                            ),
                        ],
                    ),
                ),
                body: Center(
                    child: Text('Conteúdo principal'),
                ),
                bottomNavigationBar: BottomNavigationBar(
                    items: [
                        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
                        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
                    ],
                ),
            ),
        );
    }
}
```

## Conclusão

O `Scaffold` é essencial para criar layouts consistentes e organizados no Flutter. Ele simplifica a construção de interfaces complexas, fornecendo uma estrutura robusta e flexível.
