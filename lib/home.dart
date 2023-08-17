import 'package:flutter/material.dart';
import 'package:listapp/cards.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selected = 0;
  void _onItemTapped(int index) {
    setState(
      () {
        selected = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.centerLeft,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 1, 4, 57),
              Color.fromARGB(255, 58, 4, 68),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'assets/images/work.png',
                alignment: Alignment.centerLeft,
                height: 200,
                width: 200,
              ),
              const SizedBox(height: 30),
              const Text(
                'General List',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline),
              ),
              const SizedBox(height: 50),
              Expanded(
                child: ListView(
                  children: const <Widget>[
                    Cardpreset(
                      cardBorderColor: Colors.red,
                      imageAsset: 'assets/images/google.png',
                      tileBackgroundColor: Colors.white,
                      tileBorderColor: Colors.black,
                      title: 'Google',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              label: 'Settings',
            ),
          ],
          currentIndex: selected,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
