import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Importa el paquete para SVG
import 'package:ft_hangouts/l10n/app_localizations.dart';
import 'package:ft_hangouts/main.dart';

class LanguageScreen extends StatelessWidget {
  LanguageScreen({super.key});
  var _context;

  void _changeLanguage(String ln) {
    MyApp.of(_context).changeLocale(Locale(ln));
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    final Locale currentLocale = Localizations.localeOf(context);
    final String currentLanguage = currentLocale.languageCode;

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.language),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding( // Añade un Padding para evitar que el contenido toque los bordes
        padding: const EdgeInsets.all(16.0), // Ajusta el valor según sea necesario
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Alinea el contenido arriba
          crossAxisAlignment: CrossAxisAlignment.start, // Alinea el contenido a la izquierda
          children: [
            Text(
              AppLocalizations.of(context)!.selectLanguage,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Español
            RadioListTile<String>(
              title: Row(
                children: [
                  SizedBox( // Tamaño fijo para la bandera
                    width: 32,
                    height: 24,
                    child: SvgPicture.asset(
                      'assets/flags/es.svg', // Ruta a la bandera de España
                      fit: BoxFit.cover, // Ajusta la imagen al tamaño del SizedBox
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text('Español'),
                ],
              ),
              value: 'es',
              groupValue: currentLanguage,
              onChanged: (String? value) {
                if (value != null) {
                  _changeLanguage(value);
                }
              },
            ),
            // Inglés
            RadioListTile<String>(
              title: Row(
                children: [
                  SizedBox( // Tamaño fijo para la bandera
                    width: 32,
                    height: 24,
                    child: SvgPicture.asset(
                      'assets/flags/en.svg', // Ruta a la bandera del Reino Unido
                      fit: BoxFit.cover, // Ajusta la imagen al tamaño del SizedBox
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text('English'),
                ],
              ),
              value: 'en',
              groupValue: currentLanguage,
              onChanged: (String? value) {
                if (value != null) {
                  _changeLanguage(value);
                }
              },
            ),
            // Euskera
            RadioListTile<String>(
              title: Row(
                children: [
                  SizedBox( // Tamaño fijo para la bandera
                    width: 32,
                    height: 24,
                    child: SvgPicture.asset(
                      'assets/flags/eu.svg', // Ruta a la bandera del País Vasco
                      fit: BoxFit.cover, // Ajusta la imagen al tamaño del SizedBox
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text('Euskera'),
                ],
              ),
              value: 'eu',
              groupValue: currentLanguage,
              onChanged: (String? value) {
                if (value != null) {
                  _changeLanguage(value);
                }
              },
            ),
                        const SizedBox(height: 20),
            Text(
              '${AppLocalizations.of(context)!.currentLanguage} : $currentLanguage',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}