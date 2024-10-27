/// String extensions
extension StringExtensions on String {
  /// Remove HTML tags from a string
  String removeHtmlTags() {
    final RegExp exp = RegExp(
      r'<[^>]*>',
      multiLine: true,
      caseSensitive: true,
    );

    return replaceAll(exp, '');
  }
}
