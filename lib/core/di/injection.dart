import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'injection.config.dart';
import '../services/location_service.dart';
import '../services/enhanced_location_service.dart';
import '../services/motion_detection_service.dart';
import '../services/sensor_fusion_service.dart';
import '../services/enhanced_trip_detection_service.dart';
import '../services/performance_logging_service.dart';
import '../services/location_configuration_service.dart';
import '../services/notification_service.dart';
import '../services/local_storage_service.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
