import 'package:flutter/material.dart';
import '../foundations/colors.dart';

/// SwiftUI-style Flutter ThemeData configuration
/// Applies iOS 17+ aesthetic to Material widgets
class SwiftUITheme {
  /// Apply SwiftUI design to the existing theme
  static ThemeData apply(ThemeData base) {
    final colorScheme = base.colorScheme;
    return base.copyWith(
      // Card theme
      cardTheme: base.cardTheme.copyWith(
        elevation: 0,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),

      // AppBar - minimal
      appBarTheme: base.appBarTheme.copyWith(
        elevation: 0,
        scrolledUnderElevation: 0.5,
        centerTitle: false,
        titleSpacing: 0,
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        surfaceTintColor: Colors.transparent,
      ),

      // Bottom navigation bar - translucent floating style
      bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
        elevation: 0,
        backgroundColor: colorScheme.surface.withValues(alpha: 0.85),
        selectedItemColor: SwiftUIColor.accentBlue,
        unselectedItemColor: colorScheme.onSurface.withValues(alpha: 0.4),
        type: BottomNavigationBarType.fixed,
        enableFeedback: true,
      ),

      // List tile style
      listTileTheme: base.listTileTheme.copyWith(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        titleTextStyle: base.textTheme.bodyLarge?.copyWith(
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ),
        subtitleTextStyle: base.textTheme.bodySmall?.copyWith(
          fontSize: 13,
          color: colorScheme.onSurface.withValues(alpha: 0.6),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),

      // Dialog
      dialogTheme: base.dialogTheme.copyWith(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),

      // Bottom sheet
      bottomSheetTheme: base.bottomSheetTheme.copyWith(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
        ),
      ),

      // Snackbar
      snackBarTheme: base.snackBarTheme.copyWith(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),

      // Progress indicator
      progressIndicatorTheme: base.progressIndicatorTheme.copyWith(
        linearTrackColor: colorScheme.surfaceContainerHighest,
      ),

      // Tab bar
      tabBarTheme: base.tabBarTheme.copyWith(
        labelPadding: const EdgeInsets.symmetric(horizontal: 16),
        labelStyle: base.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
        unselectedLabelStyle: base.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 15,
        ),
      ),

      // Page transitions
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }
}
