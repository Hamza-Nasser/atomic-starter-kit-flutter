import 'package:ui_kit/src/theme/font_helper.dart';
import 'package:ui_kit/ui_kit.dart';

/// An extension for theme to provide a color palette in context.
class ColorPalette extends ThemeExtension<ColorPalette> {
  const ColorPalette({
    required this.background,
    required this.border,
    required this.primary,
    required this.primary2,
    required this.primaryGradient1,
    required this.primaryGradient2,
    required this.primaryGradient3,
    required this.primaryGradient4,
    required this.primaryGradient5,
    required this.secondary,
    required this.secondary2,
    required this.secondaryGradient1,
    required this.secondaryGradient2,
    required this.secondaryGradient3,
    required this.secondaryGradient4,
    required this.grey,
    required this.grey2,
    required this.grey3,
    required this.grey4,
    required this.grey5,
    required this.grey6,
    required this.grey7,
    required this.grey8,
    required this.grey9,
    required this.grey10,
    required this.destructive,
  });

  final Color background;

  final Color border;

  final Color primary;

  final Color primary2;

  final Color primaryGradient1;

  final Color primaryGradient2;

  final Color primaryGradient3;

  final Color primaryGradient4;

  final Color primaryGradient5;

  /// Secondary colors
  final Color secondary;

  final Color secondary2;

  final Color secondaryGradient1;

  final Color secondaryGradient2;

  final Color secondaryGradient3;

  final Color secondaryGradient4;

  final Color grey;

  final Color grey2;

  final Color grey3;

  final Color grey4;

  final Color grey5;

  final Color grey6;

  final Color grey7;

  final Color grey8;

  final Color grey9;

  final Color grey10;

  final Color destructive;

  @override
  ThemeExtension<ColorPalette> copyWith({
    Color? background,
    Color? border,
    Color? primary,
    Color? primary2,
    Color? primaryGradient1,
    Color? primaryGradient2,
    Color? primaryGradient3,
    Color? primaryGradient4,
    Color? primaryGradient5,
    Color? secondary,
    Color? secondary2,
    Color? secondaryGradient1,
    Color? secondaryGradient2,
    Color? secondaryGradient3,
    Color? secondaryGradient4,
    Color? grey,
    Color? grey2,
    Color? grey3,
    Color? grey4,
    Color? grey5,
    Color? grey6,
    Color? grey7,
    Color? grey8,
    Color? grey9,
    Color? grey10,
    Color? destructive,
  }) =>
      ColorPalette(
        background: background ?? this.background,
        border: border ?? this.border,
        primary: primary ?? this.primary,
        primary2: primary2 ?? this.primary2,
        primaryGradient1: primaryGradient1 ?? this.primaryGradient1,
        primaryGradient2: primaryGradient2 ?? this.primaryGradient2,
        primaryGradient3: primaryGradient3 ?? this.primaryGradient3,
        primaryGradient4: primaryGradient4 ?? this.primaryGradient4,
        primaryGradient5: primaryGradient5 ?? this.primaryGradient5,
        secondary: secondary ?? this.secondary,
        secondary2: secondary2 ?? this.secondary2,
        secondaryGradient1: secondaryGradient1 ?? this.secondaryGradient1,
        secondaryGradient2: secondaryGradient2 ?? this.secondaryGradient2,
        secondaryGradient3: secondaryGradient3 ?? this.secondaryGradient3,
        secondaryGradient4: secondaryGradient4 ?? this.secondaryGradient4,
        grey: grey ?? this.grey,
        grey2: grey2 ?? this.grey2,
        grey3: grey3 ?? this.grey3,
        grey4: grey4 ?? this.grey4,
        grey5: grey5 ?? this.grey5,
        grey6: grey6 ?? this.grey6,
        grey7: grey7 ?? this.grey7,
        grey8: grey8 ?? this.grey8,
        grey9: grey9 ?? this.grey9,
        grey10: grey10 ?? this.grey10,
        destructive: destructive ?? this.destructive,
      );

