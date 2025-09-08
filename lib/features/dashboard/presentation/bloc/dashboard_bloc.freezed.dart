// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function() loadDashboardData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChanged,
    TResult? Function()? loadDashboardData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function()? loadDashboardData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadDashboardData value) loadDashboardData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(LoadDashboardData value)? loadDashboardData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadDashboardData value)? loadDashboardData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
    DashboardEvent value,
    $Res Function(DashboardEvent) then,
  ) = _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TabChangedImplCopyWith<$Res> {
  factory _$$TabChangedImplCopyWith(
    _$TabChangedImpl value,
    $Res Function(_$TabChangedImpl) then,
  ) = __$$TabChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$TabChangedImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$TabChangedImpl>
    implements _$$TabChangedImplCopyWith<$Res> {
  __$$TabChangedImplCopyWithImpl(
    _$TabChangedImpl _value,
    $Res Function(_$TabChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tabIndex = null}) {
    return _then(
      _$TabChangedImpl(
        null == tabIndex
            ? _value.tabIndex
            : tabIndex // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$TabChangedImpl implements TabChanged {
  const _$TabChangedImpl(this.tabIndex);

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'DashboardEvent.tabChanged(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabChangedImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabChangedImplCopyWith<_$TabChangedImpl> get copyWith =>
      __$$TabChangedImplCopyWithImpl<_$TabChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function() loadDashboardData,
  }) {
    return tabChanged(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChanged,
    TResult? Function()? loadDashboardData,
  }) {
    return tabChanged?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function()? loadDashboardData,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadDashboardData value) loadDashboardData,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(LoadDashboardData value)? loadDashboardData,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadDashboardData value)? loadDashboardData,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class TabChanged implements DashboardEvent {
  const factory TabChanged(final int tabIndex) = _$TabChangedImpl;

  int get tabIndex;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabChangedImplCopyWith<_$TabChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadDashboardDataImplCopyWith<$Res> {
  factory _$$LoadDashboardDataImplCopyWith(
    _$LoadDashboardDataImpl value,
    $Res Function(_$LoadDashboardDataImpl) then,
  ) = __$$LoadDashboardDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDashboardDataImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$LoadDashboardDataImpl>
    implements _$$LoadDashboardDataImplCopyWith<$Res> {
  __$$LoadDashboardDataImplCopyWithImpl(
    _$LoadDashboardDataImpl _value,
    $Res Function(_$LoadDashboardDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadDashboardDataImpl implements LoadDashboardData {
  const _$LoadDashboardDataImpl();

  @override
  String toString() {
    return 'DashboardEvent.loadDashboardData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDashboardDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function() loadDashboardData,
  }) {
    return loadDashboardData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tabIndex)? tabChanged,
    TResult? Function()? loadDashboardData,
  }) {
    return loadDashboardData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tabIndex)? tabChanged,
    TResult Function()? loadDashboardData,
    required TResult orElse(),
  }) {
    if (loadDashboardData != null) {
      return loadDashboardData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadDashboardData value) loadDashboardData,
  }) {
    return loadDashboardData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(LoadDashboardData value)? loadDashboardData,
  }) {
    return loadDashboardData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadDashboardData value)? loadDashboardData,
    required TResult orElse(),
  }) {
    if (loadDashboardData != null) {
      return loadDashboardData(this);
    }
    return orElse();
  }
}

abstract class LoadDashboardData implements DashboardEvent {
  const factory LoadDashboardData() = _$LoadDashboardDataImpl;
}

/// @nodoc
mixin _$DashboardState {
  int get selectedTabIndex => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  DashboardData? get dashboardData => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
    DashboardState value,
    $Res Function(DashboardState) then,
  ) = _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call({
    int selectedTabIndex,
    bool isLoading,
    DashboardData? dashboardData,
    String? error,
  });

  $DashboardDataCopyWith<$Res>? get dashboardData;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
    Object? isLoading = null,
    Object? dashboardData = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            selectedTabIndex:
                null == selectedTabIndex
                    ? _value.selectedTabIndex
                    : selectedTabIndex // ignore: cast_nullable_to_non_nullable
                        as int,
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            dashboardData:
                freezed == dashboardData
                    ? _value.dashboardData
                    : dashboardData // ignore: cast_nullable_to_non_nullable
                        as DashboardData?,
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardDataCopyWith<$Res>? get dashboardData {
    if (_value.dashboardData == null) {
      return null;
    }

    return $DashboardDataCopyWith<$Res>(_value.dashboardData!, (value) {
      return _then(_value.copyWith(dashboardData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardStateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$DashboardStateImplCopyWith(
    _$DashboardStateImpl value,
    $Res Function(_$DashboardStateImpl) then,
  ) = __$$DashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int selectedTabIndex,
    bool isLoading,
    DashboardData? dashboardData,
    String? error,
  });

  @override
  $DashboardDataCopyWith<$Res>? get dashboardData;
}

/// @nodoc
class __$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateImpl>
    implements _$$DashboardStateImplCopyWith<$Res> {
  __$$DashboardStateImplCopyWithImpl(
    _$DashboardStateImpl _value,
    $Res Function(_$DashboardStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
    Object? isLoading = null,
    Object? dashboardData = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$DashboardStateImpl(
        selectedTabIndex:
            null == selectedTabIndex
                ? _value.selectedTabIndex
                : selectedTabIndex // ignore: cast_nullable_to_non_nullable
                    as int,
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        dashboardData:
            freezed == dashboardData
                ? _value.dashboardData
                : dashboardData // ignore: cast_nullable_to_non_nullable
                    as DashboardData?,
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$DashboardStateImpl implements _DashboardState {
  const _$DashboardStateImpl({
    this.selectedTabIndex = 0,
    this.isLoading = false,
    this.dashboardData,
    this.error,
  });

  @override
  @JsonKey()
  final int selectedTabIndex;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final DashboardData? dashboardData;
  @override
  final String? error;

  @override
  String toString() {
    return 'DashboardState(selectedTabIndex: $selectedTabIndex, isLoading: $isLoading, dashboardData: $dashboardData, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateImpl &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.dashboardData, dashboardData) ||
                other.dashboardData == dashboardData) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    selectedTabIndex,
    isLoading,
    dashboardData,
    error,
  );

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      __$$DashboardStateImplCopyWithImpl<_$DashboardStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState({
    final int selectedTabIndex,
    final bool isLoading,
    final DashboardData? dashboardData,
    final String? error,
  }) = _$DashboardStateImpl;

  @override
  int get selectedTabIndex;
  @override
  bool get isLoading;
  @override
  DashboardData? get dashboardData;
  @override
  String? get error;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
