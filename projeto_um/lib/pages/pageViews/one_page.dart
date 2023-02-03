import 'package:flutter/material.dart';

class PaginaUm extends StatelessWidget {
  const PaginaUm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Colors.pink),
          child: const Center(
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
              child: const Center(
                  child: Text(
                'Linha 1',
                style: TextStyle(color: Colors.white),
              )),
            ),
            Container(
              color: const Color.fromARGB(255, 230, 70, 12),
              height: 100,
              width: 202,
              child: const Center(
                  child: Text(
                'Linha 2',
                style: TextStyle(color: Colors.white),
              )),
            )
          ],
        )
      ],
    );
  }
}