  /// The [lerp] method enables smooth transitions between palettes when switching themes
  @override
  ThemeExtension<ColorPalette> lerp(
    covariant ThemeExtension<ColorPalette>? other,
    double t,
  ) {
    if (other == null || other is! ColorPalette) {
      return this;
    }

    return ColorPalette(
      background: Color.lerp(background, other.background, t)!,
      border: Color.lerp(border, other.border, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      primary2: Color.lerp(primary2, other.primary2, t)!,
      primaryGradient1:
          Color.lerp(primaryGradient1, other.primaryGradient1, t)!,
      primaryGradient2:
          Color.lerp(primaryGradient2, other.primaryGradient2, t)!,
      primaryGradient3:
          Color.lerp(primaryGradient3, other.primaryGradient3, t)!,
      primaryGradient4:
          Color.lerp(primaryGradient4, other.primaryGradient4, t)!,
      primaryGradient5:
          Color.lerp(primaryGradient5, other.primaryGradient5, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      secondary2: Color.lerp(secondary2, other.secondary2, t)!,
      secondaryGradient1:
          Color.lerp(secondaryGradient1, other.secondaryGradient1, t)!,
      secondaryGradient2:
          Color.lerp(secondaryGradient2, other.secondaryGradient2, t)!,
      secondaryGradient3:
          Color.lerp(secondaryGradient3, other.secondaryGradient3, t)!,
      secondaryGradient4:
          Color.lerp(secondaryGradient4, other.secondaryGradient4, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
      grey2: Color.lerp(grey2, other.grey2, t)!,
      grey3: Color.lerp(grey3, other.grey3, t)!,
      grey4: Color.lerp(grey4, other.grey4, t)!,
      grey5: Color.lerp(grey5, other.grey5, t)!,
      grey6: Color.lerp(grey6, other.grey6, t)!,
      grey7: Color.lerp(grey7, other.grey7, t)!,
      grey8: Color.lerp(grey8, other.grey8, t)!,
      grey9: Color.lerp(grey9, other.grey9, t)!,
      grey10: Color.lerp(grey10, other.grey10, t)!,
      destructive: Color.lerp(destructive, other.destructive, t)!,
    );
  }

  Map<String, Color> toMap() => {
        'Background': background,
        'Border': border,
        'Primary': primary,
        'Primary 2': primary2,
        'Primary Gradient 1': primaryGradient1,
        'Primary Gradient 2': primaryGradient2,
        'Primary Gradient 3': primaryGradient3,
        'Primary Gradient 4': primaryGradient4,
        'Primary Gradient 5': primaryGradient5,
        'Secondary': secondary,
        'Secondary 2': secondary2,
        'Secondary Gradient 1': secondaryGradient1,
        'Secondary Gradient 2': secondaryGradient2,
        'Secondary Gradient 3': secondaryGradient3,
        'Secondary Gradient 4': secondaryGradient4,
        'Grey': grey,
        'Grey 2': grey2,
        'Grey 3': grey3,
        'Grey 4': grey4,
        'Grey 5': grey5,
        'Grey 6': grey6,
        'Grey 7': grey7,
        'Grey 8': grey8,
        'Grey 9': grey9,
        'Grey 10': grey10,
        'Destructive': destructive,
      };
}

/// An extension for theme to provide typography in context.
class AppTypography extends ThemeExtension<AppTypography> {
  /// The synonym for [TextStyle] with the [fontSize].
  /// First part of the name is the font weight, second part is the size.
  /// Font size parse matrix: (Check the design system in Figma)[https://www.figma.com/design/Muv1FgyXSfiWC1Oqhym9MD/Second-Home?node-id=8-199&node-type=section&t=JVq0h7beZmN9ONGS-0].
  /// 24px => extraExtraLarge
  /// 20px => extraLarge
  /// 18px => semiLarge
  /// 16px => large
  /// 14px => medium
  /// 12px => small
  const AppTypography({
    required this.fontFamily,
    required this.regularExtraExtraLarge,
    required this.mediumExtraExtraLarge,
    required this.semiBoldExtraExtraLarge,
    required this.boldExtraExtraLarge,
    required this.regularExtraLarge,
    required this.mediumExtraLarge,
    required this.semiBoldExtraLarge,
    required this.boldExtraLarge,
    required this.regularSemiLarge,
    required this.mediumSemiLarge,
    required this.semiBoldSemiLarge,
    required this.boldSemiLarge,
    required this.regularLarge,
    required this.mediumLarge,
    required this.semiBoldLarge,
    required this.boldLarge,
    required this.regularMedium,
    required this.mediumMedium,
    required this.semiBoldMedium,
    required this.boldMedium,
    required this.regularSmall,
    required this.mediumSmall,
    required this.semiBoldSmall,
    required this.boldSmall,
  });

  final FontFamily fontFamily;

  /// Display extensive large style.
  final TextStyle regularExtraExtraLarge;

  final TextStyle mediumExtraExtraLarge;

  final TextStyle semiBoldExtraExtraLarge;

  final TextStyle boldExtraExtraLarge;

  /// Display very large style.
  final TextStyle regularExtraLarge;

  final TextStyle mediumExtraLarge;

  final TextStyle semiBoldExtraLarge;

  final TextStyle boldExtraLarge;

  /// Display semi large style.
  final TextStyle regularSemiLarge;

  final TextStyle mediumSemiLarge;

  final TextStyle semiBoldSemiLarge;

  final TextStyle boldSemiLarge;

  /// Display large style.
  final TextStyle regularLarge;

  final TextStyle mediumLarge;

  final TextStyle semiBoldLarge;

  final TextStyle boldLarge;

  /// Display medium style.
  final TextStyle regularMedium;

  final TextStyle mediumMedium;

  final TextStyle semiBoldMedium;

  final TextStyle boldMedium;

  /// Display small style.
  final TextStyle regularSmall;

  final TextStyle mediumSmall;

  final TextStyle semiBoldSmall;

  final TextStyle boldSmall;

  @override
  ThemeExtension<AppTypography> copyWith({
    FontFamily? fontFamily,
    TextStyle? regularExtraExtraLarge,
    TextStyle? mediumExtraExtraLarge,
    TextStyle? semiBoldExtraExtraLarge,
    TextStyle? boldExtraExtraLarge,
    TextStyle? regularExtraLarge,
    TextStyle? mediumExtraLarge,
    TextStyle? semiBoldExtraLarge,
    TextStyle? boldExtraLarge,
    TextStyle? regularSemiLarge,
    TextStyle? mediumSemiLarge,
    TextStyle? semiBoldSemiLarge,
    TextStyle? boldSemiLarge,
    TextStyle? regularLarge,
    TextStyle? mediumLarge,
    TextStyle? semiBoldLarge,
    TextStyle? boldLarge,
    TextStyle? regularMedium,
    TextStyle? mediumMedium,
    TextStyle? semiBoldMedium,
    TextStyle? boldMedium,
    TextStyle? regularSmall,
    TextStyle? mediumSmall,
    TextStyle? semiBoldSmall,
    TextStyle? boldSmall,
  }) =>
      AppTypography(
        fontFamily: fontFamily ?? this.fontFamily,
        regularExtraExtraLarge:
            regularExtraExtraLarge ?? this.regularExtraExtraLarge,
        mediumExtraExtraLarge:
            mediumExtraExtraLarge ?? this.mediumExtraExtraLarge,
        semiBoldExtraExtraLarge:
            semiBoldExtraExtraLarge ?? this.semiBoldExtraExtraLarge,
        boldExtraExtraLarge: boldExtraExtraLarge ?? this.boldExtraExtraLarge,
        regularExtraLarge: regularExtraLarge ?? this.regularExtraLarge,
        mediumExtraLarge: mediumExtraLarge ?? this.mediumExtraLarge,
        semiBoldExtraLarge: semiBoldExtraLarge ?? this.semiBoldExtraLarge,
        boldExtraLarge: boldExtraLarge ?? this.boldExtraLarge,
        regularSemiLarge: regularSemiLarge ?? this.regularSemiLarge,
        mediumSemiLarge: mediumSemiLarge ?? this.mediumSemiLarge,
        semiBoldSemiLarge: semiBoldSemiLarge ?? this.semiBoldSemiLarge,
        boldSemiLarge: boldSemiLarge ?? this.boldSemiLarge,
        regularLarge: regularLarge ?? this.regularLarge,
        mediumLarge: mediumLarge ?? this.mediumLarge,
        semiBoldLarge: semiBoldLarge ?? this.semiBoldLarge,
        boldLarge: boldLarge ?? this.boldLarge,
        regularMedium: regularMedium ?? this.regularMedium,
        mediumMedium: mediumMedium ?? this.mediumMedium,
        semiBoldMedium: semiBoldMedium ?? this.semiBoldMedium,
        boldMedium: boldMedium ?? this.boldMedium,
        regularSmall: regularSmall ?? this.regularSmall,
        mediumSmall: mediumSmall ?? this.mediumSmall,
        semiBoldSmall: semiBoldSmall ?? this.semiBoldSmall,
        boldSmall: boldSmall ?? this.boldSmall,
      );

  @override
  ThemeExtension<AppTypography> lerp(
    covariant ThemeExtension<AppTypography>? other,
    double t,
  ) {
    if (other == null || other is! AppTypography) {
      return this;
    }

    return AppTypography(
      fontFamily: fontFamily,
      regularExtraExtraLarge: TextStyle.lerp(
          regularExtraExtraLarge, other.regularExtraExtraLarge, t)!,
      mediumExtraExtraLarge: TextStyle.lerp(
          mediumExtraExtraLarge, other.mediumExtraExtraLarge, t)!,
      semiBoldExtraExtraLarge: TextStyle.lerp(
          semiBoldExtraExtraLarge, other.semiBoldExtraExtraLarge, t)!,
      boldExtraExtraLarge:
          TextStyle.lerp(boldExtraExtraLarge, other.boldExtraExtraLarge, t)!,
      regularExtraLarge:
          TextStyle.lerp(regularExtraLarge, other.regularExtraLarge, t)!,
      mediumExtraLarge:
          TextStyle.lerp(mediumExtraLarge, other.mediumExtraLarge, t)!,
      semiBoldExtraLarge:
          TextStyle.lerp(semiBoldExtraLarge, other.semiBoldExtraLarge, t)!,
      boldExtraLarge: TextStyle.lerp(boldExtraLarge, other.boldExtraLarge, t)!,
      regularSemiLarge:
          TextStyle.lerp(regularSemiLarge, other.regularSemiLarge, t)!,
      mediumSemiLarge:
          TextStyle.lerp(mediumSemiLarge, other.mediumSemiLarge, t)!,
      semiBoldSemiLarge:
          TextStyle.lerp(semiBoldSemiLarge, other.semiBoldSemiLarge, t)!,
      boldSemiLarge: TextStyle.lerp(boldSemiLarge, other.boldSemiLarge, t)!,
      regularLarge: TextStyle.lerp(regularLarge, other.regularLarge, t)!,
      mediumLarge: TextStyle.lerp(mediumLarge, other.mediumLarge, t)!,
      semiBoldLarge: TextStyle.lerp(semiBoldLarge, other.semiBoldLarge, t)!,
      boldLarge: TextStyle.lerp(boldLarge, other.boldLarge, t)!,
      regularMedium: TextStyle.lerp(regularMedium, other.regularMedium, t)!,
      mediumMedium: TextStyle.lerp(mediumMedium, other.mediumMedium, t)!,
      semiBoldMedium: TextStyle.lerp(semiBoldMedium, other.semiBoldMedium, t)!,
      boldMedium: TextStyle.lerp(boldMedium, other.boldMedium, t)!,
      regularSmall: TextStyle.lerp(regularSmall, other.regularSmall, t)!,
      mediumSmall: TextStyle.lerp(mediumSmall, other.mediumSmall, t)!,
      semiBoldSmall: TextStyle.lerp(semiBoldSmall, other.semiBoldSmall, t)!,
      boldSmall: TextStyle.lerp(boldSmall, other.boldSmall, t)!,
    );
  }
}

/// An extension for theme to get color palette and typography from [BuildContext].
extension ThemeDataExtensions on ThemeData {
  /// The color palette set for the app.
  ColorPalette get colorPalette =>
      extension<ColorPalette>() ?? lightColorPalette;

  /// The typography set for the app.
  AppTypography get appTypography =>
      extension<AppTypography>() ?? defaultTypography;
}
