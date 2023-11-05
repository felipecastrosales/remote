import 'package:flutter/material.dart';

class CardHeaderWidget extends StatelessWidget {
  const CardHeaderWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 1,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Colors.grey[900],
      ),
    );
  }
}
