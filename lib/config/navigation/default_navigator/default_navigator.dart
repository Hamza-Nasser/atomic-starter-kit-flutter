import 'package:flutter/material.dart';

import '../app_navigator.dart';
import '../screen.dart';
import '../screen_route_enum.dart';

class DefaultNavigator implements AppNavigator {
  final bool debugLogDiagnostics;

  const DefaultNavigator({this.debugLogDiagnostics = false});

  @override
  bool isCurrentScreen(BuildContext context, Screen route) {
    // TODO: implement isCurrentScreen
    throw UnimplementedError();
  }

  @override
  Future<T?> push<T>(BuildContext context, Screen screen,
      {Map<String, dynamic>? arguments}) {
    return Navigator.of(context).push<T>(_getPageRoute(screen: screen));
  }

  @override
  Future<T?> pushAndRemoveAll<T, TO>(BuildContext context, Screen screen,
      {Map<String, dynamic>? arguments}) {
    // TODO: implement pushAndRemoveAll
    throw UnimplementedError();
  }

  @override
  void pop<T extends Object?>(BuildContext context, [T? result]) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop(result);
    }
  }

  @override
  void popUntil(BuildContext context, ScreenRoute route) {
    // TODO: implement popUntil
  }

  @override
  Future<T?> pushAndRemoveUntil<T, TO>(
      BuildContext context, Screen screen, Screen removeUntilRoute,
      {Map<String, dynamic>? arguments}) {
    // TODO: implement pushAndRemoveUntil
    throw UnimplementedError();
  }

  @override
  Future<T?> pushModal<T>(BuildContext context, Screen screen,
      {Map<String, dynamic>? arguments, bool isScrollControlled = true}) {
    // TODO: implement pushModal
    throw UnimplementedError();
  }

  @override
  Future<T?> pushReplacement<T, TO>(BuildContext context, Screen screen,
      {Map<String, dynamic>? arguments}) {
    // TODO: implement pushReplacement
    throw UnimplementedError();
  }

  @override
  void replace<T>(BuildContext context, Screen screen,
      {Map<String, dynamic>? arguments}) {
    // TODO: implement replace
  }

  static MaterialPageRoute<T> _getPageRoute<T>({
    required Screen screen,
  }) {
    return MaterialPageRoute<T>(
      builder: (_) => screen.widget,
      settings: RouteSettings(name: screen.screenRoute.name),
    );
  }
}
