import 'package:flutter/foundation.dart';

class ApiBase {
  static String get baseUrl {
    if (kReleaseMode) {
      return "http://localhost:8080";
    } else {
      return "http://localhost:8080";
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
