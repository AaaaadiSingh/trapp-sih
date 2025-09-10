// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/dashboard/presentation/bloc/dashboard_bloc.dart'
    as _i652;
import '../../features/dashboard/presentation/bloc/survey_bloc.dart' as _i79;
import '../../features/dashboard/presentation/bloc/trip_plan_bloc.dart'
    as _i405;
import '../../features/profile/presentation/bloc/location_demographics_bloc.dart'
    as _i105;
import '../../features/profile/presentation/bloc/personal_info_bloc.dart'
    as _i1030;
import '../../features/profile/presentation/bloc/review_confirmation_bloc.dart'
    as _i598;
import '../../features/profile/presentation/bloc/travel_preferences_bloc.dart'
    as _i130;
import '../../features/settings/data/datasources/settings_local_data_source.dart'
    as _i599;
import '../../features/settings/data/datasources/settings_remote_data_source.dart'
    as _i188;
import '../../features/settings/data/repositories/settings_repository_impl.dart'
    as _i955;
import '../../features/settings/domain/repositories/settings_repository.dart'
    as _i674;
import '../../features/settings/domain/usecases/delete_user_data.dart' as _i190;
import '../../features/settings/domain/usecases/export_user_data.dart' as _i375;
import '../../features/settings/domain/usecases/get_privacy_settings.dart'
    as _i901;
import '../../features/settings/domain/usecases/update_privacy_settings.dart'
    as _i813;
import '../../features/settings/presentation/bloc/settings_bloc.dart' as _i585;
import '../services/location_service.dart' as _i669;
import '../services/notification_service.dart' as _i941;
import '../services/trip_detection_service.dart' as _i33;
import '../services/trip_logging_service.dart' as _i521;
import 'injection.dart' as _i464;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i79.SurveyBloc>(() => _i79.SurveyBloc());
    gh.factory<_i405.TripPlanBloc>(() => _i405.TripPlanBloc());
    gh.factory<_i105.LocationDemographicsBloc>(
      () => _i105.LocationDemographicsBloc(),
    );
    gh.factory<_i1030.PersonalInfoBloc>(() => _i1030.PersonalInfoBloc());
    gh.factory<_i598.ReviewConfirmationBloc>(
      () => _i598.ReviewConfirmationBloc(),
    );
    gh.factory<_i130.TravelPreferencesBloc>(
      () => _i130.TravelPreferencesBloc(),
    );
    gh.singleton<_i669.LocationService>(() => _i669.LocationService());
    gh.singleton<_i941.NotificationService>(() => _i941.NotificationService());
    gh.singleton<_i521.TripLoggingService>(() => _i521.TripLoggingService());
    gh.singleton<_i33.TripDetectionService>(
      () => _i33.TripDetectionService(
        gh<_i669.LocationService>(),
        gh<_i941.NotificationService>(),
      ),
    );
    gh.lazySingleton<_i188.SettingsRemoteDataSource>(
      () => _i188.SettingsRemoteDataSourceImpl(),
    );
    gh.lazySingleton<_i599.SettingsLocalDataSource>(
      () => _i599.SettingsLocalDataSourceImpl(
        sharedPreferences: gh<_i460.SharedPreferences>(),
      ),
    );
    gh.factory<_i652.DashboardBloc>(
      () => _i652.DashboardBloc(
        gh<_i669.LocationService>(),
        gh<_i33.TripDetectionService>(),
        gh<_i521.TripLoggingService>(),
      ),
    );
    gh.lazySingleton<_i674.SettingsRepository>(
      () => _i955.SettingsRepositoryImpl(
        localDataSource: gh<_i599.SettingsLocalDataSource>(),
        remoteDataSource: gh<_i188.SettingsRemoteDataSource>(),
      ),
    );
    gh.factory<_i190.DeleteUserData>(
      () => _i190.DeleteUserData(gh<_i674.SettingsRepository>()),
    );
    gh.factory<_i375.ExportUserData>(
      () => _i375.ExportUserData(gh<_i674.SettingsRepository>()),
    );
    gh.factory<_i901.GetPrivacySettings>(
      () => _i901.GetPrivacySettings(gh<_i674.SettingsRepository>()),
    );
    gh.factory<_i813.UpdatePrivacySettings>(
      () => _i813.UpdatePrivacySettings(gh<_i674.SettingsRepository>()),
    );
    gh.factory<_i585.SettingsBloc>(
      () => _i585.SettingsBloc(
        getPrivacySettings: gh<_i901.GetPrivacySettings>(),
        updatePrivacySettings: gh<_i813.UpdatePrivacySettings>(),
        exportUserData: gh<_i375.ExportUserData>(),
        deleteUserData: gh<_i190.DeleteUserData>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i464.RegisterModule {}
