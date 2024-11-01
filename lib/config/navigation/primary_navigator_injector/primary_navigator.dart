import 'package:flutter/widgets.dart';

import '../app_navigator.dart';

class PrimaryNavigator extends InheritedWidget {
  final AppNavigator appNavigator;

  const PrimaryNavigator({
    super.key,
    required super.child,
    required this.appNavigator,
  });

  static AppNavigator of(BuildContext context) {
    final PrimaryNavigator? primaryNavigator =
        context.dependOnInheritedWidgetOfExactType<PrimaryNavigator>();
    assert(primaryNavigator != null, 'PrimaryNavigator not found in context');
    return primaryNavigator!.appNavigator;
  }

  @override
  bool updateShouldNotify(PrimaryNavigator oldWidget) {
    return appNavigator != oldWidget.appNavigator;
  }
}
