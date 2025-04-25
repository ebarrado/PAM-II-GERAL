# Usando o `Image.network` no Flutter

O widget `Image.network` é utilizado para exibir imagens diretamente de uma URL em aplicativos Flutter. Ele é ideal para carregar imagens hospedadas na web.

## Propriedades Principais

- **`src`**: A URL da imagem.
- **`width` e `height`**: Define a largura e altura da imagem.
- **`fit`**: Controla como a imagem será ajustada dentro do espaço disponível (ex.: `BoxFit.cover`, `BoxFit.contain`).
- **`loadingBuilder`**: Permite exibir um widget enquanto a imagem está sendo carregada.
- **`errorBuilder`**: Define um widget a ser exibido caso ocorra um erro ao carregar a imagem.

## Exemplo Básico

```dart
import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(title: const Text('Exemplo Image.network')),
                body: Center(
                    child: Image.network(
                        'https://via.placeholder.com/150',
                    ),
                ),
            ),
        );
    }
}
```

## Exemplo com `loadingBuilder` e `errorBuilder`

```dart
import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(title: const Text('Exemplo Avançado')),
                body: Center(
                    child: Image.network(
                        'https://via.placeholder.com/150',
                        loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes != null
                                        ? loadingProgress.cumulativeBytesLoaded /
                                                (loadingProgress.expectedTotalBytes ?? 1)
                                        : null,
                            );
                        },
                        errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.error, size: 50, color: Colors.red);
                        },
                    ),
                ),
            ),
        );
    }
}
```

## Considerações

- Certifique-se de que a URL fornecida seja acessível e válida.
- Para evitar problemas de carregamento, considere usar placeholders ou widgets de fallback.

## Widgets de Placeholders ou Widgets de Fallback?

Widgets de placeholders ou widgets de fallback são usados para melhorar a experiência do usuário ao lidar com imagens ou outros conteúdos que podem demorar para carregar ou falhar no carregamento.

- **Placeholders**: São widgets exibidos temporariamente enquanto o conteúdo principal (como uma imagem) está sendo carregado. Por exemplo, você pode usar um `CircularProgressIndicator` ou uma imagem genérica como placeholder.

- **Fallbacks**: São widgets exibidos permanentemente no lugar do conteúdo principal caso ocorra um erro no carregamento. Por exemplo, você pode exibir um ícone de erro ou uma mensagem informativa.

Esses widgets ajudam a manter a interface do usuário funcional e visualmente agradável, mesmo em situações de falha ou lentidão no carregamento de recursos.

## Exemplos com Placeholders e Fallbacks

### Exemplo com Placeholder usando `CircularProgressIndicator`

```dart
import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(title: const Text('Placeholder com Progress Indicator')),
                body: Center(
                    child: Image.network(
                        'https://via.placeholder.com/150',
                        loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return const Center(
                                child: CircularProgressIndicator(),
                            );
                        },
                    ),
                ),
            ),
        );
    }
}
```

### Exemplo com Placeholder usando uma Imagem Genérica

```dart
import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(title: const Text('Placeholder com Imagem Genérica')),
                body: Center(
                    child: Image.network(
                        'https://via.placeholder.com/150',
                        loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Image.asset('assets/placeholder.png');
                        },
                    ),
                ),
            ),
        );
    }
}
```

### Exemplo com Fallback para Ícone de Erro

```dart
import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(title: const Text('Fallback com Ícone de Erro')),
                body: Center(
                    child: Image.network(
                        'https://invalid-url.com/image.png',
                        errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.error, size: 50, color: Colors.red);
                        },
                    ),
                ),
            ),
        );
    }
}
```

### Exemplo com Fallback para Texto Informativo

```dart
import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(title: const Text('Fallback com Texto Informativo')),
                body: Center(
                    child: Image.network(
                        'https://invalid-url.com/image.png',
                        errorBuilder: (context, error, stackTrace) {
                            return const Text(
                                'Erro ao carregar a imagem',
                                style: TextStyle(color: Colors.red, fontSize: 16),
                            );
                        },
                    ),
                ),
            ),
        );
    }
}
```