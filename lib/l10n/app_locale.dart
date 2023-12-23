import 'dart:ui';

import 'package:scoped_model/scoped_model.dart';

class AppLocale extends Model{
  AppLocale._private();
  static final AppLocale _shared = AppLocale._private();
  factory AppLocale() => _shared;
  Locale _currentLocale = Locale('en');
  Locale get currentLocale => _currentLocale;

  void updateLocale(){
    if(_currentLocale.languageCode == 'en') {
      _currentLocale = Locale('ar');
    } else{
      _currentLocale = Locale('en');
    }
    notifyListeners();
  }
}