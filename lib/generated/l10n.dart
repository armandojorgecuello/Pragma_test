// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class I18n {
  I18n();

  static I18n? _current;

  static I18n get current {
    assert(_current != null,
        'No instance of I18n was loaded. Try to initialize the I18n delegate before accessing I18n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I18n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I18n();
      I18n._current = instance;

      return instance;
    });
  }

  static I18n of(BuildContext context) {
    final instance = I18n.maybeOf(context);
    assert(instance != null,
        'No instance of I18n present in the widget tree. Did you add I18n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I18n? maybeOf(BuildContext context) {
    return Localizations.of<I18n>(context, I18n);
  }

  /// `Catbreeds`
  String get sTitleApp {
    return Intl.message(
      'Catbreeds',
      name: 'sTitleApp',
      desc: '',
      args: [],
    );
  }

  /// `Ver más`
  String get sHomeViewMoreButtom {
    return Intl.message(
      'Ver más',
      name: 'sHomeViewMoreButtom',
      desc: '',
      args: [],
    );
  }

  /// `Inteligencia: `
  String get sHomeInteligence {
    return Intl.message(
      'Inteligencia: ',
      name: 'sHomeInteligence',
      desc: '',
      args: [],
    );
  }

  /// `Tiempo estimado de vida: `
  String get SHomeLifeSpan {
    return Intl.message(
      'Tiempo estimado de vida: ',
      name: 'SHomeLifeSpan',
      desc: '',
      args: [],
    );
  }

  /// `Años`
  String get SHomeYearsText {
    return Intl.message(
      'Años',
      name: 'SHomeYearsText',
      desc: '',
      args: [],
    );
  }

  /// `País de origen: `
  String get SHomeOrigin {
    return Intl.message(
      'País de origen: ',
      name: 'SHomeOrigin',
      desc: '',
      args: [],
    );
  }

  /// `Adaptabilidad: `
  String get sHomeadaptability {
    return Intl.message(
      'Adaptabilidad: ',
      name: 'sHomeadaptability',
      desc: '',
      args: [],
    );
  }

  /// `Nivel:  de Afecto: `
  String get sHomeaffectionLevel {
    return Intl.message(
      'Nivel:  de Afecto: ',
      name: 'sHomeaffectionLevel',
      desc: '',
      args: [],
    );
  }

  /// `Amigable con los niños: `
  String get sHomechildFriendly {
    return Intl.message(
      'Amigable con los niños: ',
      name: 'sHomechildFriendly',
      desc: '',
      args: [],
    );
  }

  /// `Amigable con los perros: `
  String get sHomedogFriendly {
    return Intl.message(
      'Amigable con los perros: ',
      name: 'sHomedogFriendly',
      desc: '',
      args: [],
    );
  }

  /// `Nivel de energia:`
  String get sHomeenergyLevel {
    return Intl.message(
      'Nivel de energia:',
      name: 'sHomeenergyLevel',
      desc: '',
      args: [],
    );
  }

  /// `Aseado: `
  String get sHomegrooming {
    return Intl.message(
      'Aseado: ',
      name: 'sHomegrooming',
      desc: '',
      args: [],
    );
  }

  /// `Problemas de Salud: `
  String get sHomehealthIssues {
    return Intl.message(
      'Problemas de Salud: ',
      name: 'sHomehealthIssues',
      desc: '',
      args: [],
    );
  }

  /// `Nivel de desapego: `
  String get sHomesheddingLevel {
    return Intl.message(
      'Nivel de desapego: ',
      name: 'sHomesheddingLevel',
      desc: '',
      args: [],
    );
  }

  /// `Necesidades sociales: `
  String get sHomesocialNeeds {
    return Intl.message(
      'Necesidades sociales: ',
      name: 'sHomesocialNeeds',
      desc: '',
      args: [],
    );
  }

  /// `Amigable con estraños: `
  String get sHomestrangerFriendly {
    return Intl.message(
      'Amigable con estraños: ',
      name: 'sHomestrangerFriendly',
      desc: '',
      args: [],
    );
  }

  /// `Vocalizacion: `
  String get sHomevocalisation {
    return Intl.message(
      'Vocalizacion: ',
      name: 'sHomevocalisation',
      desc: '',
      args: [],
    );
  }

  /// `Experimental: `
  String get sHomeexperimental {
    return Intl.message(
      'Experimental: ',
      name: 'sHomeexperimental',
      desc: '',
      args: [],
    );
  }

  /// `Sin pelo:`
  String get sHomehairless {
    return Intl.message(
      'Sin pelo:',
      name: 'sHomehairless',
      desc: '',
      args: [],
    );
  }

  /// `Natural: `
  String get sHomenatural {
    return Intl.message(
      'Natural: ',
      name: 'sHomenatural',
      desc: '',
      args: [],
    );
  }

  /// `Raro: `
  String get sHomerare {
    return Intl.message(
      'Raro: ',
      name: 'sHomerare',
      desc: '',
      args: [],
    );
  }

  /// `Rex: `
  String get sHomerex {
    return Intl.message(
      'Rex: ',
      name: 'sHomerex',
      desc: '',
      args: [],
    );
  }

  /// `Cola suprimida: `
  String get sHomesuppressedTail {
    return Intl.message(
      'Cola suprimida: ',
      name: 'sHomesuppressedTail',
      desc: '',
      args: [],
    );
  }

  /// `Piernas Cortas: `
  String get sHomeshortLegs {
    return Intl.message(
      'Piernas Cortas: ',
      name: 'sHomeshortLegs',
      desc: '',
      args: [],
    );
  }

  /// `Wikipedia Url: `
  String get sHomewikipediaUrl {
    return Intl.message(
      'Wikipedia Url: ',
      name: 'sHomewikipediaUrl',
      desc: '',
      args: [],
    );
  }

  /// `Hipoalergénico: `
  String get sHomehypoallergenic {
    return Intl.message(
      'Hipoalergénico: ',
      name: 'sHomehypoallergenic',
      desc: '',
      args: [],
    );
  }

  /// `Referencia de la Image: `
  String get sHomereferenceImageId {
    return Intl.message(
      'Referencia de la Image: ',
      name: 'sHomereferenceImageId',
      desc: '',
      args: [],
    );
  }

  /// `Buscar por la raza `
  String get sHomeSearchByRace {
    return Intl.message(
      'Buscar por la raza ',
      name: 'sHomeSearchByRace',
      desc: '',
      args: [],
    );
  }

  /// `Raza: `
  String get sHomeNameRace {
    return Intl.message(
      'Raza: ',
      name: 'sHomeNameRace',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I18n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I18n> load(Locale locale) => I18n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
