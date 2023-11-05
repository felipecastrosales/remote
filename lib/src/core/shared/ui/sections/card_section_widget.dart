import 'package:flutter/material.dart';
import 'package:remote/src/core/shared/ui/ui.dart';

class CardSectionWidget extends StatelessWidget {
  const CardSectionWidget({
    super.key,
    required this.title,
    required this.children,
    required this.onPressed,
  });

  final String title;
  final List<Widget> children;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: CardHeaderWidget(title: title),
                ),
                const Icon(Icons.keyboard_arrow_right_rounded),
              ],
            ),
            const SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }
}
