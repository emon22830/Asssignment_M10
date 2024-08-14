import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greeting App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Greeting App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello, World!',
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
            const SizedBox(height: 10),
            const Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
              height: 100,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Define the action for the button here
              },
              child: const Text('Press Me'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Background color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
