extension StringTweaker on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String toSnakeCase() {
    return replaceAll(' ', '_').toLowerCase();
  }

  String localized() {
    throw UnimplementedError();
  }
}
