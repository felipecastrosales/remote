import 'package:flutter/material.dart';
import 'package:remote/src/core/shared/ui/ui.dart';
import 'package:remote/src/features/home/presentation/widgets/discover_offers/discover_offers_item.dart';

class DiscoverOffersWidget extends StatelessWidget {
  const DiscoverOffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: CardHeaderWidget(
              title: 'Descubra mais',
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  DiscoverOffersItem(
                    image:
                        'https://images.unsplash.com/photo-1572567981653-ce74f7356946?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2671&q=80',
                    title: 'Seguro de vida',
                    description:
                        'Proteção para você e sua família. E o melhor: sem burocracia.',
                    buttonText: 'Contratar',
                  ),
                  SizedBox(width: 16),
                  DiscoverOffersItem(
                    image:
                        'https://images.unsplash.com/photo-1592890288564-76628a30a657?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2670&q=80',
                    title: 'Celular seguro',
                    description:
                        'Proteção para seu aparelho, que anda sempre com você.',
                    buttonText: 'Conheça',
                  ),
                  SizedBox(width: 16),
                  DiscoverOffersItem(
                    image:
                        'https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3270&q=80',
                    title: 'Plano de saúde',
                    description:
                        'Um plano de saúde que cabe no seu bolso e atende suas necessidades.',
                    buttonText: 'Ver planos',
                  ),
                  SizedBox(width: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
