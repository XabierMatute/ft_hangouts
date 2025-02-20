// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get helloWorld => '¡Hola Mundo!';

  @override
  String get appTitle => 'ft_hangouts';

  @override
  String get aboutTitle => 'Acerca de';

  @override
  String get aboutDescription => 'Acerca de esta aplicación: ft_hangouts';

  @override
  String get aboutText => 'Este proyecto está diseñado para ayudarte a familiarizarte con los sistemas móviles. Crearás una aplicación de gestión de contactos que permitirá a los usuarios crear, editar y eliminar contactos, así como enviarles mensajes de texto. La app también ofrecerá múltiples idiomas y permitirá cambiar el color del encabezado.';

  @override
  String get version => 'Versión';

  @override
  String get versionNumber => '0.1.0';

  @override
  String get projectDetails => 'Detalles del proyecto';

  @override
  String get mandatoryFeatures => '• Características obligatorias: Crear, editar, eliminar contactos.\n• Almacenamiento persistente de contactos con SQLite.\n• Enviar y recibir mensajes de texto.\n• Cambiar el color del encabezado desde el menú de la aplicación.\n• Soporte multi-idioma (idioma por defecto y del sistema).\n• Icono de la app: Logo de 42.';

  @override
  String get bonusFeatures => '• Características adicionales: Agregar imágenes a los contactos, crear contactos automáticamente desde mensajes entrantes, diseño material.';

  @override
  String get developer => 'Desarrollador';

  @override
  String get developerName => '@xmatute-';

  @override
  String get close => 'Cerrar';

  @override
  String get contacts => 'Contactos';

  @override
  String get newContact => 'Nuevo contacto';

  @override
  String get randomContact => 'Contacto aleatorio';

  @override
  String get themes => 'Selección de temas';

  @override
  String get language => 'Selección de idioma';

  @override
  String get selectLanguage => 'Selecciona tu idioma preferido';

  @override
  String get themeSelection => 'Selecciona un tema';

  @override
  String get addContact => 'Añadir contacto';

  @override
  String get workInProgress => 'En desarrollo: Funcionalidad en progreso';
}
