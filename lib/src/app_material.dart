import 'package:flutter/material.dart';
import 'package:remote/src/features/base/presentation/pages/base_page.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const BasePage(),
    );
  }
}
