import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.2,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
    );
  }
}
