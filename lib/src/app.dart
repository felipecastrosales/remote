import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remote/src/app_material.dart';
import 'package:remote/src/features/navigation/bottom_bar/app_bottom_navigation_bar_notifier.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppBottomNavigationBarNotifier>(
          create: (_) => AppBottomNavigationBarNotifier(),
        ),
      ],
      child: const AppMaterial(),
    );
  }
}
