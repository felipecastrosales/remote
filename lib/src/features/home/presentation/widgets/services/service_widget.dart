import 'package:flutter/material.dart';
import 'package:remote/src/core/shared/ui/ui.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: ServicesItems.values,
        ),
      ),
    );
  }
}
