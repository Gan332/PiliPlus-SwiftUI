import 'package:flutter/material.dart';

/// SwiftUI-style large title display widget
/// Mimics iOS navigationBar large title display mode
class SwiftUILargeTitle extends StatelessWidget {
  const SwiftUILargeTitle(
    this.title, {
    super.key,
    this.padding = const EdgeInsets.fromLTRB(20, 8, 20, 4),
    this.subtitle,
  });

  final String title;
  final String? subtitle;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: theme.textTheme.headlineLarge?.copyWith(
              fontSize: 34,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.37,
              color: theme.colorScheme.onSurface,
            ),
          ),
          if (subtitle != null)
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                subtitle!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// Inline navigation bar title (collapsed state)
class SwiftUIInlineTitle extends StatelessWidget {
  const SwiftUIInlineTitle(
    this.title, {
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      title,
      style: theme.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 17,
      ),
    );
  }
}

/// Section header for grouped list style (like iOS)
class SwiftUISectionHeader extends StatelessWidget {
  const SwiftUISectionHeader(
    this.title, {
    super.key,
    this.padding = const EdgeInsets.fromLTRB(20, 24, 20, 6),
    this.action,
    this.actionLabel,
  });

  final String title;
  final EdgeInsetsGeometry padding;
  final VoidCallback? action;
  final String? actionLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Text(
            title,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              letterSpacing: 0.38,
            ),
          ),
          const Spacer(),
          if (action != null && actionLabel != null)
            GestureDetector(
              onTap: action,
              child: Text(
                actionLabel,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: SwiftUIColor.accentBlue,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// A horizontal scrollable section (like "Continue Watching" on Apple TV app)
class SwiftUIScrollSection extends StatelessWidget {
  const SwiftUIScrollSection({
    super.key,
    required this.title,
    required this.children,
    this.action,
    this.actionLabel = '查看全部',
    this.itemExtent = 160,
    this.itemHeight = 120,
    this.padding = const EdgeInsets.only(left: 20),
  });

  final String title;
  final List<Widget> children;
  final VoidCallback? action;
  final String actionLabel;
  final double itemExtent;
  final double itemHeight;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SwiftUISectionHeader(
          title,
          action: action,
          actionLabel: actionLabel,
        ),
        SizedBox(
          height: itemHeight + 16,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: padding,
            itemCount: children.length,
            separatorBuilder: (_, __) => const SizedBox(width: 10),
            itemBuilder: (_, i) => SizedBox(
              width: itemExtent,
              child: children[i],
            ),
          ),
        ),
      ],
    );
  }
}

/// Material-style navigation built with SwiftUI aesthetic
class SwiftUINavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const SwiftUINavigationBar({
    super.key,
    this.title,
    this.actions,
    this.leading,
    this.transparent = false,
  });

  final String? title;
  final List<Widget>? actions;
  final Widget? leading;
  final bool transparent;

  @override
  Size get preferredSize => const Size.fromHeight(44);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: transparent
          ? null
          : BoxDecoration(
              color: theme.colorScheme.surface,
              border: Border(
                bottom: BorderSide(
                  color: SwiftUIColor.separator(context),
                  width: 0.5,
                ),
              ),
            ),
      child: SafeArea(
        bottom: false,
        child: SizedBox(
          height: 44,
          child: Row(
            children: [
              if (leading != null) leading!,
              if (leading == null) const SizedBox(width: 16),
              Expanded(
                child: title != null
                    ? SwiftUIInlineTitle(title!)
                    : const SizedBox.shrink(),
              ),
              if (actions != null) ...actions!,
              if (actions != null) const SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }
}
