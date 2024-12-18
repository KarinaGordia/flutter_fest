import 'package:flutter/material.dart';

abstract class AppTheme {
  static final appTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.black,
      selectedItemColor: Color(0xFF00BD13),
      unselectedItemColor: Color(0xFF52525E),
      // unselectedItemColor:
    ),
  );
}