// themes_screen.dart
import 'package:flutter/material.dart';
import 'package:ft_hangouts/main.dart';

class ThemesScreen extends StatelessWidget {
  const ThemesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Themes Selection'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text(
          'WIP: Aquí iría la selección de temas',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
