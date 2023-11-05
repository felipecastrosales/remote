import 'package:flutter/material.dart';
import 'package:remote/src/data/services/firebase/firebase.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    required this.events,
    required this.onPressed,
    this.margin,
  });

  final Widget child;
  final List<String> events;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        AppFirebaseAnalytics.logHomeEvent(events);
        onPressed();
      },
      child: Container(
        height: 60,
        width: MediaQuery.sizeOf(context).width - 120,
        margin: margin,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200],
        ),
        child: child,
      ),
    );
  }
}
