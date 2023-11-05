import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class AppFirebaseAnalytics {
  static void logEvent(String name) {
    final event = name.replaceAll(' ', '');
    try {
      FirebaseAnalytics.instance
          .logEvent(name: event)
          .then((value) => debugPrint('Analytics - logEvent: $event'));
    } catch (e) {
      debugPrint('Analytics - logEvent: $event, error: $e');
    }
  }

  static void logEvents(List<String> names) {
    for (var name in names) {
      logEvent(name);
    }
  }

  static void logHomeEvent(List<String> names) =>
      logEvents(['HomeTap', for (var name in names) name]);
}
