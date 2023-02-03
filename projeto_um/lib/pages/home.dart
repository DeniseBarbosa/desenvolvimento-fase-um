import 'package:flutter/material.dart';
import 'package:projeto_um/pages/pageViews/one_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();

  int indexBottonNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Fase 1')),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Denise'),
              accountEmail: Text('denise.luvoir@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amberAccent,
                child: Text('D'),
              ),
            ),
            ListTile(
              title: Text('Pagina 1'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
                setState(() {
                  indexBottonNavigationBar = 0;
                });
              },
            ),
            ListTile(
              title: Text('Pagina 2'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(1);
                Navigator.pop(context);
                setState(() {
                  indexBottonNavigationBar = 1;
                });
              },
            ),
            ListTile(
              title: Text('Pagina 3'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.pop(context);
                setState(() {
                  indexBottonNavigationBar = 2;
                });
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          const PaginaUm(),
          Container(color: Colors.grey),
          Container(color: Colors.tealAccent)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottonNavigationBar,
          onTap: (int index) {
            setState(() {
              indexBottonNavigationBar = index;
            });
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit_sharp), label: 'Tela 1'),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit_sharp), label: 'Tela 2'),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit_sharp), label: 'Tela 3')
          ]),
    );
  }
}
