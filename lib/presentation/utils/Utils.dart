extension StringExtensions on String {
  String ifEmpty(String fallback) => isEmpty ? fallback : this;
}
