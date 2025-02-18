// import 'package:flutter/material.dart';
// import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ft_hangouts/screens/screens.dart';
import 'package:ft_hangouts/utils/go_to.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        switch (value) {
          case 'Contacts':
            goTo(context, const ContactsScreen());//hmmm
            break;
          case 'New Contact':
            goTo(context, const NewContactScreen());
            break;
          case 'Random Contact':
            // goTo(context, const RandomContactScreen());//hmm
            break;
          case 'Themes':
            goTo(context, const ThemesScreen());
            break;
          case 'Language':
            goTo(context, const LanguageScreen());
            break;
          case 'About':
            goTo(context, const AboutScreen());
            break;

        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(value: 'Contacts', child: _menuItem(Icons.contacts, 'Contacts')),
        PopupMenuItem(value: 'New Contact', child: _menuItem(Icons.person_add, 'New Contact')),
        PopupMenuItem(value: 'Random Contact', child: _menuItem(Icons.casino, 'Random Contact')),
        PopupMenuItem(value: 'Language', child: _menuItem(Icons.language, 'Language')),
        PopupMenuItem(value: 'Themes', child: _menuItem(Icons.palette, 'Themes')),
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