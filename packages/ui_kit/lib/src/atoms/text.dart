import 'package:ui_kit/ui_kit.dart';

/// {@template ui_text}
/// A widget that displays a string of text with a specific style.
/// {@endtemplate}
class UiText extends StatelessWidget {
  /// {@macro ui_text}
  const UiText(
    this.data, {
    this.color,
    this.style,
    this.textAlign,
    this.overflow,
    this.maxLines,
    TextStyle? Function(AppTypography)? styleBuilder,
    super.key,
  }) : _styleBuilder = styleBuilder;

  /// Creates a [UiText] widget with a regular thickness
  /// and extra extra large (i.e. 24px) display size.
  factory UiText.regularExtraExtraLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.regularExtraExtraLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a medium thickness
  /// and extra extra large (i.e. 24px) display size.
  factory UiText.mediumExtraExtraLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.mediumExtraExtraLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a semi-bold thickness
  /// and extra extra large (i.e. 24px) display size.
  factory UiText.semiBoldExtraExtraLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.semiBoldExtraExtraLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a bold thickness
  /// and extra extra large (i.e. 24px) display size.
  factory UiText.boldExtraExtraLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.boldExtraExtraLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a regular thickness
  /// and extra large (i.e. 20px) display size.
  factory UiText.regularExtraLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.regularExtraLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a medium thickness
  /// and extra large (i.e. 20px) display size.
  factory UiText.mediumExtraLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.mediumExtraLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a semi-bold thickness
  /// and extra large (i.e. 20px) display size.
  factory UiText.semiBoldExtraLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.semiBoldExtraLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a bold thickness
  /// and extra large (i.e. 20px) display size.
  factory UiText.boldExtraLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.boldExtraLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a regular thickness
  /// and large (i.e. 18px) display size.
  factory UiText.regularSemiLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.regularSemiLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a medium thickness
  /// and large (i.e. 18px) display size.
  factory UiText.mediumSemiLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.mediumSemiLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a semi-bold thickness
  /// and large (i.e. 18px) display size.
  factory UiText.semiBoldSemiLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.semiBoldSemiLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a bold thickness
  /// and large (i.e. 18px) display size.
  factory UiText.boldSemiLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.boldSemiLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a regular thickness
  /// and large (i.e. 16px) display size.
  factory UiText.regularLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.regularLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a medium thickness
  /// and large (i.e. 16px) display size.
  factory UiText.mediumLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.mediumLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a semi-bold thickness.
  /// and large (i.e. 16px) display size.
  factory UiText.semiBoldLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.semiBoldLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a bold thickness
  /// and large (i.e. 16px) display size.
  factory UiText.boldLarge(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.boldLarge,
        key: key,
      );

  /// Creates a [UiText] widget with a regular thickness
  /// and medium (i.e. 14px) display size.
  factory UiText.regularMedium(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.regularMedium,
        key: key,
      );

  /// Creates a [UiText] widget with a medium thickness
  /// and medium (i.e. 14px) display size.
  factory UiText.mediumMedium(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.mediumMedium,
        key: key,
      );

  /// Creates a [UiText] widget with a semi-bold thickness
  /// and medium (i.e. 14px) display size.
  factory UiText.semiBoldMedium(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.semiBoldMedium,
        key: key,
      );

  /// Creates a [UiText] widget with a bold thickness
  /// and medium (i.e. 14px) display size.
  factory UiText.boldMedium(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.boldMedium,
        key: key,
      );

  /// Creates a [UiText] widget with a regular thickness
  /// and small (i.e. 12px) display size.
  factory UiText.regularSmall(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.regularSmall,
        key: key,
      );

  /// Creates a [UiText] widget with a medium thickness
  /// and small (i.e. 12px) display size.
  factory UiText.mediumSmall(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.mediumSmall,
        key: key,
      );

  /// Creates a [UiText] widget with a semi-bold thickness
  /// and small (i.e. 12px) display size.
  factory UiText.semiBoldSmall(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.semiBoldSmall,
        key: key,
      );

  /// Creates a [UiText] widget with a bold thickness
  /// and small (i.e. 12px) display size.
  factory UiText.boldSmall(
    String data, {
    Color? color,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    Key? key,
  }) =>
      UiText(
        data,
        color: color,
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        styleBuilder: (typography) => typography.boldSmall,
        key: key,
      );

  /// The text to display.
  final String data;

  /// The style to apply to the text.
  final TextStyle? style;

  /// The alignment of the text.
  final TextAlign? textAlign;

  /// The overflow behavior of the text.
  final TextOverflow? overflow;

  /// The maximum number of lines to display.
  final int? maxLines;

  /// The color of the text.
  final Color? color;

  /// A function that builds the text style based on the typography.
  final TextStyle? Function(AppTypography)? _styleBuilder;

  @override
  Widget build(BuildContext context) {
    final typography = Theme.of(context).appTypography;
    final palette = Theme.of(context).colorPalette;

    // Get the text style based on the size
    final style = _styleBuilder?.call(typography) ?? typography.regularLarge;

    return Text(
      data,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: style.merge(this.style).copyWith(
            color: color ?? palette.background,
          ),
    );
  }
}

extension TextStyleMerger on TextStyle {
  TextStyle merge(TextStyle? other) {
    return TextStyle(
      color: other?.color ?? color,
      fontSize: other?.fontSize ?? fontSize,
      fontWeight: other?.fontWeight ?? fontWeight,
      fontStyle: other?.fontStyle ?? fontStyle,
      letterSpacing: other?.letterSpacing ?? letterSpacing,
      wordSpacing: other?.wordSpacing ?? wordSpacing,
      textBaseline: other?.textBaseline ?? textBaseline,
      height: other?.height ?? height,
      locale: other?.locale ?? locale,
      foreground: other?.foreground ?? foreground,
      background: other?.background ?? background,
      shadows: other?.shadows ?? shadows,
      fontFeatures: other?.fontFeatures ?? fontFeatures,
      decoration: other?.decoration ?? decoration,
      decorationColor: other?.decorationColor ?? decorationColor,
      decorationStyle: other?.decorationStyle ?? decorationStyle,
      decorationThickness: other?.decorationThickness ?? decorationThickness,
      debugLabel: other?.debugLabel ?? debugLabel,
      fontFamily: other?.fontFamily ?? fontFamily,
      fontFamilyFallback: other?.fontFamilyFallback ?? fontFamilyFallback,
      // package: other?.package ?? package,
    );
  }
}
