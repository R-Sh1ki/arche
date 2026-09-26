// import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:forui/forui.dart';
import 'package:material_ui/material_ui.dart';

import 'package:arche/src/rust/api/simple.dart';
import 'package:arche/src/rust/frb_generated.dart';

import './theme/theme.dart';

Future<void> main() async {
  await RustLib.init();
  runApp(const ArcheApplication());
}

class ArcheApplication extends StatelessWidget {
  const ArcheApplication({super.key});

  @override
  Widget build(BuildContext context) {
    final (
      lightTheme,
      darkTheme,
    ) = const <TargetPlatform>{.android, .iOS, .fuchsia}.contains(defaultTargetPlatform)
        ? (ArcheTheme.light.touch, ArcheTheme.dark.desktop)
        : (ArcheTheme.light.desktop, ArcheTheme.dark.desktop);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // TODO: replace with your application's supported locales.
      supportedLocales: FLocalizations.supportedLocales,
      // TODO: add your application's localizations delegates.
      localizationsDelegates: const [...FLocalizations.localizationsDelegates],
      theme: lightTheme.toApproximateMaterialTheme(),
      darkTheme: darkTheme.toApproximateMaterialTheme(),
      builder: (context, child) => FTheme(
        data: Theme.brightnessOf(context) == .light ? lightTheme : darkTheme,
        child: FToaster(child: FTooltipGroup(child: child!)),
      ),
      home: const FScaffold(child: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      sidebar: FSidebar(
        header: const Padding(
          padding: EdgeInsets.all(16),
          child: Text('Arche', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        children: [
          FSidebarGroup(
            label: const Text('Library'),
            children: [
              FSidebarItem(
                icon: Icon(FLucideIcons.library, color: context.theme.colors.app.success),
                label: const Text('All Papers'),
                onPress: () {},
              ),
              FSidebarItem(
                icon: const Icon(FLucideIcons.star),
                label: const Text('Favorites'),
                onPress: () {},
              ),
              FSidebarItem(
                icon: const Icon(FLucideIcons.archive),
                label: const Text('Archive'),
                onPress: () {},
              ),
            ],
          ),
        ],
        footer: const Padding(padding: EdgeInsets.all(16), child: Text('Arche')),
      ),

      header: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          children: [Text('Library', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))],
        ),
      ),

      child: const Padding(
        padding: EdgeInsets.all(24),
        child: Center(child: Text('Content')),
      ),
    );
  }
}
