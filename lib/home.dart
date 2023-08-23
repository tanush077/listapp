import 'package:flutter/material.dart';
import 'package:listapp/cardcons.dart';
import 'package:listapp/profile.dart';
import 'package:listapp/settings.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0;
  final pages = [const Home(), const Profile(), const Settings()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: pages[index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 52, 52, 52),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(
                    () {
                      index = 0;
                    },
                  );
                },
                icon: index == 0
                    ? const Icon(Icons.home, color: Colors.blue)
                    : const Icon(
                        Icons.home_filled,
                        color: Colors.white,
                      ),
                color: Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(
                    () {
                      index = 1;
                    },
                  );
                },
                icon: index == 1
                    ? const Icon(
                        Icons.person,
                        color: Colors.blue,
                      )
                    : const Icon(Icons.person_outline, color: Colors.white),
                color: Colors.white,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    setState(
                      () {
                        index = 2;
                      },
                    );
                  },
                  icon: index == 2
                      ? const Icon(Icons.settings, color: Colors.blue)
                      : const Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                ),
                label: 'Settings'),
          ],
          selectedLabelStyle: const TextStyle(color: Colors.white),
          currentIndex: index,
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 22, 22, 22),
          Color.fromARGB(255, 22, 22, 22)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
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
            'Trial list :',
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
              children: Cardcons,
            ),
          ),
        ],
      ),
    );
  }
}
