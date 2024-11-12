import 'package:flutter/material.dart';

abstract class AppTheme {
  static final appTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
  );
}