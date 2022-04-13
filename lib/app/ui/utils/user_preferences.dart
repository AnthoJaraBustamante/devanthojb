import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final UserPreferences _instancia = UserPreferences._internal();
  late SharedPreferences _prefs;
  factory UserPreferences() => _instancia;
  UserPreferences._internal();

  //Get y Set primera vez que se abre la app
  bool get about {
    return _prefs.getBool('about') ?? true;
  }

  set about(bool value) {
    _prefs.setBool('about', value);
  }

  bool get works {
    return _prefs.getBool('works') ?? false;
  }

  set works(bool value) {
    _prefs.setBool('works', value);
  }

  bool get contact {
    return _prefs.getBool('contact') ?? false;
  }

  set contact(bool value) {
    _prefs.setBool('contact', value);
  }

  Future<void> clear() async {
    await _prefs.clear();
  }

  Future<SharedPreferences> initPrefs() async =>
      _prefs = await SharedPreferences.getInstance();
}
