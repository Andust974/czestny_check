import 'package:flutter/material.dart';

void main() => runApp(const CzestnyCheckApp());

class CzestnyCheckApp extends StatelessWidget {
  const CzestnyCheckApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Czestny Check — Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF6750A4),
        scaffoldBackgroundColor: const Color(0xFFFAF6FF),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Czestny Check — Web'),
        backgroundColor: scheme.surface,
        surfaceTintColor: Colors.transparent,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 760),
          child: Card(
            elevation: 2,
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('HonestCheck (PR preview)',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 8),
                  Text(
                    'Мини-лендинг на Flutter Web. Здесь будет публичная страница проекта.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 12, runSpacing: 12, alignment: WrapAlignment.center,
                    children: [
                      FilledButton(onPressed: () {}, child: const Text('Войти (заглушка)')),
                      OutlinedButton(onPressed: () {}, child: const Text('Подробнее (заглушка)')),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text('© 2025 HonestCheck (PR preview)',
                      style: TextStyle(color: scheme.onSurfaceVariant)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
