import 'package:flutter/material.dart';
import 'package:ft_hangouts/screens/screens.dart';
import 'package:ft_hangouts/utils/go_to.dart';
import 'package:ft_hangouts/l10n/app_localizations.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        switch (value) {
          case 'Contacts':
            goTo(context, const ContactsScreen());
            break;
          case 'New Contact':
            goTo(context, const NewContactScreen());
            break;
          case 'Random Contact':
            // goTo(context, const RandomContactScreen());
            break;
          case 'Themes':
            goTo(context, ThemesScreen());
            break;
          case 'Language':
            goTo(context, LanguageScreen());
            break;
          case 'About':
            goTo(context, const AboutScreen());
            break;
          case 'Debug Hello World':
            String? hw = AppLocalizations.of(context)!.helloWorld;

            if (hw != null){
              debugPrint(hw);
            }
            else {
              debugPrint("NULL");
            }
            break;
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(value: 'Contacts', child: _menuItem(Icons.contacts, AppLocalizations.of(context)!.contacts)),
        PopupMenuItem(value: 'New Contact', child: _menuItem(Icons.person_add, AppLocalizations.of(context)!.newContact)),
        PopupMenuItem(value: 'Random Contact', child: _menuItem(Icons.casino, AppLocalizations.of(context)!.randomContact)),
        PopupMenuItem(value: 'Language', child: _menuItem(Icons.language, AppLocalizations.of(context)!.language)),
        PopupMenuItem(value: 'Themes', child: _menuItem(Icons.palette, AppLocalizations.of(context)!.themes)),
        PopupMenuItem(value: 'About', child: _menuItem(Icons.info, AppLocalizations.of(context)!.aboutTitle)),
        PopupMenuItem(value: 'Debug Hello World', child: _menuItem(Icons.bug_report, 'Debug Hello World')),
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