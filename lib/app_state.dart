import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _Cart = [];
  List<DocumentReference> get Cart => _Cart;
  set Cart(List<DocumentReference> _value) {
    _Cart = _value;
  }

  void addToCart(DocumentReference _value) {
    _Cart.add(_value);
  }

  void removeFromCart(DocumentReference _value) {
    _Cart.remove(_value);
  }

  double _sum = 0.0;
  double get sum => _sum;
  set sum(double _value) {
    _sum = _value;
  }

  double _ExMath = 0.0;
  double get ExMath => _ExMath;
  set ExMath(double _value) {
    _ExMath = _value;
  }

  double _ApiCurrencyT2M = 0.0;
  double get ApiCurrencyT2M => _ApiCurrencyT2M;
  set ApiCurrencyT2M(double _value) {
    _ApiCurrencyT2M = _value;
  }

  String _photomemo = '';
  String get photomemo => _photomemo;
  set photomemo(String _value) {
    _photomemo = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
