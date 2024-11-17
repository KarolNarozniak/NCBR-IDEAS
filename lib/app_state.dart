import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _academicvalue = prefs.getBool('ff_academicvalue') ?? _academicvalue;
    });
    _safeInit(() {
      _investorvalue = prefs.getBool('ff_investorvalue') ?? _investorvalue;
    });
    _safeInit(() {
      _businessvalue = prefs.getBool('ff_businessvalue') ?? _businessvalue;
    });
    _safeInit(() {
      _researchgatelink =
          prefs.getString('ff_researchgatelink') ?? _researchgatelink;
    });
    _safeInit(() {
      _linkedinlink = prefs.getString('ff_linkedinlink') ?? _linkedinlink;
    });
    _safeInit(() {
      _academiaedulink =
          prefs.getString('ff_academiaedulink') ?? _academiaedulink;
    });
    _safeInit(() {
      _googlescholarlink =
          prefs.getString('ff_googlescholarlink') ?? _googlescholarlink;
    });
    _safeInit(() {
      _investorportfoliolink =
          prefs.getString('ff_investorportfoliolink') ?? _investorportfoliolink;
    });
    _safeInit(() {
      _bio = prefs.getString('ff_bio') ?? _bio;
    });
    _safeInit(() {
      _name = prefs.getString('ff_name') ?? _name;
    });
    _safeInit(() {
      _city = prefs.getString('ff_city') ?? _city;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _academicvalue = false;
  bool get academicvalue => _academicvalue;
  set academicvalue(bool value) {
    _academicvalue = value;
    prefs.setBool('ff_academicvalue', value);
  }

  bool _investorvalue = false;
  bool get investorvalue => _investorvalue;
  set investorvalue(bool value) {
    _investorvalue = value;
    prefs.setBool('ff_investorvalue', value);
  }

  bool _businessvalue = false;
  bool get businessvalue => _businessvalue;
  set businessvalue(bool value) {
    _businessvalue = value;
    prefs.setBool('ff_businessvalue', value);
  }

  String _researchgatelink = '';
  String get researchgatelink => _researchgatelink;
  set researchgatelink(String value) {
    _researchgatelink = value;
    prefs.setString('ff_researchgatelink', value);
  }

  String _linkedinlink = '';
  String get linkedinlink => _linkedinlink;
  set linkedinlink(String value) {
    _linkedinlink = value;
    prefs.setString('ff_linkedinlink', value);
  }

  String _academiaedulink = '';
  String get academiaedulink => _academiaedulink;
  set academiaedulink(String value) {
    _academiaedulink = value;
    prefs.setString('ff_academiaedulink', value);
  }

  String _googlescholarlink = '';
  String get googlescholarlink => _googlescholarlink;
  set googlescholarlink(String value) {
    _googlescholarlink = value;
    prefs.setString('ff_googlescholarlink', value);
  }

  String _investorportfoliolink = '';
  String get investorportfoliolink => _investorportfoliolink;
  set investorportfoliolink(String value) {
    _investorportfoliolink = value;
    prefs.setString('ff_investorportfoliolink', value);
  }

  String _bio = '';
  String get bio => _bio;
  set bio(String value) {
    _bio = value;
    prefs.setString('ff_bio', value);
  }

  String _name = '';
  String get name => _name;
  set name(String value) {
    _name = value;
    prefs.setString('ff_name', value);
  }

  String _city = '';
  String get city => _city;
  set city(String value) {
    _city = value;
    prefs.setString('ff_city', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
