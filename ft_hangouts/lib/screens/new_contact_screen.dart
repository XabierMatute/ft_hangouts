// new_contact_screen.dart
import 'package:flutter/material.dart';

class NewContactScreen extends StatelessWidget {
  const NewContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Contact'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text(
          'WIP: Aquí iría la pantalla para agregar un nuevo contacto',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
