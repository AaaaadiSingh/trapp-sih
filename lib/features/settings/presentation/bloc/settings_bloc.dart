import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/usecases/get_privacy_settings.dart';
import '../../domain/usecases/update_privacy_settings.dart';
import '../../domain/usecases/export_user_data.dart';
import '../../domain/usecases/delete_user_data.dart';
import '../../domain/entities/privacy_settings.dart';
import 'settings_event.dart';
import 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetPrivacySettings _getPrivacySettings;
  final UpdatePrivacySettings _updatePrivacySettings;
  final ExportUserData _exportUserData;
  final DeleteUserData _deleteUserData;

  SettingsBloc({
    required GetPrivacySettings getPrivacySettings,
    required UpdatePrivacySettings updatePrivacySettings,
    required ExportUserData exportUserData,
    required DeleteUserData deleteUserData,
  }) : _getPrivacySettings = getPrivacySettings,
       _updatePrivacySettings = updatePrivacySettings,
       _exportUserData = exportUserData,
       _deleteUserData = deleteUserData,
       super(const SettingsState()) {
    on<SettingsEvent>((event, emit) {
      event.when(
        loadSettings: () => _onLoadSettings(event, emit),
        updateLocationConsent: (consent) => _onUpdateLocationConsent(event, emit),
        updateBackgroundLocationConsent: (consent) => _onUpdateBackgroundLocationConsent(event, emit),
        updateDataSharingConsent: (consent) => _onUpdateDataSharingConsent(event, emit),
        updateAnalyticsConsent: (consent) => _onUpdateAnalyticsConsent(event, emit),
        updateLocationAccuracy: (accuracy) => _onUpdateLocationAccuracy(event, emit),
        updateDataRetentionPeriod: (period) => _onUpdateDataRetentionPeriod(event, emit),
        exportData: () => _onExportData(event, emit),
        deleteAllData: () => _onDeleteAllData(event, emit),
        clearTripHistory: () => _onClearTripHistory(event, emit),
      );
    });
  }

  Future<void> _onLoadSettings(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));
    
    try {
      final result = await _getPrivacySettings(NoParams());
      
      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          error: failure.message,
        )),
        (settings) => emit(state.copyWith(
          isLoading: false,
          locationConsent: settings.locationConsent,
          backgroundLocationConsent: settings.backgroundLocationConsent,
          dataSharingConsent: settings.dataSharingConsent,
          analyticsConsent: settings.analyticsConsent,
          locationAccuracy: settings.locationAccuracy.value,
          dataRetentionPeriod: settings.dataRetentionPeriod.value,
          totalTrips: settings.totalTrips,
          totalDataPoints: settings.totalDataPoints,
          dataSize: settings.dataSize,
          lastBackup: settings.lastBackup,
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        error: 'Failed to load settings: $e',
      ));
    }
  }

  Future<void> _onUpdateLocationConsent(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await event.when(
      loadSettings: () async {},
      updateLocationConsent: (consent) async {
        emit(state.copyWith(isSaving: true));
        
        try {
          final currentSettings = await _getPrivacySettings(NoParams());
          await currentSettings.fold(
            (failure) => throw Exception('Failed to get current settings'),
            (settings) async {
              final updatedSettings = settings.copyWith(
                locationConsent: consent,
              );
              
              final result = await _updatePrivacySettings(updatedSettings);
              result.fold(
                (failure) => throw Exception('Failed to update settings'),
                (_) => emit(state.copyWith(
                  locationConsent: consent,
                  isSaving: false,
                )),
              );
            },
          );
        } catch (e) {
          emit(state.copyWith(
            error: e.toString(),
            isSaving: false,
          ));
        }
      },
      updateBackgroundLocationConsent: (_) async {},
      updateDataSharingConsent: (_) async {},
      updateAnalyticsConsent: (_) async {},
      updateLocationAccuracy: (_) async {},
      updateDataRetentionPeriod: (_) async {},
      exportData: () async {},
      deleteAllData: () async {},
      clearTripHistory: () async {},
    );
  }

  Future<void> _onUpdateBackgroundLocationConsent(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await event.when(
      loadSettings: () async {},
      updateLocationConsent: (_) async {},
      updateBackgroundLocationConsent: (consent) async {
        emit(state.copyWith(isSaving: true));
        
        try {
          final currentSettings = await _getPrivacySettings(NoParams());
          await currentSettings.fold(
            (failure) => throw Exception('Failed to get current settings'),
            (settings) async {
              final updatedSettings = settings.copyWith(
                backgroundLocationConsent: consent,
              );
              
              final result = await _updatePrivacySettings(updatedSettings);
              result.fold(
                (failure) => throw Exception('Failed to update settings'),
                (_) => emit(state.copyWith(
                  backgroundLocationConsent: consent,
                  isSaving: false,
                )),
              );
            },
          );
        } catch (e) {
          emit(state.copyWith(
            error: e.toString(),
            isSaving: false,
          ));
        }
      },
      updateDataSharingConsent: (_) async {},
      updateAnalyticsConsent: (_) async {},
      updateLocationAccuracy: (_) async {},
      updateDataRetentionPeriod: (_) async {},
      exportData: () async {},
      deleteAllData: () async {},
      clearTripHistory: () async {},
    );
  }

  Future<void> _onUpdateDataSharingConsent(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await event.when(
      loadSettings: () async {},
      updateLocationConsent: (_) async {},
      updateBackgroundLocationConsent: (_) async {},
      updateDataSharingConsent: (consent) async {
        emit(state.copyWith(isSaving: true));
        
        try {
          final currentSettings = await _getPrivacySettings(NoParams());
          await currentSettings.fold(
            (failure) => throw Exception('Failed to get current settings'),
            (settings) async {
              final updatedSettings = settings.copyWith(
                dataSharingConsent: consent,
              );
              
              final result = await _updatePrivacySettings(updatedSettings);
              result.fold(
                (failure) => throw Exception('Failed to update settings'),
                (_) => emit(state.copyWith(
                  dataSharingConsent: consent,
                  isSaving: false,
                )),
              );
            },
          );
        } catch (e) {
          emit(state.copyWith(
            error: e.toString(),
            isSaving: false,
          ));
        }
      },
      updateAnalyticsConsent: (_) async {},
      updateLocationAccuracy: (_) async {},
      updateDataRetentionPeriod: (_) async {},
      exportData: () async {},
      deleteAllData: () async {},
      clearTripHistory: () async {},
    );
  }

  Future<void> _onUpdateAnalyticsConsent(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await event.when(
      loadSettings: () async {},
      updateLocationConsent: (_) async {},
      updateBackgroundLocationConsent: (_) async {},
      updateDataSharingConsent: (_) async {},
      updateAnalyticsConsent: (consent) async {
        emit(state.copyWith(isSaving: true));
        
        try {
          final currentSettings = await _getPrivacySettings(NoParams());
          await currentSettings.fold(
            (failure) => throw Exception('Failed to get current settings'),
            (settings) async {
              final updatedSettings = settings.copyWith(
                analyticsConsent: consent,
              );
              
              final result = await _updatePrivacySettings(updatedSettings);
              result.fold(
                (failure) => throw Exception('Failed to update settings'),
                (_) => emit(state.copyWith(
                  analyticsConsent: consent,
                  isSaving: false,
                )),
              );
            },
          );
        } catch (e) {
          emit(state.copyWith(
            error: e.toString(),
            isSaving: false,
          ));
        }
      },
      updateLocationAccuracy: (_) async {},
      updateDataRetentionPeriod: (_) async {},
      exportData: () async {},
      deleteAllData: () async {},
      clearTripHistory: () async {},
    );
  }

  Future<void> _onUpdateLocationAccuracy(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await event.when(
      loadSettings: () async {},
      updateLocationConsent: (_) async {},
      updateBackgroundLocationConsent: (_) async {},
      updateDataSharingConsent: (_) async {},
      updateAnalyticsConsent: (_) async {},
      updateLocationAccuracy: (accuracy) async {
        emit(state.copyWith(isSaving: true));
        
        try {
          final currentSettings = await _getPrivacySettings(NoParams());
          await currentSettings.fold(
            (failure) => throw Exception('Failed to get current settings'),
            (settings) async {
              final updatedSettings = settings.copyWith(
                locationAccuracy: LocationAccuracy.fromValue(accuracy),
              );
              
              final result = await _updatePrivacySettings(updatedSettings);
              result.fold(
                (failure) => throw Exception('Failed to update settings'),
                (_) => emit(state.copyWith(
                  locationAccuracy: accuracy,
                  isSaving: false,
                )),
              );
            },
          );
        } catch (e) {
          emit(state.copyWith(
            error: e.toString(),
            isSaving: false,
          ));
        }
      },
      updateDataRetentionPeriod: (_) async {},
      exportData: () async {},
      deleteAllData: () async {},
      clearTripHistory: () async {},
    );
  }

  Future<void> _onUpdateDataRetentionPeriod(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await event.when(
      loadSettings: () async {},
      updateLocationConsent: (_) async {},
      updateBackgroundLocationConsent: (_) async {},
      updateDataSharingConsent: (_) async {},
      updateAnalyticsConsent: (_) async {},
      updateLocationAccuracy: (_) async {},
      updateDataRetentionPeriod: (period) async {
        emit(state.copyWith(isSaving: true));
        
        try {
          final currentSettings = await _getPrivacySettings(NoParams());
          await currentSettings.fold(
            (failure) => throw Exception('Failed to get current settings'),
            (settings) async {
              final updatedSettings = settings.copyWith(
                dataRetentionPeriod: DataRetentionPeriod.fromValue(period),
              );
              
              final result = await _updatePrivacySettings(updatedSettings);
              result.fold(
                (failure) => throw Exception('Failed to update settings'),
                (_) => emit(state.copyWith(
                  dataRetentionPeriod: period,
                  isSaving: false,
                )),
              );
            },
          );
        } catch (e) {
          emit(state.copyWith(
            error: e.toString(),
            isSaving: false,
          ));
        }
      },
      exportData: () async {},
      deleteAllData: () async {},
      clearTripHistory: () async {},
    );
  }

  Future<void> _onExportData(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await event.when(
      loadSettings: () async {},
      updateLocationConsent: (_) async {},
      updateBackgroundLocationConsent: (_) async {},
      updateDataSharingConsent: (_) async {},
      updateAnalyticsConsent: (_) async {},
      updateLocationAccuracy: (_) async {},
      updateDataRetentionPeriod: (_) async {},
      exportData: () async {
        emit(state.copyWith(isExporting: true, error: null));
        
        try {
          final result = await _exportUserData(NoParams());
          
          result.fold(
            (failure) => emit(state.copyWith(
              isExporting: false,
              error: failure.message,
            )),
            (filePath) => emit(state.copyWith(
              isExporting: false,
              successMessage: 'Data exported successfully to $filePath',
            )),
          );
        } catch (e) {
          emit(state.copyWith(
            isExporting: false,
            error: 'Failed to export data: $e',
          ));
        }
      },
      deleteAllData: () async {},
      clearTripHistory: () async {},
    );
  }

  Future<void> _onDeleteAllData(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await event.when(
      loadSettings: () async {},
      updateLocationConsent: (_) async {},
      updateBackgroundLocationConsent: (_) async {},
      updateDataSharingConsent: (_) async {},
      updateAnalyticsConsent: (_) async {},
      updateLocationAccuracy: (_) async {},
      updateDataRetentionPeriod: (_) async {},
      exportData: () async {},
      deleteAllData: () async {
        emit(state.copyWith(isDeleting: true, error: null));
        
        try {
          final result = await _deleteUserData(DeleteUserDataParams(deleteAll: true));
          
          result.fold(
            (failure) => emit(state.copyWith(
              isDeleting: false,
              error: failure.message,
            )),
            (_) => emit(state.copyWith(
              isDeleting: false,
              successMessage: 'All data deleted successfully',
              totalTrips: 0,
              totalDataPoints: 0,
              dataSize: '0 MB',
            )),
          );
        } catch (e) {
           emit(state.copyWith(
             isDeleting: false,
             error: 'Failed to delete data: $e',
           ));
         }
       },
       clearTripHistory: () async {},
     );
  }

  Future<void> _onClearTripHistory(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await event.when(
      loadSettings: () async {},
      updateLocationConsent: (_) async {},
      updateBackgroundLocationConsent: (_) async {},
      updateDataSharingConsent: (_) async {},
      updateAnalyticsConsent: (_) async {},
      updateLocationAccuracy: (_) async {},
      updateDataRetentionPeriod: (_) async {},
      exportData: () async {},
      deleteAllData: () async {},
      clearTripHistory: () async {
        emit(state.copyWith(isDeleting: true, error: null));
        
        try {
          final result = await _deleteUserData(DeleteUserDataParams(deleteAll: false));
          
          result.fold(
            (failure) => emit(state.copyWith(
              isDeleting: false,
              error: failure.message,
            )),
            (_) => emit(state.copyWith(
              isDeleting: false,
              successMessage: 'Trip history cleared successfully',
              totalTrips: 0,
            )),
          );
        } catch (e) {
          emit(state.copyWith(
            isDeleting: false,
            error: 'Failed to clear trip history: $e',
          ));
        }
      },
    );
  }

  Future<void> _updateSetting(
    Emitter<SettingsState> emit,
    PrivacySettings Function(PrivacySettings) updateFunction,
    VoidCallback onSuccess,
  ) async {
    emit(state.copyWith(isSaving: true, error: null));
    
    try {
      final currentSettings = PrivacySettings(
        locationConsent: state.locationConsent,
        backgroundLocationConsent: state.backgroundLocationConsent,
        dataSharingConsent: state.dataSharingConsent,
        analyticsConsent: state.analyticsConsent,
        locationAccuracy: LocationAccuracy.fromValue(state.locationAccuracy),
        dataRetentionPeriod: DataRetentionPeriod.fromValue(state.dataRetentionPeriod),
        totalTrips: state.totalTrips,
        totalDataPoints: state.totalDataPoints,
        dataSize: state.dataSize,
        lastBackup: state.lastBackup,
      );
      
      final updatedSettings = updateFunction(currentSettings);
      final result = await _updatePrivacySettings(updatedSettings);
      
      result.fold(
        (failure) => emit(state.copyWith(
          isSaving: false,
          error: failure.message,
        )),
        (_) {
          onSuccess();
          emit(state.copyWith(
            isSaving: false,
            successMessage: 'Settings updated successfully',
          ));
        },
      );
    } catch (e) {
      emit(state.copyWith(
        isSaving: false,
        error: 'Failed to update settings: $e',
      ));
    }
  }
}