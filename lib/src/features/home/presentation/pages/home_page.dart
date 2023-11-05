import 'package:flutter/material.dart';
import 'package:remote/src/core/shared/ui/ui.dart';
import 'package:remote/src/features/home/presentation/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HomeHeaderWidget(),
          MyAccount(),
          // ServiceGridWidget(),
          ServiceWidget(),
          OffersWidget(),
          MyCards(),
          AppDivider(),
          CreditCard(),
          AppDivider(),
          LoanWidget(),
          AppDivider(),
          FollowWidget(),
          AppDivider(),
          DiscoverOffersWidget(),
          AppDivider(),
        ],
      ),
    );
  }
}
