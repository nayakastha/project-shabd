import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shabd/services/i18n/localisation/demo_localisation.dart';

const String LAGUAGE_CODE = 'languageCode';

//languages code
const String ENGLISH = 'en';
const String HINDI = 'hi';

Future<Locale> setLocale(String languageCode) async {
  final GetStorage _localStorage = GetStorage();
  await _localStorage.write(LAGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  final GetStorage _localStorage = GetStorage();
  String languageCode = _localStorage.read(LAGUAGE_CODE) ?? "en";
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case ENGLISH:
      return Locale(ENGLISH, 'US');
    case HINDI:
      return Locale(HINDI, "IN");
    default:
      return Locale(ENGLISH, 'US');
  }
}

String? getTranslated(BuildContext context, String key) {
  return DemoLocalization.of(context)!.translate(key);
}
