# Image.Asset

O `Image.asset` é um widget do Flutter utilizado para exibir imagens armazenadas localmente no diretório de assets do projeto. Ele é ideal para incluir imagens estáticas, como ícones, logotipos ou qualquer outro recurso gráfico que faça parte do aplicativo.

## Configuração

1. Certifique-se de que a imagem está localizada no diretório `assets` ou em outro diretório de sua escolha.
2. Adicione o caminho da imagem no arquivo `pubspec.yaml`:

```yaml
flutter:
    assets:
        - assets/images/exemplo.png
```

3. Execute o comando abaixo para garantir que os assets sejam carregados corretamente:

```bash
flutter pub get
```

## Exemplo de Utilização

### Exemplo Básico

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
                    title: Text('Exemplo de Image.asset'),
                ),
                body: Center(
                    child: Image.asset('assets/images/exemplo.png'),
                ),
            ),
        );
    }
}
```

### Ajustando Propriedades

Você pode personalizar a exibição da imagem utilizando propriedades como `width`, `height` e `fit`:

```dart
Image.asset(
    'assets/images/exemplo.png',
    width: 200,
    height: 200,
    fit: BoxFit.cover,
)
```

### Exemplo com Placeholder

Para exibir um placeholder enquanto a imagem é carregada, você pode usar o pacote [cached_network_image](https://pub.dev/packages/cached_network_image) ou criar uma lógica personalizada:

```dart
Widget build(BuildContext context) {
    return Image.asset(
        'assets/images/exemplo.png',
        width: 100,
        height: 100,
        errorBuilder: (context, error, stackTrace) {
            return Icon(Icons.error);
        },
    );
}
```

## Conclusão

O `Image.asset` é uma ferramenta poderosa para gerenciar imagens locais no Flutter. Certifique-se de organizar seus assets corretamente e configurar o arquivo `pubspec.yaml` para evitar erros de carregamento.