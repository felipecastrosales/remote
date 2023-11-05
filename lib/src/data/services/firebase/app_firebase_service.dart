import 'dart:developer' as developer;

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:remote/firebase_options.dart';
import 'package:remote/src/data/services/firebase/firebase.dart';

class AppFirebaseService {
  Future<void> setUpInitialization() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await setUpRemoteConfig();
  }

  Future<void> setUpRemoteConfig() async {
    try {
      final remoteConfig = FirebaseRemoteConfig.instance;
      await remoteConfig.setDefaults(AppFirebaseDefaults.getRemoteConfigKeys);
      await remoteConfig.setConfigSettings(AppFirebaseSettings().config);
      await remoteConfig.fetchAndActivate();
    } catch (e, s) {
      developer.log(
        'setUpRemoteConfig',
        name: 'AppFirebaseService',
        error: e,
        stackTrace: s,
      );
    }
  }
}
