import 'package:flutter/services.dart';
import 'package:ui_kit/ui_kit.dart';

import '../config/navigation/app_navigator.dart';
import '../config/navigation/default_navigator/default_navigator.dart';
import '../config/navigation/observers/logging_observer.dart';
import '../config/navigation/observers/page_route_tracker_observer.dart';
import '../config/navigation/primary_navigator_injector/primary_navigator.dart';
import '../config/themes/app_theme.dart';
import '../core/app_starter/starter_screen.dart';
import '../core/utils/ui/ui_default_dims.dart';

class AppTBR extends StatefulWidget {
  const AppTBR({super.key});

  @override
  State<AppTBR> createState() => _AppTBRState();
}

class _AppTBRState extends State<AppTBR> {
  final AppNavigator navigator =
      const DefaultNavigator(debugLogDiagnostics: true);

  final List<NavigatorObserver> navigatorObservers = [
    PageRouteTracker(),
    LoggingNavigatorObserver(),
  ];

  void _configureStatusBar(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).colorPalette.background,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Theme.of(context).colorPalette.background,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _configureStatusBar(context);
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryNavigator(
      appNavigator: navigator,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorObservers: navigatorObservers,
        home: const StarterScreen(),
        theme: AppTheme.light,
      ),
    );
  }
}

class _TestComponent extends StatelessWidget {
  const _TestComponent({super.key});

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}
