var now = DateTime.now();

DateTime? safeDateFromJson(String? string) {
  if (string != null && string != "0000-00-00 00:00:00")
    try {
      return DateTime.parse(string);
    } catch (e) {}
}

String? safeDateToJson(DateTime? date) {
  return date?.toIso8601String();
}
