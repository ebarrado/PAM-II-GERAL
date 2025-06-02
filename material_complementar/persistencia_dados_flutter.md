# Persistência de Dados no Flutter

A persistência de dados é fundamental em aplicativos Flutter para armazenar informações de forma local, garantindo que dados importantes não sejam perdidos quando o app é fechado ou reiniciado.

## Principais Formas de Persistência

| Biblioteca         | Descrição                                   | Relacional/Não Relacional | Linguagem Base | Principal Vantagem           | Principal Desvantagem      | Quando Usar                                              |
|--------------------|---------------------------------------------|---------------------------|---------------|------------------------------|---------------------------|----------------------------------------------------------|
| shared_preferences | Armazenamento simples de pares chave-valor  | Não Relacional            | Dart          | Simplicidade                 | Limitação de dados        | Pequenos dados persistentes como configurações           |
| sqflite            | Interface SQLite direta                     | Relacional                | SQL           | Consultas avançadas          | Complexidade              | Dados estruturados e consultas complexas                 |
| Drift              | ORM para SQLite com integração Dart         | Relacional                | Dart/SQL      | Integração com Dart          | Curva de aprendizado      | Consultas reativas e estrutura de dados complexa         |
| Hive               | Banco de dados NoSQL rápido                 | Não Relacional            | Dart          | Performance                  | Escalabilidade            | Dados simples e alta performance                         |
| Isar               | Banco de dados embutido de alto desempenho  | Não Relacional            | Dart          | Performance e simplicidade   | Complexidade de migração  | Dados grandes e consultas rápidas                        |
| ObjectBox          | Banco de dados NoSQL orientado a objetos    | Não Relacional            | Dart          | Velocidade                   | Suporte limitado          | Modelos de dados complexos e alta performance            |
| Realm              | Banco de dados NoSQL móvel                  | Não Relacional            | Dart          | Sincronização fácil          | Complexidade              | Dados offline com necessidade de sincronização           |
| Floor              | Abstração de SQLite para Dart               | Relacional                | Dart/SQL      | Simplicidade                 | Menos recursos avançados  | Consultas SQL com integração simples em Dart             |
| sembast            | Banco de dados NoSQL baseado em arquivos    | Não Relacional            | Dart          | Simplicidade                 | Performance limitada      | Pequenos bancos de dados locais                          |

### 1. Shared Preferences

Permite armazenar dados simples e persistentes no dispositivo da pessoa usuária. Também possibilita guardar informações básicas de forma duradoura, mesmo após o fechamento do aplicativo. É uma solução prática para manter preferências e pequenas configurações salvas localmente.

- **Pacote:** [`shared_preferences`](https://pub.dev/packages/shared_preferences)
- **Exemplo de uso:**

    ```dart
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', 'usuario123');
    String? username = prefs.getString('username');
    ```

### 2. Arquivos Locais

Permite salvar arquivos diretamente no dispositivo, útil para dados estruturados ou grandes volumes.

- **Pacote:** [`path_provider`](https://pub.dev/packages/path_provider)
- **Exemplo de uso:**

    ```dart
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/dados.txt');
    await file.writeAsString('Conteúdo do arquivo');
    String conteudo = await file.readAsString();
    ```

### 3. Banco de Dados SQLite

Ideal para armazenar dados relacionais e estruturados.

- **Pacote:** [`sqflite`](https://pub.dev/packages/sqflite)

- **Exemplo de uso:**

    ```dart
    Database db = await openDatabase('meubanco.db');
    await db.insert('usuarios', {'nome': 'Maria', 'idade': 25});
    List<Map> usuarios = await db.query('usuarios');
    ```

### 4. Hive

Banco de dados NoSQL rápido e fácil de usar, ótimo para dados não relacionais.

- **Pacote:** [`hive`](https://pub.dev/packages/hive)
- **Exemplo de uso:**
    ```dart
    var box = await Hive.openBox('minhaCaixa');
    await box.put('chave', 'valor');
    var valor = box.get('chave');
    ```

---