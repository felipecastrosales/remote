import 'package:flutter/material.dart';
import 'package:remote/src/data/services/firebase/firebase.dart';

class ServiceWidgetTile extends StatelessWidget {
  const ServiceWidgetTile({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppFirebaseAnalytics.logHomeEvent(
          ['Services', 'Service_$title'],
        );
      },
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 80,
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
              ),
              child: Icon(
                icon,
                color: Colors.grey[700],
                size: 24,
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Text(
                title,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
