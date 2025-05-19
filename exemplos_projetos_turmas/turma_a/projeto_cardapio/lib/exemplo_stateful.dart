// exemplo_stateful.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const ItemApp());
}

class ItemApp extends StatelessWidget {
  const ItemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Item App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text('Item List')),
        body: const ItemListView(),
      ),
    );
  }
}

class ItemListView extends StatefulWidget {
  const ItemListView({super.key});

  @override
  State<ItemListView> createState() => _ItemListViewState();
  List<String> get items => ['Item 1', 'Item 2', 'Item 3'];
}

class _ItemListViewState extends State<ItemListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(widget.items[index]));
      },
    );
  }
}
