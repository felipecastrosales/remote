import 'package:firebase_remote_config/firebase_remote_config.dart';

class AppFirebaseSettings {
  final config = RemoteConfigSettings(
    // fetchTimeout: const Duration(minutes: 1),
    fetchTimeout: const Duration(hours: 1),
    // minimumFetchInterval: const Duration(hours: 1),
    minimumFetchInterval: const Duration(hours: 1),
  );
}
