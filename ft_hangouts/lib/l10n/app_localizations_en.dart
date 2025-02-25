// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Jokin World!';

  @override
  String get appTitle => 'ft_hangouts';

  @override
  String get aboutTitle => 'About';

  @override
  String get aboutDescription => 'About This App: ft_hangouts';

  @override
  String get aboutText => 'This project is designed to help you become familiar with mobile systems. You will be creating a contact management application that allows users to create, edit, and delete contacts, as well as send text messages to them. The app will also offer multiple languages and allow users to change the header color.';

  @override
  String get version => 'Version';

  @override
  String get versionNumber => '0.1.0';

  @override
  String get projectDetails => 'Project Details';

  @override
  String get mandatoryFeatures => '• Mandatory Features: Create, edit, delete contacts.\n• Persistent contact storage using SQLite.\n• Send and receive text messages.\n• Change header color through the app’s menu.\n• Multi-language support (default language and system language).\n• App icon: 42 logo.';

  @override
  String get bonusFeatures => '• Bonus Features: Add pictures to contacts, auto-create contacts from incoming messages, material design.';

  @override
  String get developer => 'Developer';

  @override
  String get developerName => '@xmatute-';

  @override
  String get close => 'Close';

  @override
  String get contacts => 'Contacts';

  @override
  String get newContact => 'New Contact';

  @override
  String get randomContact => 'Random Contact';

  @override
  String get themes => 'Themes Selection';

  @override
  String get language => 'Language Selection';

  @override
  String get selectLanguage => 'Select your preferred language';

  @override
  String get currentLanguage => 'Current language';

  @override
  String get themeSelection => 'Select a theme';

  @override
  String get addContact => 'Add Contact';

  @override
  String get workInProgress => 'WIP: Feature under development';

  @override
  String get confirmExit => 'Are you sure you want to exit?';

  @override
  String get exit => 'Exit';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get save => 'Save';

  @override
  String get unsavedChanges => 'You have unsaved changes. Do you want to save them?';
}
