class StringUtils {
  static String removeHtmlTags(String htmlString) {
    final RegExp exp = RegExp(
      r'<[^>]*>',
      multiLine: true,
      caseSensitive: true,
    );

    return htmlString.replaceAll(exp, '');
  }
}
