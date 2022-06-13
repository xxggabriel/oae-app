import 'package:shared_preferences/shared_preferences.dart';

const String is_dark_mode_key = "is_dark_mode_key";
const String current_user_key = "current_user_key";

class SharedService {
  late Future<SharedPreferences> _sharedPreference;

  SharedService() {
    _sharedPreference = SharedPreferences.getInstance();
  }

  //Theme module
  Future<void> changeTheme(bool value) {
    return _sharedPreference.then((prefs) {
      return prefs.setBool(is_dark_mode_key, value);
    });
  }

  Future<bool> get isDarkMode {
    return _sharedPreference.then((prefs) {
      return prefs.getBool(is_dark_mode_key) ?? false;
    });
  }

  Future<String?> get currentUserToken {
    return _sharedPreference.then((prefs) {
      return prefs.getString(current_user_key);
    });
  }

  Future<void> saveCurrentUserToken(String? value) {
    return _sharedPreference.then((prefs) {
      if (value != null) {
        prefs.setString(current_user_key, value);
      } else {
        prefs.remove(current_user_key);
      }
    });
  }
}
