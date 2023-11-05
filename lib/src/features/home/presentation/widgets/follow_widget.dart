import 'package:flutter/material.dart';
import 'package:remote/src/core/shared/ui/ui.dart';

class FollowWidget extends StatelessWidget {
  const FollowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CardSectionWidget(
      title: 'Acompanhe também',
      onPressed: () {},
      children: [
        Container(
          height: 60,
          width: MediaQuery.sizeOf(context).width,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[200],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.credit_card,
                size: 24,
                color: Colors.grey[800],
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  'Assistente de pagamentos',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
