import 'package:flutter/foundation.dart';

class ApiBase {
  static String get baseUrl {
    if (kReleaseMode) {
      return "https://pedapp.com.br";
    } else {
      return "https://pedapp.com.br";
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
