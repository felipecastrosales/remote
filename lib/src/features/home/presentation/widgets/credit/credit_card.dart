import 'package:flutter/material.dart';
import 'package:remote/src/core/shared/ui/ui.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CardSectionWidget(
      title: 'Cartão de crédito',
      onPressed: () {},
      children: [
        Text(
          'Fatura atual',
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'R\$ 8.000,00',
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'Limite disponível de R\$ 50.000,00',
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
