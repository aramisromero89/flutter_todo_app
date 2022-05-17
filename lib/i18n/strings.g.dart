/*
 * Generated file. Do not edit.
 *
 * Locales: 2
 * Strings: 28 (14.0 per locale)
 *
 * Built on 2022-05-17 at 20:38 UTC
 */

import 'package:flutter/widgets.dart';

const AppLocale _baseLocale = AppLocale.en;
AppLocale _currLocale = _baseLocale;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale {
  en, // 'en' (base locale, fallback)
  es, // 'es'
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn _t = _currLocale.translations;
_StringsEn get t => _t;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
  Translations._(); // no constructor

  static _StringsEn of(BuildContext context) {
    final inheritedWidget = context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>();
    if (inheritedWidget == null) {
      throw 'Please wrap your app with "TranslationProvider".';
    }
    return inheritedWidget.translations;
  }
}

class LocaleSettings {
  LocaleSettings._(); // no constructor

  /// Uses locale of the device, fallbacks to base locale.
  /// Returns the locale which has been set.
  static AppLocale useDeviceLocale() {
    final locale = AppLocaleUtils.findDeviceLocale();
    return setLocale(locale);
  }

  /// Sets locale
  /// Returns the locale which has been set.
  static AppLocale setLocale(AppLocale locale) {
    _currLocale = locale;
    _t = _currLocale.translations;

    // force rebuild if TranslationProvider is used
    _translationProviderKey.currentState?.setLocale(_currLocale);

    return _currLocale;
  }

  /// Sets locale using string tag (e.g. en_US, de-DE, fr)
  /// Fallbacks to base locale.
  /// Returns the locale which has been set.
  static AppLocale setLocaleRaw(String rawLocale) {
    final locale = AppLocaleUtils.parse(rawLocale);
    return setLocale(locale);
  }

  /// Gets current locale.
  static AppLocale get currentLocale {
    return _currLocale;
  }

  /// Gets base locale.
  static AppLocale get baseLocale {
    return _baseLocale;
  }

  /// Gets supported locales in string format.
  static List<String> get supportedLocalesRaw {
    return AppLocale.values.map((locale) => locale.languageTag).toList();
  }

  /// Gets supported locales (as Locale objects) with base locale sorted first.
  static List<Locale> get supportedLocales {
    return AppLocale.values.map((locale) => locale.flutterLocale).toList();
  }
}

/// Provides utility functions without any side effects.
class AppLocaleUtils {
  AppLocaleUtils._(); // no constructor

  /// Returns the locale of the device as the enum type.
  /// Fallbacks to base locale.
  static AppLocale findDeviceLocale() {
    final String? deviceLocale = WidgetsBinding.instance?.window.locale.toLanguageTag();
    if (deviceLocale != null) {
      final typedLocale = _selectLocale(deviceLocale);
      if (typedLocale != null) {
        return typedLocale;
      }
    }
    return _baseLocale;
  }

  /// Returns the enum type of the raw locale.
  /// Fallbacks to base locale.
  static AppLocale parse(String rawLocale) {
    return _selectLocale(rawLocale) ?? _baseLocale;
  }
}

// context enums

// interfaces generated as mixins

// translation instances

late _StringsEn _translationsEn = _StringsEn.build();
late _StringsEs _translationsEs = _StringsEs.build();

// extensions for AppLocale

extension AppLocaleExtensions on AppLocale {
  /// Gets the translation instance managed by this library.
  /// [TranslationProvider] is using this instance.
  /// The plural resolvers are set via [LocaleSettings].
  _StringsEn get translations {
    switch (this) {
      case AppLocale.en:
        return _translationsEn;
      case AppLocale.es:
        return _translationsEs;
    }
  }

  /// Gets a new translation instance.
  /// [LocaleSettings] has no effect here.
  /// Suitable for dependency injection and unit tests.
  ///
  /// Usage:
  /// final t = AppLocale.en.build(); // build
  /// String a = t.my.path; // access
  _StringsEn build() {
    switch (this) {
      case AppLocale.en:
        return _StringsEn.build();
      case AppLocale.es:
        return _StringsEs.build();
    }
  }

  String get languageTag {
    switch (this) {
      case AppLocale.en:
        return 'en';
      case AppLocale.es:
        return 'es';
    }
  }

