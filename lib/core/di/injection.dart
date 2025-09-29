import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'injection.config.dart';
import '../services/location_service.dart';
import '../network/api_service.dart';
import '../../features/trips/data/datasources/trips_remote_data_source.dart';
import '../../features/travel_preferences/data/datasources/travel_preferences_remote_data_source.dart';
import '../../features/dashboard/data/datasources/dashboard_remote_data_source.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async => await getIt.init();

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
