import 'package:flutter/material.dart';

import 'package:ft_hangouts/widget/menu_widget.dart';  // Asegúrate de que la ruta sea correcta
import 'package:ft_hangouts/screens/new_contact_screen.dart';  // Asegúrate de que la ruta sea correcta

import 'package:ft_hangouts/utils/go_to.dart';


class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> contacts = [
      'Alice Johnson',
      'Bob Smith',
      'Charlie Brown',
      'Diana White',
      'Eve Black',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Contacts'),
        actions: const [MenuWidget()],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contacts[index]),
            leading: const Icon(Icons.person),
            onTap: () {
              // Aquí puedes añadir la lógica para navegar a la página de detalles del contacto
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tapped on ${contacts[index]}')),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            goTo(context, const NewContactScreen());
        },
        tooltip: 'Add Contact',
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
