import 'package:flutter/material.dart';

import 'screen_route_enum.dart';

abstract class Screen {
  ScreenRoute get screenRoute;

  Widget get widget;
}

abstract class StatelessScreen extends StatelessWidget implements Screen {
  const StatelessScreen({super.key});

  @override
  Widget get widget => this;
}

abstract class StatefulScreen extends StatefulWidget implements Screen {
  const StatefulScreen({super.key});

  @override
  Widget get widget => this;
}
