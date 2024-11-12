import 'package:flutter/material.dart';
import 'package:flutter_fest/application/ui/navigation/main_navigation.dart';
import 'package:flutter_fest/application/ui/themes/app_theme.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final mainNavigation = MainNavigation();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.appTheme,
      routes: mainNavigation.routes,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}