import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ui_kit/ui_kit.dart';

import 'app/app_TBR.dart';
import 'core/injector.dart' as injector;
import 'core/network/client/endpoints.dart';
import 'core/persistence/shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: Environment.devEnvFileName);
  await Preferences.init();
  injector.setup();
  runApp(const AppTBR());
}
