import 'package:flutter/material.dart';

/// iOS 17 style bottom tab bar scaffold
class SwiftUITabScaffold extends StatelessWidget {
  const SwiftUITabScaffold({
    super.key,
    required this.currentIndex,
    required this.onIndexChanged,
    required this.tabs,
    this.body,
  });

  final int currentIndex;
  final ValueChanged<int> onIndexChanged;
  final List<SwiftUITabItem> tabs;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onIndexChanged,
        type: BottomNavigationBarType.fixed,
        backgroundColor: theme.colorScheme.surface,
        selectedItemColor: const Color(0xFF007AFF),
        unselectedItemColor: theme.colorScheme.onSurface.withValues(alpha: 0.4),
        elevation: 0,
        items: tabs.map((t) => t.toItem()).toList(),
      ),
    );
  }
}

class SwiftUITabItem {
  const SwiftUITabItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
  });

  final IconData icon;
  final IconData activeIcon;
  final String label;

  BottomNavigationBarItem toItem() {
    return BottomNavigationBarItem(icon: Icon(icon), activeIcon: Icon(activeIcon), label: label);
  }
}
