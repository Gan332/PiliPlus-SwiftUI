import 'package:flutter/material.dart';

/// SwiftUI-style spacing system based on 8pt grid
/// iOS apps typically use multiples of 8 for visual rhythm
abstract final class SwiftUISpacing {
  // MARK: - Grid units
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double xxxl = 32;
  static const double huge = 48;

  // MARK: - Layout
  /// Standard horizontal page padding (16pt on iOS)
  static const EdgeInsets pageHorizontal = EdgeInsets.symmetric(horizontal: lg);

  /// Standard vertical page padding
  static const EdgeInsets pageVertical = EdgeInsets.symmetric(vertical: sm);

  /// Standard page padding
  static const EdgeInsets pagePadding = EdgeInsets.all(lg);

  /// Section spacing (between groups)
  static const double sectionSpacing = 20;

  /// Card spacing in lists
  static const double cardSpacing = 12;

  // MARK: - Card
  /// Default card radius (matching iOS card corner radius)
  static const double cardRadius = 14;

  /// Default card padding
  static const EdgeInsets cardPadding = EdgeInsets.all(lg);

  // MARK: - List
  /// Standard list row height
  static const double listRowMinHeight = 44;

  /// Standard list section header height
  static const double sectionHeaderHeight = 28;

  /// Inset grouped list horizontal padding
  static const EdgeInsets insetGroupedPadding = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 4,
  );
}
