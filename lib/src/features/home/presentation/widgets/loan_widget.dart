import 'package:flutter/material.dart';
import 'package:remote/src/core/shared/ui/ui.dart';

class LoanWidget extends StatelessWidget {
  const LoanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CardSectionWidget(
      title: 'Empréstimo',
      events: const ['CreditCardCreditCard', 'Finance'],
      onPressed: () {},
      children: [
        Text(
          'Valor disponível de até',
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'R\$ 800.000,00',
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
