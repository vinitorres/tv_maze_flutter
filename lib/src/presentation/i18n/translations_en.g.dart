///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  );

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get tvShows => 'Tv Shows';
	String get season => 'Season';
	String get episode => 'Episode';
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
