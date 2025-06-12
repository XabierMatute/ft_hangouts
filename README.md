# ft_hangouts

## Overview

**ft_hangouts** is a work-in-progress contact management application developed using **Flutter**. The project is designed to help users create, edit, and delete contacts, send and receive text messages, and customize the app's appearance. It also includes multi-language support and persistent contact storage using SQLite. This project is part of a learning journey to become familiar with mobile systems and Flutter development.

The application is modular, with features implemented across multiple screens, widgets, and utilities. While some functionalities are still under development, the current implementation provides a solid foundation for further enhancements.

## Features

### Mandatory Features
- **Contact Management**:
  - Create, edit, and delete contacts.
  - Persistent contact storage using SQLite.
- **Messaging**:
  - Send and receive text messages.
- **Customization**:
  - Change the header color through the app’s menu.
- **Multi-Language Support**:
  - Support for English, Spanish, and Euskera.
  - Users can select their preferred language.
- **App Icon**:
  - Custom icon featuring the 42 logo.

### Bonus Features (Planned)
- Add pictures to contacts.
- Auto-create contacts from incoming messages.
- Implement material design for enhanced UI/UX.

### Current Implementation
- **Contacts Screen**: Displays a list of contacts with options to add new ones.
- **New Contact Screen**: Placeholder for adding new contacts (WIP).
- **Language Selection**: Allows users to switch between supported languages.
- **Themes Selection**: Enables customization of the app's appearance.
- **About Screen**: Provides project details and developer information.

## Code Structure

### Screens
- **Contacts Screen**: [`contacts_screen.dart`](lib/screens/contacts_screen.dart) - Displays a list of contacts and allows navigation to the new contact screen.
- **New Contact Screen**: [`new_contact_screen.dart`](lib/screens/new_contact_screen.dart) - Placeholder for adding new contacts.
- **Language Screen**: [`language_screen.dart`](lib/screens/language_screen.dart) - Allows users to select their preferred language.
- **Themes Screen**: [`themes_screen.dart`](lib/screens/themes_screen.dart) - Enables theme customization.
- **About Screen**: [`about_screen.dart`](lib/screens/about_screen.dart) - Displays project details and developer information.

### Widgets
- **Menu Widget**: [`menu_widget.dart`](lib/widget/menu_widget.dart) - Provides a popup menu for navigation between screens.

### Utilities
- **Navigation Utility**: [`go_to.dart`](lib/utils/go_to.dart) - Simplifies navigation between screens.

### Localization
- **Localization Files**:
  - [`app_localizations.dart`](lib/l10n/app_localizations.dart): Base localization class.
  - [`app_localizations_en.dart`](lib/l10n/app_localizations_en.dart): English translations.
  - [`app_localizations_es.dart`](lib/l10n/app_localizations_es.dart): Spanish translations.
  - [`app_localizations_eu.dart`](lib/l10n/app_localizations_eu.dart): Euskera translations.

### Configuration
- **Pubspec File**: [`pubspec.yaml`](pubspec.yaml) - Defines dependencies and assets.
- **Android Manifest**: [`AndroidManifest.xml`](android/app/src/main/AndroidManifest.xml) - Configures Android-specific settings.
- **iOS Delegate**: [`AppDelegate.swift`](ios/Runner/AppDelegate.swift) - Configures iOS-specific settings.

## Competencies Involved

### Technical Skills
- **Flutter Development**: Building modular and scalable applications using Flutter.
- **State Management**: Managing app state for dynamic language and theme changes.
- **Localization**: Implementing multi-language support with localization files.
- **Persistent Storage**: Planning for SQLite integration for contact storage.

### Problem-Solving
- **UI/UX Design**: Creating intuitive and user-friendly interfaces.
- **Navigation**: Implementing seamless navigation between screens.
- **Customization**: Allowing users to personalize the app's appearance.

### Collaboration
- **Code Organization**: Structuring the project for readability and maintainability.
- **Documentation**: Writing clear comments and a comprehensive README.

## How to Run

1. Clone the repository.
2. Install dependencies:
   ```sh
   flutter pub get
   ```
3. Run the application:
   ```sh
   flutter run
   ```

## Status

This project is a **work-in-progress**. Current focus areas include:
- Implementing SQLite for contact storage.
- Adding functionality to the new contact screen.
- Enhancing UI/UX with material design.

## Acknowledgments

Special thanks to the **42 School** and the Flutter community for providing resources and inspiration for this project.

## Developer

- **Name**: @xmatute-
- **Version**: 0.1.0