import 'translations.g.dart';

/// Home module translations
class TranslationsManager extends Translations {
  late final AppLocale _appLocale;

  /// Creates an [TranslationsManager] with the current device locale
  TranslationsManager() : _appLocale = AppLocaleUtils.findDeviceLocale();

  Translations get translations => _appLocale.buildSync();
}

///
/// Home translations public accessor
///
final tm = TranslationsManager().translations;
