import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Czestny Check',
      theme: ThemeData(colorSchemeSeed: const Color(0xFF6C48B7), useMaterial3: true),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Czestny Check — Web')),
      body: const Center(child: Text('Hello, HonestCheck!')),
    );
  }
}
