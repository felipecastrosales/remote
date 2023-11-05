import 'package:flutter/material.dart';
import 'package:remote/src/core/shared/ui/sections/app_card.dart';

class OffersItem extends StatelessWidget {
  const OffersItem({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final splittedText = text.split('<br>');

    return AppCard(
      onPressed: () {},
      child: RichText(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          children: [
            TextSpan(
              text: splittedText[0],
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: splittedText[1],
              style: TextStyle(color: Colors.grey[800], fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
