import 'package:flutter/material.dart';

/// Material icon wrapped to match iOS SF Symbols style
class SwiftUIImage extends StatelessWidget {
  const SwiftUIImage(
    this.icon, {
    super.key,
    this.size = 24,
    this.color,
    this.weight,
  });

  final IconData icon;
  final double size;
  final Color? color;
  final double? weight;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color ?? Theme.of(context).colorScheme.onSurface,
      weight: weight,
    );
  }
}

/// Badge widget like iOS unread count
class SwiftUIBadge extends StatelessWidget {
  const SwiftUIBadge(
    this.count, {
    super.key,
    this.size = 18,
  });

  final int count;
  final double size;

  @override
  Widget build(BuildContext context) {
    if (count <= 0) return const SizedBox.shrink();
    final text = count > 99 ? '99+' : count.toString();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      height: size,
      constraints: BoxConstraints(minWidth: size),
      decoration: BoxDecoration(
        color: SwiftUIColor.accentRed,
        borderRadius: BorderRadius.circular(size / 2),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: size * 0.55,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
