import 'package:flutter/material.dart';
import 'package:ft_hangouts/main.dart';
import 'package:ft_hangouts/l10n/app_localizations.dart';

class ThemesScreen extends StatefulWidget {
  ThemesScreen({super.key});

  final Map<String, ThemeData> themes = {
    'Default Light Theme': ThemeData.light(),
    'Default Dark Theme': ThemeData.dark(),
    'Fallout': ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: Colors.green,
        secondary: Colors.greenAccent,
        onPrimary: Colors.black,
        onSecondary: Colors.black,
      ),
    ),
  };


  @override
  _ThemesScreenState createState() => _ThemesScreenState();
}

class _ThemesScreenState extends State<ThemesScreen> {
  String _selectedThemeKey = 'Default Light Theme';

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    _selectedThemeKey =
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _selectedThemeKey = widget.themes.entries
        .firstWhere(
          (entry) => entry.value == Theme.of(context),
          orElse: () => widget.themes.entries.first,
        )
        .key;
  }

  void _changeTheme(String themeKey) {
    setState(() {
      _selectedThemeKey = themeKey;
    });
    MyApp.of(context).changeTheme(widget.themes[themeKey]!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.themes),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.themeSelection,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ...widget.themes.entries.map((entry) {
              return RadioListTile<String>(
                title: Text(entry.key),
                value: entry.key,
                groupValue: _selectedThemeKey,
                onChanged: (String? value) {
                  if (value != null) {
                    _changeTheme(value);
                  }
                },
              );
            }).toList(),
            const SizedBox(height: 20),
            Text(
              'Current Theme: ${Theme.of(context).brightness == Brightness.dark ? 'Dark' : 'Light'}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}