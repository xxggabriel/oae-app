import 'package:flutter/foundation.dart';

class ApiBase {
  static String get baseUrl {
    if (kReleaseMode) {
      return "http://10.0.2.2:8000";
    } else {
      return "http://10.0.2.2:8000";
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
