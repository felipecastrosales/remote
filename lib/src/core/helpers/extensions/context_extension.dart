import 'package:flutter/material.dart';

extension NavigatorExt on BuildContext {
  void pop<T extends Object>([T? result]) => Navigator.pop(this, result);
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) =>
      Navigator.pushNamed<T?>(this, routeName, arguments: arguments);
}
