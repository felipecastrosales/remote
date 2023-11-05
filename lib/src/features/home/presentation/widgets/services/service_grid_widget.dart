import 'package:flutter/material.dart';
import 'package:remote/src/core/shared/ui/ui.dart';

class ServiceGridWidget extends StatelessWidget {
  const ServiceGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      itemCount: ServicesItems.values.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return ServicesItems.values[index];
      },
    );
  }
}
