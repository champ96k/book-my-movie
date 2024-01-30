extension CollectionStringExtension<T extends String> on List<T> {
  String joinToString(String separator,
      {String prefix = '', String postfix = ''}) {
    return prefix + join(separator) + postfix;
  }
}
