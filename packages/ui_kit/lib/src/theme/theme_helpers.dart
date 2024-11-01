import 'package:ui_kit/src/theme/font_helper.dart';
import 'package:ui_kit/ui_kit.dart';

final lightColorPalette = generatePaletteForBrightness(Brightness.light);
final darkColorPalette = generatePaletteForBrightness(Brightness.dark);

const AppTypography defaultTypography = AppTypography(
  fontFamily: FontFamily.roboto,
  regularExtraExtraLarge: regularExtraExtraLarge,
  mediumExtraExtraLarge: mediumExtraExtraLarge,
  semiBoldExtraExtraLarge: semiBoldExtraExtraLarge,
  boldExtraExtraLarge: boldExtraExtraLarge,
  regularExtraLarge: regularExtraLarge,
  mediumExtraLarge: mediumExtraLarge,
  semiBoldExtraLarge: semiBoldExtraLarge,
  boldExtraLarge: boldExtraLarge,
  regularSemiLarge: regularSemiLarge,
  mediumSemiLarge: mediumSemiLarge,
  semiBoldSemiLarge: semiBoldSemiLarge,
  boldSemiLarge: boldSemiLarge,
  regularLarge: regularLarge,
  mediumLarge: mediumLarge,
  semiBoldLarge: semiBoldLarge,
  boldLarge: boldLarge,
  regularMedium: regularMedium,
  mediumMedium: mediumMedium,
  semiBoldMedium: semiBoldMedium,
  boldMedium: boldMedium,
  regularSmall: regularSmall,
  mediumSmall: mediumSmall,
  semiBoldSmall: semiBoldSmall,
  boldSmall: boldSmall,
);

/// Creates a [ThemeData] object based on the provided [ColorPalette] and [AppTypography].
///
/// The [brightness] parameter is used to determine the brightness of the theme.
ThemeData createThemeData({
  required ColorPalette palette,
  required AppTypography typography,
  required Brightness brightness,
}) =>
    ThemeData(
      brightness: brightness,
      extensions: {palette, typography},
      scaffoldBackgroundColor: palette.background,
      primaryColor: palette.primary,
      primaryColorLight: palette.primaryGradient1,
      fontFamily: typography.fontFamily.toString(),
    );

ColorPalette generatePaletteForBrightness(Brightness brightness) {
  final materialPalette = ColorScheme.fromSeed(
    seedColor: Colors.transparent,
    dynamicSchemeVariant: DynamicSchemeVariant.monochrome,
    brightness: brightness,
    surface: const Color(0xFFFFFFFF),
  );

  return ColorPalette(
    background: const Color(0xFFFFFFFF),
    border: materialPalette.onSurface.withOpacity(.24),
    primary: const Color(0xFF26247B),
    primary2: const Color(0xFF107FBB),
    primaryGradient1: const Color(0xFF2E3192),
    primaryGradient2: const Color(0xFF524FA1),
    primaryGradient3: const Color(0xFF756FB3),
    primaryGradient4: const Color(0xFF9B99C8),
    primaryGradient5: const Color(0xFFCCCCE1),
    secondary: const Color(0xFFEE2F77),
    secondary2: const Color(0xFFD51075),
    secondaryGradient1: const Color(0xFFF1668D),
    secondaryGradient2: const Color(0xFFF48DA4),
    secondaryGradient3: const Color(0xFFF7B0BE),
    secondaryGradient4: const Color(0xFFFBD6DB),
    grey: const Color(0xFF373D43),
    grey2: const Color(0xFF4E555C),
    grey3: const Color(0xFF666E76),
    grey4: const Color(0xFF7F878F),
    grey5: const Color(0xFF98A0A8),
    grey6: const Color(0xFFB3BBC2),
    grey7: const Color(0xFFCFD5DB),
    grey8: const Color(0xFFECF1F5),
    grey9: const Color(0xFFF1F3F6),
    grey10: const Color(0xFFF6F6F7),
    destructive: const Color(0xFFB3261E),
  );
}

const regularExtraExtraLarge = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w400,
  height: 1.25,
);

const mediumExtraExtraLarge = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w500,
  height: 1.25,
);

const semiBoldExtraExtraLarge = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w600,
  height: 1.25,
);

const boldExtraExtraLarge = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w700,
  height: 1.25,
);

const regularExtraLarge = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  height: 1.25,
);

const mediumExtraLarge = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  height: 1.25,
);

const semiBoldExtraLarge = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  height: 1.25,
);

const boldExtraLarge = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
  height: 1.25,
);

const regularSemiLarge = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  height: 1.25,
);

const mediumSemiLarge = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  height: 1.25,
);

const semiBoldSemiLarge = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  height: 1.25,
);

const boldSemiLarge = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  height: 1.25,
);

const regularLarge = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  height: 1.25,
);

const mediumLarge = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  height: 1.25,
);

const semiBoldLarge = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  height: 1.25,
);

const boldLarge = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  height: 1.25,
);

const regularMedium = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  height: 1.25,
);

const mediumMedium = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  height: 1.25,
);

const semiBoldMedium = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  height: 1.25,
);

const boldMedium = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  height: 1.25,
);

const regularSmall = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  height: 1.25,
);

const mediumSmall = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  height: 1.25,
);

const semiBoldSmall = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  height: 1.25,
);

const boldSmall = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w700,
  height: 1.25,
);
