///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsStringsEn strings = TranslationsStringsEn.internal(_root);
}

// Path: strings
class TranslationsStringsEn {
	TranslationsStringsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get tvShows => 'Tv Shows';
	String get season => 'Season';
	String get episode  => 'Episode';
	String get summary => 'Summary';
	String get favorites => 'Favorites';
	String get at => 'at';
	String get tvShowsSearchHint => 'Search Tv Shows';
	String get tvShowsEmpty => 'No tv shows found';
	String get tvShowsLoading => 'Loading tv shows...';
	String get favoritesSearchHint => 'Search on favorites';
	String get favoritesEmpty => 'No favorites found';
	String get favoritesLoading => 'Loading favorites...';
	String get tvShowDetailsDaysAndTime => 'Days and Time';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'strings.tvShows': return 'Tv Shows';
			case 'strings.season': return 'Season';
			case 'strings.episode ': return 'Episode';
			case 'strings.summary': return 'Summary';
			case 'strings.favorites': return 'Favorites';
			case 'strings.at': return 'at';
			case 'strings.tvShowsSearchHint': return 'Search Tv Shows';
			case 'strings.tvShowsEmpty': return 'No tv shows found';
			case 'strings.tvShowsLoading': return 'Loading tv shows...';
			case 'strings.favoritesSearchHint': return 'Search on favorites';
			case 'strings.favoritesEmpty': return 'No favorites found';
			case 'strings.favoritesLoading': return 'Loading favorites...';
			case 'strings.tvShowDetailsDaysAndTime': return 'Days and Time';
			default: return null;
		}
	}
}