  Locale get flutterLocale {
    switch (this) {
      case AppLocale.en:
        return const Locale.fromSubtags(languageCode: 'en');
      case AppLocale.es:
        return const Locale.fromSubtags(languageCode: 'es');
    }
  }
}

extension StringAppLocaleExtensions on String {
  AppLocale? toAppLocale() {
    switch (this) {
      case 'en':
        return AppLocale.en;
      case 'es':
        return AppLocale.es;
      default:
        return null;
    }
  }
}

// wrappers

GlobalKey<_TranslationProviderState> _translationProviderKey = GlobalKey<_TranslationProviderState>();

class TranslationProvider extends StatefulWidget {
  TranslationProvider({required this.child}) : super(key: _translationProviderKey);

  final Widget child;

  @override
  _TranslationProviderState createState() => _TranslationProviderState();

  static _InheritedLocaleData of(BuildContext context) {
    final inheritedWidget = context.dependOnInheritedWidgetOfExactType<_InheritedLocaleData>();
    if (inheritedWidget == null) {
      throw 'Please wrap your app with "TranslationProvider".';
    }
    return inheritedWidget;
  }
}

class _TranslationProviderState extends State<TranslationProvider> {
  AppLocale locale = _currLocale;

  void setLocale(AppLocale newLocale) {
    setState(() {
      locale = newLocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedLocaleData(
      locale: locale,
      child: widget.child,
    );
  }
}

class _InheritedLocaleData extends InheritedWidget {
  final AppLocale locale;
  Locale get flutterLocale => locale.flutterLocale; // shortcut
  final _StringsEn translations; // store translations to avoid switch call

  _InheritedLocaleData({required this.locale, required Widget child})
      : translations = locale.translations,
        super(child: child);

  @override
  bool updateShouldNotify(_InheritedLocaleData oldWidget) {
    return oldWidget.locale != locale;
  }
}

// pluralization feature not used

// helpers

final _localeRegex = RegExp(r'^([a-z]{2,8})?([_-]([A-Za-z]{4}))?([_-]?([A-Z]{2}|[0-9]{3}))?$');
AppLocale? _selectLocale(String localeRaw) {
  final match = _localeRegex.firstMatch(localeRaw);
  AppLocale? selected;
  if (match != null) {
    final language = match.group(1);
    final country = match.group(5);

    // match exactly
    selected = AppLocale.values.cast<AppLocale?>().firstWhere((supported) => supported?.languageTag == localeRaw.replaceAll('_', '-'), orElse: () => null);

    if (selected == null && language != null) {
      // match language
      selected = AppLocale.values.cast<AppLocale?>().firstWhere((supported) => supported?.languageTag.startsWith(language) == true, orElse: () => null);
    }

    if (selected == null && country != null) {
      // match country
      selected = AppLocale.values.cast<AppLocale?>().firstWhere((supported) => supported?.languageTag.contains(country) == true, orElse: () => null);
    }
  }
  return selected;
}

// translations

// Path: <root>
class _StringsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsEn.build();

  /// Access flat map
  dynamic operator [](String key) => _flatMap[key];

  // Internal flat map initialized lazily
  late final Map<String, dynamic> _flatMap = _buildFlatMap();

  late final _StringsEn _root = this; // ignore: unused_field

  // Translations
  late final _StringsGeneralEn general = _StringsGeneralEn._(_root);
  late final _StringsAuthEn auth = _StringsAuthEn._(_root);
  late final _StringsPagesEn pages = _StringsPagesEn._(_root);
  late final _StringsTaskEn task = _StringsTaskEn._(_root);
}

// Path: general
class _StringsGeneralEn {
  _StringsGeneralEn._(this._root);

  final _StringsEn _root; // ignore: unused_field

  // Translations
  String get language => 'Language';
}

// Path: auth
class _StringsAuthEn {
  _StringsAuthEn._(this._root);

  final _StringsEn _root; // ignore: unused_field

  // Translations
  String get o => 'or';
  String get signup => 'Sign Up';
  String get signin => 'Sign In';
  String get signout => 'Logout';
  String get cancel => 'Cancel';
  String get username => 'Username';
  String get password => 'Password';
  String get repeatPassword => 'Repeat password';
  String get passwordMustMatch => 'Passwords must match';
}

// Path: pages
class _StringsPagesEn {
  _StringsPagesEn._(this._root);

