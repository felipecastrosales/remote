import 'package:flutter/material.dart';

class Destination {
  const Destination({
    required this.index,
    required this.title,
    required this.icon,
    this.color = Colors.teal,
  });

  final int index;
  final String title;
  final IconData icon;
  final MaterialColor color;

  static const List<Destination> items = [
    Destination(
      index: 0,
      title: 'Home',
      icon: Icons.home_rounded,
    ),
    Destination(
      index: 1,
      title: 'Investimentos',
      icon: Icons.business_rounded,
    ),
    Destination(
      index: 2,
      title: 'Carteiras',
      icon: Icons.account_balance_wallet_rounded,
    ),
  ];
}
