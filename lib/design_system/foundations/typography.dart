import 'package:flutter/material.dart';

/// SwiftUI-style typography system matching SF Pro metrics
/// Large Title → Title → Headline → Body → Callout → Subheadline → Footnote → Caption
abstract final class SwiftUITypography {
  // MARK: - Font sizes
  static const double largeTitleSize = 34;
  static const double title1Size = 28;
  static const double title2Size = 22;
  static const double title3Size = 20;
  static const double headlineSize = 17;
  static const double bodySize = 17;
  static const double calloutSize = 16;
  static const double subheadlineSize = 15;
  static const double footnoteSize = 13;
  static const double caption1Size = 12;
  static const double caption2Size = 11;

  // MARK: - Line heights
  static const double largeTitleHeight = 1.1;
  static const double titleHeight = 1.2;
  static const double bodyHeight = 1.4;

  // MARK: - Styles
  static TextStyle largeTitle([TextStyle? style]) => (style ?? const TextStyle()).copyWith(
        fontSize: largeTitleSize,
        fontWeight: FontWeight.w700,
        height: largeTitleHeight,
        letterSpacing: 0.37,
      );

  static TextStyle title1([TextStyle? style]) => (style ?? const TextStyle()).copyWith(
        fontSize: title1Size,
        fontWeight: FontWeight.w700,
        height: titleHeight,
        letterSpacing: 0.36,
      );

  static TextStyle title2([TextStyle? style]) => (style ?? const TextStyle()).copyWith(
        fontSize: title2Size,
        fontWeight: FontWeight.w700,
        height: titleHeight,
        letterSpacing: 0.35,
      );

  static TextStyle title3([TextStyle? style]) => (style ?? const TextStyle()).copyWith(
        fontSize: title3Size,
        fontWeight: FontWeight.w600,
        height: titleHeight,
        letterSpacing: 0.38,
      );

  static TextStyle headline([TextStyle? style]) => (style ?? const TextStyle()).copyWith(
        fontSize: headlineSize,
        fontWeight: FontWeight.w600,
        height: bodyHeight,
        letterSpacing: -0.41,
      );

  /// The default text style
  static TextStyle body([TextStyle? style]) => (style ?? const TextStyle()).copyWith(
        fontSize: bodySize,
        fontWeight: FontWeight.w400,
        height: bodyHeight,
        letterSpacing: -0.41,
      );

  static TextStyle callout([TextStyle? style]) => (style ?? const TextStyle()).copyWith(
        fontSize: calloutSize,
        fontWeight: FontWeight.w400,
        height: bodyHeight,
        letterSpacing: -0.32,
      );

  static TextStyle subheadline([TextStyle? style]) => (style ?? const TextStyle()).copyWith(
        fontSize: subheadlineSize,
        fontWeight: FontWeight.w400,
        height: bodyHeight,
        letterSpacing: -0.24,
      );

  static TextStyle footnote([TextStyle? style]) => (style ?? const TextStyle()).copyWith(
        fontSize: footnoteSize,
        fontWeight: FontWeight.w400,
        height: bodyHeight,
        letterSpacing: -0.08,
      );

  static TextStyle caption1([TextStyle? style]) => (style ?? const TextStyle()).copyWith(
        fontSize: caption1Size,
        fontWeight: FontWeight.w400,
        height: bodyHeight,
        letterSpacing: 0,
      );

  static TextStyle caption2([TextStyle? style]) => (style ?? const TextStyle()).copyWith(
        fontSize: caption2Size,
        fontWeight: FontWeight.w400,
        height: bodyHeight,
        letterSpacing: 0,
      );

  // MARK: - Apply to Text widget
  static Text largeTitleText(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, Locale? locale, bool? softWrap, TextOverflow? overflow, double? textScaleFactor, int? maxLines, String? semanticsLabel, TextWidthBasis? textWidthBasis, TextHeightBehavior? textHeightBehavior}) =>
      Text(data, style: largeTitle(), key: key, strutStyle: strutStyle, textAlign: textAlign, textDirection: textDirection, locale: locale, softWrap: softWrap, overflow: overflow, textScaleFactor: textScaleFactor, maxLines: maxLines, semanticsLabel: semanticsLabel, textWidthBasis: textWidthBasis, textHeightBehavior: textHeightBehavior);

  static Text title3Text(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, Locale? locale, bool? softWrap, TextOverflow? overflow, double? textScaleFactor, int? maxLines, String? semanticsLabel, TextWidthBasis? textWidthBasis, TextHeightBehavior? textHeightBehavior}) =>
      Text(data, style: title3(), key: key, strutStyle: strutStyle, textAlign: textAlign, textDirection: textDirection, locale: locale, softWrap: softWrap, overflow: overflow, textScaleFactor: textScaleFactor, maxLines: maxLines, semanticsLabel: semanticsLabel, textWidthBasis: textWidthBasis, textHeightBehavior: textHeightBehavior);

  static Text bodyText(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, Locale? locale, bool? softWrap, TextOverflow? overflow, double? textScaleFactor, int? maxLines, String? semanticsLabel, TextWidthBasis? textWidthBasis, TextHeightBehavior? textHeightBehavior}) =>
      Text(data, style: body(), key: key, strutStyle: strutStyle, textAlign: textAlign, textDirection: textDirection, locale: locale, softWrap: softWrap, overflow: overflow, textScaleFactor: textScaleFactor, maxLines: maxLines, semanticsLabel: semanticsLabel, textWidthBasis: textWidthBasis, textHeightBehavior: textHeightBehavior);

  static Text caption1Text(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, Locale? locale, bool? softWrap, TextOverflow? overflow, double? textScaleFactor, int? maxLines, String? semanticsLabel, TextWidthBasis? textWidthBasis, TextHeightBehavior? textHeightBehavior}) =>
      Text(data, style: caption1(), key: key, strutStyle: strutStyle, textAlign: textAlign, textDirection: textDirection, locale: locale, softWrap: softWrap, overflow: overflow, textScaleFactor: textScaleFactor, maxLines: maxLines, semanticsLabel: semanticsLabel, textWidthBasis: textWidthBasis, textHeightBehavior: textHeightBehavior);
}
