import 'package:flutter/material.dart';

/// iOS inset-grouped style list tile
class SwiftUIListTile extends StatelessWidget {
  const SwiftUIListTile({
    super.key,
    this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.isLast = true,
  });

  final Widget? leading;
  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tile = Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: isLast
            ? null
            : Border(
                bottom: BorderSide(
                  color: SwiftUIColorSeparator(context),
                  width: 0.5,
                ),
              ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: trailing ??
            (onTap != null
                ? Icon(
                    Icons.chevron_right,
                    size: 20,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.3),
                  )
                : null),
        onTap: onTap,
      ),
    );

    if (onTap != null) {
      return Material(
        color: Colors.transparent,
        child: InkWell(onTap: onTap, child: tile),
      );
    }
    return tile;
  }
}

Color SwiftUIColorSeparator(BuildContext context) {
  return Theme.of(context).brightness == Brightness.light
      ? const Color(0x1A3C3C43)
      : const Color(0x33FFFFFF);
}
