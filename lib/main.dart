import 'package:flutter/material.dart';

import 'package:remote/src/app.dart';
import 'package:remote/src/data/services/firebase/firebase.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Set up Firebase initialization.
  await AppFirebaseService().setUpInitialization();

  runApp(
    const App(),
  );
}
