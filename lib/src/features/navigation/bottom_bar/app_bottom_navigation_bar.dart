import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remote/src/features/navigation/bottom_bar/app_bottom_navigation_bar_notifier.dart';
import 'package:remote/src/features/navigation/destination/destination.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<AppBottomNavigationBarNotifier>();

    return BottomNavigationBar(
      selectedItemColor: Colors.teal,
      currentIndex: notifier.selectedIndex,
      onTap: (index) {
        notifier.selectedIndex = index;
      },
      items: Destination.items.map((destination) {
        return BottomNavigationBarItem(
          label: destination.title,
          icon: Icon(
            destination.icon,
            color: destination.color,
          ),
        );
      }).toList(),
    );
  }
}
