import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Settings Page',
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
              size: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'This is a Settings page',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 300,
              child: Text(
                'Disclamer2 :\nThe required information has been provided in the profile page so kindly proceed to that page and read the second paragraph carefully',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
