import 'package:ui_kit/ui_kit.dart';

class AppTheme {
  static ThemeData get light {
    return createThemeData(
      palette: lightColorPalette,
      typography: defaultTypography,
      brightness: Brightness.light,
    );
  }
}
