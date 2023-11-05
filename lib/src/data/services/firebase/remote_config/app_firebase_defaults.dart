import 'package:remote/src/data/services/firebase/firebase.dart';
import 'package:remote/src/features/home/presentation/ab/home_ab_keys.dart';

class AppFirebaseDefaults {
  static get getRemoteConfigKeys => {
        AppFirebaseRemoteKeys.homeRemoteOrder: HomeABOrders.defaultOrder,
      };
}
