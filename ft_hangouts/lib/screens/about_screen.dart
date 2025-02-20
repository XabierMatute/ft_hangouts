import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About This App: ft_hangouts',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'The Grand Ambassador\n\n'
              'This project is designed to help you become familiar with mobile systems. '
              'You will be creating a contact management application that allows users to '
              'create, edit, and delete contacts, as well as send text messages to them. '
              'The app will also offer multiple languages and allow users to change the header color.\n\n'
              'Version: 4',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 32),
            const Text(
              'Project Details:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '• Mandatory Features: Create, edit, delete contacts.\n'
              '• Persistent contact storage using SQLite.\n'
              '• Send and receive text messages.\n'
              '• Change header color through the app’s menu.\n'
              '• Multi-language support (default language and system language).\n'
              '• App icon: 42 logo.\n'
              '• Bonus Features: Add pictures to contacts, auto-create contacts from incoming messages, material design.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 32),
            const Text(
              'Developer:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '@xmatute-',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 32),
            const Text(
              'Version: 0.1.0',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 32), // Espacio adicional antes del botón
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}