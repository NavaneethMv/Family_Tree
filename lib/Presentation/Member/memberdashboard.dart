import 'package:flutter/material.dart';

class Memberdashboard extends StatelessWidget {
  const Memberdashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Dashboard'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to the User Dashboard!',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}