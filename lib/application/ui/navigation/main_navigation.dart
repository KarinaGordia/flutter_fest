import 'package:flutter/cupertino.dart';

abstract class Screens {
  static const main = '/';
}

class MainNavigation {
  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
        Screens.main: (_) => const Text('not ready'),
      };

  Route<dynamic>? onGenerateRoute(RouteSettings settings) => null;
}
