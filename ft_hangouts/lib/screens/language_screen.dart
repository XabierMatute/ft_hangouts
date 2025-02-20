// language_screen.dart
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language Selection'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text(
          'WIP: Aquí iría la selección de idiomas @metrobilbao iratxe desbloqueame',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
