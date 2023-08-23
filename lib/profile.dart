import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Profile Page',
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            Icon(
              Icons.person,
              size: 100,
              color: Colors.white,
            ),
            Text(
              'This is a Profile page',
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
                'Disclamer :\nThe given app has little to no functionality and does not require the use of a profile page, so kindly move back to the homepage.\n\nKindly appreciate the creator of this app too as he seeks Validation for his efforts',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
