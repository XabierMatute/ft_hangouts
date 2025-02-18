import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        switch (value) {
          case 'Contacts':
            // Navegar a la lista de contactos
            break;
          case 'New Contact':
            // Navegar a la pantalla de agregar contacto
            break;
          case 'Themes':
            // Cambiar el tema de la app
            break;
          case 'Language':
            // Cambiar idioma
            break;
          case 'About':
            // Mostrar información sobre la app
            break;
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(value: 'New Contact', child: _menuItem(Icons.person_add, 'New Contact')),
        PopupMenuItem(value: 'Themes', child: _menuItem(Icons.palette, 'Themes')),
        PopupMenuItem(value: 'Language', child: _menuItem(Icons.language, 'Language')),
        PopupMenuItem(value: 'About', child: _menuItem(Icons.info, 'About')),
      ],
    );
  }

  Widget _menuItem(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 8),
        Text(label),
      ],
    );
  }
}
