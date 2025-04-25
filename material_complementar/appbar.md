# AppBar no Flutter

O `AppBar` é um componente amplamente utilizado no Flutter para criar barras de aplicativos (app bars) que geralmente contêm títulos, botões de ação e outros widgets. Ele é parte do widget `Scaffold` e é usado para fornecer uma interface consistente e funcional para o usuário.

## Estrutura Básica

Abaixo está um exemplo básico de como usar o `AppBar` no Flutter:

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
                    title: Text('Exemplo de AppBar'),
                    backgroundColor: Colors.blue,
                ),
                body: Center(
                    child: Text('Conteúdo principal'),
                ),
            ),
        );
    }
}
```

## Propriedades Comuns

- **title**: Define o título exibido na barra.
- **backgroundColor**: Define a cor de fundo da barra.
- **actions**: Lista de widgets (geralmente ícones ou botões) exibidos no lado direito da barra.
- **leading**: Widget exibido no lado esquerdo da barra, como um botão de menu ou ícone de navegação.
- **elevation**: Define a elevação (sombra) da barra.

## Exemplo com Ações

```dart
appBar: AppBar(
    title: Text('AppBar com Ações'),
    actions: [
        IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
                // Ação ao pressionar o botão de busca
            },
        ),
        IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
                // Ação ao pressionar o botão de menu
            },
        ),
    ],
),
```

## Personalização Avançada

O `AppBar` pode ser altamente personalizado para atender às necessidades do design do aplicativo. Por exemplo, você pode usar widgets personalizados no lugar do título ou adicionar imagens de fundo.

```dart
appBar: AppBar(
    title: Row(
        children: [
            Icon(Icons.star),
            SizedBox(width: 10),
            Text('AppBar Personalizada'),
        ],
    ),
    flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
            ),
        ),
    ),
),
```

## Conclusão

O `AppBar` é um componente essencial para criar interfaces de usuário no Flutter. Ele oferece flexibilidade e personalização para atender às necessidades de qualquer aplicativo. Explore as propriedades e widgets disponíveis para criar barras de aplicativos únicas e funcionais.

Para mais informações, consulte a [documentação oficial do Flutter](https://api.flutter.dev/flutter/material/AppBar-class.html).