import 'package:firebase_remote_config/firebase_remote_config.dart';

/// Settings for Firebase Remote Config, such as fetch timeout and minimum fetch interval.
/// You can change the values according to your needs,
/// like when you want to fetch new values or is on specific Flavor.
class AppFirebaseSettings {
  final config = RemoteConfigSettings(
    /// fetchTimeout: const Duration(minutes: 1),
    fetchTimeout: const Duration(hours: 1),

    /// minimumFetchInterval: const Duration(hours: 1),
    minimumFetchInterval: const Duration(hours: 1),
  );
}
