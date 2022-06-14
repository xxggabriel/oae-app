import 'package:flutter/foundation.dart';

class ApiBase {
  static String get baseUrl {
    if (kReleaseMode) {
      return "https://localhost:8000";
    } else {
      return "https://localhost:8000";
    }
  }

  static String get apiKey {
    if (kReleaseMode) {
      return "dW5pZG9jdG9yczEyMzQ1Ng==";
    } else {
      return "dW5pZG9jdG9yczEyMzQ1Ng==";
    }
  }
}
