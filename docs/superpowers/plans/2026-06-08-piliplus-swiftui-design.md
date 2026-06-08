# PiliPlus SwiftUI Design - Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Create a modified PiliPlus (Bilibili third-party Flutter client) with modern iOS 17+ SwiftUI-style UI design, targeting Android, built via GitHub Actions.

**Architecture:** Keep all business logic intact. Add a `lib/design_system/` layer with SwiftUI-style design tokens/components, then replace pages incrementally. Each page swap is independently verifiable.

**Tech Stack:** Flutter 3.44.1, Material3 + custom theming, GitHub Actions CI

---

### Task 0: GitHub Repo & CI Setup

- [ ] **Create GitHub repo and push code**

We'll need a GitHub repo to trigger Actions. Options:
- If `gh` CLI available: `gh repo create PiliPlus-SwiftUI --private --source=. --push`
- Or manually create a repo on github.com and push

- [ ] **Update GitHub Actions workflow** to build APK on push and `workflow_dispatch`

This involves modifying `.github/workflows/build.yml` to build on push events so we get APK artifacts automatically.

### Task 1: Create Design System Foundation

**Files:**
- Create: `lib/design_system/foundations/colors.dart`
- Create: `lib/design_system/foundations/typography.dart`
- Create: `lib/design_system/foundations/spacing.dart`
- Create: `lib/design_system/components/swiftui_appbar.dart`
- Create: `lib/design_system/components/swiftui_card.dart`
- Create: `lib/design_system/components/swiftui_list_tile.dart`
- Create: `lib/design_system/theme/theme_data.dart`

This creates the SwiftUI aesthetic building blocks:
- Colors: systemBackground, groupedBackground, gray tones matching iOS 17
- Typography: Large Title, Title, Headline, Body, Callout, Caption with SF-like sizing
- Spacing: consistent 8pt grid system
- Components: minimal chrome, soft corners, glass effects, spacious layout

### Task 2: Rewrite Main Scaffold (Bottom Nav + Root)

**Files:**
- Create: `lib/design_system/components/swiftui_tab_scaffold.dart`
- Modify: `lib/pages/main/view.dart` (replace main scaffold)

### Task 3: Rewrite Home Page

**Files:**
- Modify: `lib/pages/home/view.dart`

### Task 4: Rewrite Video Detail Page (playback)

**Files:**
- Modify: `lib/pages/video/view.dart`

### Task 5: Rewrite User/Mine Page

**Files:**
- Modify: `lib/pages/mine/view.dart`

### Task 6: Build & Verify via CI

- Trigger `workflow_dispatch` on GitHub Actions
- Download APK artifacts and verify
