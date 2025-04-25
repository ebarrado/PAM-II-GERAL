# BottomNavigationBar no Flutter

O `BottomNavigationBar` é um widget do Flutter que permite criar uma barra de navegação na parte inferior da interface do aplicativo. Ele é amplamente utilizado para alternar entre diferentes seções ou telas de um aplicativo de forma intuitiva.

## Propriedades Principais

- **items**: Uma lista de `BottomNavigationBarItem` que define os itens da barra.
- **currentIndex**: O índice do item atualmente selecionado.
- **onTap**: Callback acionado quando um item é tocado.
- **type**: Define o estilo da barra (fixa ou deslocável).
- **backgroundColor**: Cor de fundo da barra.
- **selectedItemColor**: Cor do item selecionado.
- **unselectedItemColor**: Cor dos itens não selecionados.

## Exemplo Básico

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: BottomNavExample(),
        );
    }
}

class BottomNavExample extends StatefulWidget {
    @override
    _BottomNavExampleState createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
    int _currentIndex = 0;

    final List<Widget> _pages = [
        Center(child: Text('Home')),
        Center(child: Text('Search')),
        Center(child: Text('Profile')),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('BottomNavigationBar Example')),
            body: _pages[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: (index) {
                    setState(() {
                        _currentIndex = index;
                    });
                },
                items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        label: 'Search',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: 'Profile',
                    ),
                ],
            ),
        );
    }
}
```

## Estilo Deslizante

Para criar uma barra com estilo deslizante, defina a propriedade `type` como `BottomNavigationBarType.shifting`:

```dart
bottomNavigationBar: BottomNavigationBar(
    type: BottomNavigationBarType.shifting,
    items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.purple,
        ),
    ],
),
```

## Conclusão

O `BottomNavigationBar` é uma ferramenta poderosa para criar navegações intuitivas em aplicativos Flutter. Ele oferece flexibilidade para personalização e é fácil de implementar.

Para mais informações, consulte a [documentação oficial](https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html).