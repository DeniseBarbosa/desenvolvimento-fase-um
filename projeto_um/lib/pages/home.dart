import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Fase 1')),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.pink),
            child: Center(
              child: Text(
                'Desenvolvimento mobile',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                color: Colors.brown,
                height: 100,
                width: 190,
                child: Center(
                    child: Text(
                  'Linha 1',
                  style: TextStyle(color: Colors.white),
                )),
              ),
              Container(
                color: Color.fromARGB(255, 230, 70, 12),
                height: 100,
                width: 202,
                child: Center(
                    child: Text(
                  'Linha 2',
                  style: TextStyle(color: Colors.white),
                )),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_sharp), label: 'Menu 1'),
        BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_sharp), label: 'Menu 2'),
        BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_sharp), label: 'Menu 3')
      ]),
    );
  }
}
