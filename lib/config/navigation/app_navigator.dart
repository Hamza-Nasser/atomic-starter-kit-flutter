import 'package:flutter/material.dart';

import 'screen.dart';
import 'screen_route_enum.dart';

abstract class AppNavigator {
  Future<T?> push<T>(
    BuildContext context,
    Screen screen, {
    Map<String, dynamic>? arguments,
  });

  Future<T?> pushReplacement<T, TO>(
    BuildContext context,
    Screen screen, {
    Map<String, dynamic>? arguments,
  });

  /// Replaces the current screen without adding a new entry to the history stack.
  void replace<T>(
    BuildContext context,
    Screen screen, {
    Map<String, dynamic>? arguments,
  });

  /// Pushes a new screen and removes screens until a specified [removeUntilRoute] is reached.
  Future<T?> pushAndRemoveUntil<T, TO>(
    BuildContext context,
    Screen screen,
    Screen removeUntilRoute, {
    Map<String, dynamic>? arguments,
  });

  Future<T?> pushAndRemoveAll<T, TO>(
    BuildContext context,
    Screen screen, {
    Map<String, dynamic>? arguments,
  });

  void pop<T extends Object?>(BuildContext context, [T? result]);

  void popUntil(BuildContext context, ScreenRoute route);

  /// Checks if the current screen matches a specified [route].
  bool isCurrentScreen(BuildContext context, Screen route);

  /// Optional: Shows a modal or bottom sheet.
  Future<T?> pushModal<T>(
    BuildContext context,
    Screen screen, {
    Map<String, dynamic>? arguments,
    bool isScrollControlled = true,
  });
}
