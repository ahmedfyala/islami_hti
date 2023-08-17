import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
class MyProviderApp extends ChangeNotifier {
  // var AppLanguage;
  // var AppTheme;
  // getprefs() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //    AppLanguage = prefs.getString('en');
  //    notifyListeners();
  // }
  String AppLanguage = 'en';
  ThemeMode themeMode = ThemeMode.light;


  void changeLanguage(String languageCode) {
    AppLanguage = languageCode;
    notifyListeners();
  }

  void changeTheme(ThemeMode theme) {
    themeMode = theme;
    notifyListeners();
  }

  String getBackground() {
    if (themeMode == ThemeMode.light) {
      return 'assets/images/default_bg.png';
    } else {
      return 'assets/images/dark_bg.png';
    }
  }

  String getSepha() {
    if (themeMode == ThemeMode.light) {
      return 'assets/images/sepha_light.png';
    } else {
      return 'assets/images/sepha_dark.png';
    }
  }

  String getSplash() {
    if (themeMode == ThemeMode.light) {
      return 'assets/images/splash_light.png';
    } else {
      return 'assets/images/splash_dark.png';
    }
  }
}
