import 'package:flutter/material.dart';

void main() => runApp(const CzestnyCheckApp());

class CzestnyCheckApp extends StatelessWidget {
  const CzestnyCheckApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Czestny Check — Web',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF6750A4),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFAF6FF),
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Czestny Check — Web')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: Card(
            elevation: 2,
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('HonestCheck', style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: cs.primary)),
                  const SizedBox(height: 8),
                  const Text('Минимальный веб-скелет на Flutter для HonestCheck.'),
                  const SizedBox(height: 16),
                  Wrap(spacing: 12, runSpacing: 12, children: [
                    FilledButton(onPressed: () {}, child: const Text('Начать')),
                    OutlinedButton(onPressed: () {}, child: const Text('Документация')),
                  ]),
                  const SizedBox(height: 8),
                  Text('build: ${String.fromEnvironment('FLUTTER_BUILD_MODE', defaultValue: 'release')}', style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
