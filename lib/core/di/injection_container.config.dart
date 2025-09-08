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

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i652.DashboardBloc>(() => _i652.DashboardBloc());
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
    return this;
  }
}
