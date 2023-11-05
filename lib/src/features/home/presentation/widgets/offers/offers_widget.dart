import 'package:flutter/material.dart';
import 'package:remote/src/features/home/presentation/widgets/offers/offers_item.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 16),
            OffersItem(
              text:
                  'Você tem R\$50.000,00 disponíveis para empréstimo<br>, simule.',
            ),
            SizedBox(width: 16),
            OffersItem(text: 'Ofertas para você<br> comprar com seu cartão.'),
            SizedBox(width: 16),
            OffersItem(
              text: 'Mude seu limite de crédito<br> quando quiser.',
            ),
            SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
