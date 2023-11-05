import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:remote/src/data/services/firebase/firebase.dart';

class AppFirebaseRemoteGet {
  static String get homeRemoteOrder => FirebaseRemoteConfig.instance
      .getString(AppFirebaseRemoteKeys.homeRemoteOrder);
}
