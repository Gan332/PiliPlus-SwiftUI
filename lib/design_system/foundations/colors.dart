import 'package:flutter/material.dart';

/// Modern iOS 17+ SwiftUI-style color palette
/// Mirrors Apple's system colors for a native feel
abstract final class SwiftUIColor {
  // MARK: - System Colors (Light)
  static const _light = _SystemColorsLight._;
  static const _dark = _SystemColorsDark._;

  // MARK: - Backgrounds
  static Color background(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? _light.systemBackground
          : _dark.systemBackground;

  static Color secondaryBackground(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? _light.secondarySystemBackground
          : _dark.secondarySystemBackground;

  static Color groupedBackground(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? _light.systemGroupedBackground
          : _dark.systemGroupedBackground;

  static Color secondaryGroupedBackground(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? _light.secondarySystemGroupedBackground
          : _dark.secondarySystemGroupedBackground;

  // MARK: - Fill Colors
  static Color fill(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? _light.systemFill
          : _dark.systemFill;

  static Color secondaryFill(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? _light.secondarySystemFill
          : _dark.secondarySystemFill;

  static Color tertiaryFill(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? _light.tertiarySystemFill
          : _dark.tertiarySystemFill;

  // MARK: - Text
  static Color primaryLabel(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? _light.label
          : _dark.label;

  static Color secondaryLabel(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? _light.secondaryLabel
          : _dark.secondaryLabel;

  static Color tertiaryLabel(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? _light.tertiaryLabel
          : _dark.tertiaryLabel;

  // MARK: - Accent
  static const Color accentBlue = Color(0xFF007AFF);
  static const Color accentGreen = Color(0xFF34C759);
  static const Color accentOrange = Color(0xFFFF9500);
  static const Color accentRed = Color(0xFFFF3B30);
  static const Color accentPink = Color(0xFFFF2D55);
  static const Color accentPurple = Color(0xFFAF52DE);
  static const Color accentYellow = Color(0xFFFFCC00);

  // MARK: - Separator
  static Color separator(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? _light.separator
          : _dark.separator;

  static Color opaqueSeparator(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light
          ? _light.opaqueSeparator
          : _dark.opaqueSeparator;
}

final class _SystemColorsLight {
  const _SystemColorsLight._();

  final Color systemBackground = const Color(0xFFFFFFFF);
  final Color secondarySystemBackground = const Color(0xFFF2F2F7);
  final Color systemGroupedBackground = const Color(0xFFF2F2F7);
  final Color secondarySystemGroupedBackground = const Color(0xFFFFFFFF);

  final Color systemFill = const Color(0x1A000000);
  final Color secondarySystemFill = const Color(0x14000000);
  final Color tertiarySystemFill = const Color(0x0E000000);

  final Color label = const Color(0xFF000000);
  final Color secondaryLabel = const Color(0x993C3C43);
  final Color tertiaryLabel = const Color(0x4D3C3C43);

  final Color separator = const Color(0x1A3C3C43);
  final Color opaqueSeparator = const Color(0xFFC6C6C8);
}

final class _SystemColorsDark {
  const _SystemColorsDark._();

  final Color systemBackground = const Color(0xFF000000);
  final Color secondarySystemBackground = const Color(0xFF1C1C1E);
  final Color systemGroupedBackground = const Color(0xFF000000);
  final Color secondarySystemGroupedBackground = const Color(0xFF1C1C1E);

  final Color systemFill = const Color(0x33FFFFFF);
  final Color secondarySystemFill = const Color(0x29FFFFFF);
  final Color tertiarySystemFill = const Color(0x1FFFFFFF);

  final Color label = const Color(0xFFFFFFFF);
  final Color secondaryLabel = const Color(0x99EBEBF5);
  final Color tertiaryLabel = const Color(0x4DEBEBF5);

  final Color separator = const Color(0x33FFFFFF);
  final Color opaqueSeparator = const Color(0xFF38383A);
}
