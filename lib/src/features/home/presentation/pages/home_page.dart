import 'package:flutter/material.dart';
import 'package:remote/src/core/shared/ui/ui.dart';
import 'package:remote/src/data/services/firebase/firebase.dart';
import 'package:remote/src/features/home/presentation/ab/home_ab_keys.dart';
import 'package:remote/src/features/home/presentation/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeHeaderWidget(),

          /// This is the part of the code that was changed to use the remote order
          /// instead of the default order.
          /// The remote order is fetched via the AppFirebaseRemoteGet class,
          /// that gets the remote order from the Firebase Remote Config.
          for (final item
              in AppFirebaseRemoteGet.homeRemoteOrder.trim().split(','))
            switch (item.trim()) {
              HomeABKeys.account => const MyAccount(),
              HomeABKeys.services => const ServiceWidget(),
              HomeABKeys.servicesGrid => const ServiceGridWidget(),
              HomeABKeys.myCards => const MyCards(),
              HomeABKeys.offers => const OffersWidget(),
              HomeABKeys.creditCard => const CreditCard(),
              HomeABKeys.loans => const LoanWidget(),
              HomeABKeys.follow => const FollowWidget(),
              HomeABKeys.searchOffers => const DiscoverOffersWidget(),
              HomeABKeys.divider => const AppDivider(),

              /// If want to add space remotely between widgets
              _ when double.tryParse(item) != null =>
                SizedBox(height: double.parse(item)),
              _ => const SizedBox(),
            },
        ],
      ),
    );
  }
}