  final _StringsEn _root; // ignore: unused_field

  // Translations
  String get home => 'Home';
}

// Path: task
class _StringsTaskEn {
  _StringsTaskEn._(this._root);

  final _StringsEn _root; // ignore: unused_field

  // Translations
  String get addHint => 'Type to add new task';
  String get ok => 'OK';
  String get cancel => 'Cancel';
}

// Path: <root>
class _StringsEs implements _StringsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsEs.build();

  /// Access flat map
  @override
  dynamic operator [](String key) => _flatMap[key];

  // Internal flat map initialized lazily
  @override
  late final Map<String, dynamic> _flatMap = _buildFlatMap();

  @override
  late final _StringsEs _root = this; // ignore: unused_field

  // Translations
  @override
  late final _StringsGeneralEs general = _StringsGeneralEs._(_root);
  @override
  late final _StringsAuthEs auth = _StringsAuthEs._(_root);
  @override
  late final _StringsPagesEs pages = _StringsPagesEs._(_root);
  @override
  late final _StringsTaskEs task = _StringsTaskEs._(_root);
}

// Path: general
class _StringsGeneralEs implements _StringsGeneralEn {
  _StringsGeneralEs._(this._root);

  @override
  final _StringsEs _root; // ignore: unused_field

  // Translations
  @override
  String get language => 'Idioma';
}

// Path: auth
class _StringsAuthEs implements _StringsAuthEn {
  _StringsAuthEs._(this._root);

  @override
  final _StringsEs _root; // ignore: unused_field

  // Translations
  @override
  String get o => 'ó';
  @override
  String get signup => 'Registrarse';
  @override
  String get signin => 'Iniciar sesión';
  @override
  String get signout => 'Cerrar sesión';
  @override
  String get cancel => 'Cancelar';
  @override
  String get username => 'Usuario';
  @override
  String get password => 'Contraseña';
  @override
  String get repeatPassword => 'Repetir contraseña';
  @override
  String get passwordMustMatch => 'Las contraseñas deben coincidir';
}

// Path: pages
class _StringsPagesEs implements _StringsPagesEn {
  _StringsPagesEs._(this._root);

  @override
  final _StringsEs _root; // ignore: unused_field

  // Translations
  @override
  String get home => 'Inicio';
}

// Path: task
class _StringsTaskEs implements _StringsTaskEn {
  _StringsTaskEs._(this._root);

  @override
  final _StringsEs _root; // ignore: unused_field

  // Translations
  @override
  String get addHint => 'Escriba para agregar tarea';
  @override
  String get ok => 'Aceptar';
  @override
  String get cancel => 'Cancelar';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
  Map<String, dynamic> _buildFlatMap() {
    return <String, dynamic>{
      'general.language': 'Language',
      'auth.o': 'or',
      'auth.signup': 'Sign Up',
      'auth.signin': 'Sign In',
      'auth.signout': 'Logout',
      'auth.cancel': 'Cancel',
      'auth.username': 'Username',
      'auth.password': 'Password',
      'auth.repeatPassword': 'Repeat password',
      'auth.passwordMustMatch': 'Passwords must match',
      'pages.home': 'Home',
      'task.addHint': 'Type to add new task',
      'task.ok': 'OK',
      'task.cancel': 'Cancel',
    };
  }
}

extension on _StringsEs {
  Map<String, dynamic> _buildFlatMap() {
    return <String, dynamic>{
      'general.language': 'Idioma',
      'auth.o': 'ó',
      'auth.signup': 'Registrarse',
      'auth.signin': 'Iniciar sesión',
      'auth.signout': 'Cerrar sesión',
      'auth.cancel': 'Cancelar',
      'auth.username': 'Usuario',
      'auth.password': 'Contraseña',
      'auth.repeatPassword': 'Repetir contraseña',
      'auth.passwordMustMatch': 'Las contraseñas deben coincidir',
      'pages.home': 'Inicio',
      'task.addHint': 'Escriba para agregar tarea',
      'task.ok': 'Aceptar',
      'task.cancel': 'Cancelar',
    };
  }
}
