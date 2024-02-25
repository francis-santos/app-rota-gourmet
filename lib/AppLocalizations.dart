import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppLocalizations {
  static const LocalizationsDelegate<AppLocalizations> delegate =
  _AppLocalizationsDelegate();

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  final Map<String, String> translations;

  AppLocalizations(this.translations);

  String translate(String key) {
    return translations[key] ?? '';
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'pt'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final String langCode = locale.languageCode;
    final String? countryCode = locale.countryCode;
    String languageCode = langCode;

    if (langCode == 'pt' && countryCode == 'BR') {
      // Verifica se pt_BR é suportado pelo CupertinoLocalizations
      final supported = await _isSupportedCupertinoLocalizations(locale);
      if (!supported) {
        languageCode = 'en'; // Se não suportado, define o idioma para inglês
      }
    }

    final Map<String, dynamic> jsonMap = await rootBundle
        .loadString('lib/l10n/app_${languageCode}_${locale.countryCode}.arb')
        .then((String jsonString) => json.decode(jsonString));
    final Map<String, String> translations =
    jsonMap.map((key, value) => MapEntry(key, value.toString()));
    return AppLocalizations(translations);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;

  Future<bool> _isSupportedCupertinoLocalizations(Locale locale) async {
    return GlobalCupertinoLocalizations.delegate.isSupported(locale);
  }
}
