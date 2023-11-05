import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remote/src/features/home/presentation/pages/home_page.dart';
import 'package:remote/src/features/navigation/bottom_bar/app_bottom_navigation_bar.dart';
import 'package:remote/src/features/navigation/bottom_bar/app_bottom_navigation_bar_notifier.dart';
import 'package:remote/src/features/offers/presentation/pages/offers_page.dart';
import 'package:remote/src/features/transactions/presentation/pages/transactions_page.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage>
    with TickerProviderStateMixin<BasePage> {
  late AppBottomNavigationBarNotifier bottomBarNotifier;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    bottomBarNotifier = context.read<AppBottomNavigationBarNotifier>();
    selectedIndex = bottomBarNotifier.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppBottomNavigationBarNotifier>(
      builder: (context, notifier, child) {
        final bottomBarIndex = notifier.selectedIndex;

        return Scaffold(
          body: const [
            HomePage(),
            OffersPage(),
            TransactionsPage(),
          ][bottomBarIndex],
          bottomNavigationBar: const AppBottomNavigationBar(),
        );
      },
    );
  }
}
