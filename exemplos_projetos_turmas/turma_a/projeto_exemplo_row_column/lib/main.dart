// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const AgendaRowsColumn());
}

class AgendaRowsColumn extends StatelessWidget {
  const AgendaRowsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,

          title: Text("Agenda", style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("1.jpg", height: 80, width: 80),
                Text("Primeiro Item da Agenda"),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("2.png", height: 80, width: 80),
                Text("Primeiro Item da Agenda"),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                Row(children: [Container(color: Colors.amber, height: 220)]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("4.jpg", height: 80, width: 80),
                Text("Primeiro Item da Agenda"),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Configurações",
            ),
          ],
        ),
      ),
    );
  }
}
