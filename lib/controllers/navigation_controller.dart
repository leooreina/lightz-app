// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class NavigationController extends ChangeNotifier {
  static NavigationController instance = NavigationController();

  String page = 'initial';
  var initialColor;
  var searchColor;
  var discountColor;
  var profileColor;

  void changePage(value, colorValue) {
    page = value;
    if (page == 'initial') {
      initialColor = colorValue;
      searchColor = null;
      discountColor = null;
      profileColor = null;
    }
    if (page == 'search') {
      searchColor = colorValue;
      initialColor = null;
      discountColor = null;
      profileColor = null;
    }
    if (page == 'discount') {
      discountColor = colorValue;
      initialColor = null;
      searchColor = null;
      profileColor = null;
    }
    if (page == 'profile') {
      profileColor = colorValue;
      initialColor = null;
      searchColor = null;
      discountColor = null;
    }
    notifyListeners();
  }
}
