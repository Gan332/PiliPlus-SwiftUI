import 'package:flutter/material.dart';

/// iOS 17+ style rounded card container
/// Matches SwiftUI's default List row card appearance
class SwiftUICard extends StatelessWidget {
  const SwiftUICard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(14),
    this.margin = const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    this.borderRadius = 14,
    this.color,
    this.onTap,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final double borderRadius;
  final Color? color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cardColor = color ?? theme.colorScheme.surface;
    final card = ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Material(
        color: cardColor,
        surfaceTintColor: Colors.transparent,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );

    return Padding(
      padding: margin,
      child: onTap != null
          ? GestureDetector(onTap: onTap, child: card)
          : card,
    );
  }
}
