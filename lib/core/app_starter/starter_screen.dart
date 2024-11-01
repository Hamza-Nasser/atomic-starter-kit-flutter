import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/navigation/screen.dart';
import '../../config/navigation/screen_route_enum.dart';
import 'bloc/starter_screen_bloc.dart';

class StarterScreen extends StatefulScreen {
  const StarterScreen({super.key});

  @override
  State<StarterScreen> createState() => _StarterScreenState();

  @override
  ScreenRoute get screenRoute => ScreenRoute.starter;
}

class _StarterScreenState extends State<StarterScreen> {
  late AppLinks _appLinks;
  StreamSubscription<Uri>? _linkSubscription;

  @override
  void initState() {
    super.initState();
    _appLinks = AppLinks();
    _linkSubscription = _appLinks.uriLinkStream.listen(_handleDeepLink);
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    super.dispose();
  }

  void _handleDeepLink(Uri uri) {
    if (uri.pathSegments.isEmpty) return;
    // final String path = uri.pathSegments.first;
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StarterScreenBloc, StarterScreenState>(
      bloc: StarterScreenBloc()..add(const DecideWhereToGoEvent()),
      buildWhen: (previous, current) =>
          previous.screenStartDestination != current.screenStartDestination,
      builder: (context, state) {
        return switch (state.screenStartDestination) {
          ScreenStartDestinationStatus.deciding => const _Initiator(),
          ScreenStartDestinationStatus.onboarding => const _Initiator(),
          ScreenStartDestinationStatus.signIn => const _Initiator(),
          ScreenStartDestinationStatus.main => const _Initiator(),
        };
      },
    );
  }
}

class _Initiator extends StatelessWidget {
  const _Initiator();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: 100,
        height: 100,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
