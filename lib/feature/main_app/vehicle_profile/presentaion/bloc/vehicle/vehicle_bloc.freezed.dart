// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VehicleEvent {
  NoParams get noParams => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoParams noParams) vehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoParams noParams)? vehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoParams noParams)? vehicleEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VehicleEventCalled value) vehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleEventCalled value)? vehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleEventCalled value)? vehicleEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleEventCopyWith<VehicleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleEventCopyWith<$Res> {
  factory $VehicleEventCopyWith(
          VehicleEvent value, $Res Function(VehicleEvent) then) =
      _$VehicleEventCopyWithImpl<$Res, VehicleEvent>;
  @useResult
  $Res call({NoParams noParams});
}

/// @nodoc
class _$VehicleEventCopyWithImpl<$Res, $Val extends VehicleEvent>
    implements $VehicleEventCopyWith<$Res> {
  _$VehicleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noParams = null,
  }) {
    return _then(_value.copyWith(
      noParams: null == noParams
          ? _value.noParams
          : noParams // ignore: cast_nullable_to_non_nullable
              as NoParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleEventCalledImplCopyWith<$Res>
    implements $VehicleEventCopyWith<$Res> {
  factory _$$VehicleEventCalledImplCopyWith(_$VehicleEventCalledImpl value,
          $Res Function(_$VehicleEventCalledImpl) then) =
      __$$VehicleEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoParams noParams});
}

/// @nodoc
class __$$VehicleEventCalledImplCopyWithImpl<$Res>
    extends _$VehicleEventCopyWithImpl<$Res, _$VehicleEventCalledImpl>
    implements _$$VehicleEventCalledImplCopyWith<$Res> {
  __$$VehicleEventCalledImplCopyWithImpl(_$VehicleEventCalledImpl _value,
      $Res Function(_$VehicleEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noParams = null,
  }) {
    return _then(_$VehicleEventCalledImpl(
      noParams: null == noParams
          ? _value.noParams
          : noParams // ignore: cast_nullable_to_non_nullable
              as NoParams,
    ));
  }
}

/// @nodoc

class _$VehicleEventCalledImpl implements _VehicleEventCalled {
  const _$VehicleEventCalledImpl({required this.noParams});

  @override
  final NoParams noParams;

  @override
  String toString() {
    return 'VehicleEvent.vehicleEventCalled(noParams: $noParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleEventCalledImpl &&
            (identical(other.noParams, noParams) ||
                other.noParams == noParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleEventCalledImplCopyWith<_$VehicleEventCalledImpl> get copyWith =>
      __$$VehicleEventCalledImplCopyWithImpl<_$VehicleEventCalledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoParams noParams) vehicleEventCalled,
  }) {
    return vehicleEventCalled(noParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoParams noParams)? vehicleEventCalled,
  }) {
    return vehicleEventCalled?.call(noParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoParams noParams)? vehicleEventCalled,
    required TResult orElse(),
  }) {
    if (vehicleEventCalled != null) {
      return vehicleEventCalled(noParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VehicleEventCalled value) vehicleEventCalled,
  }) {
    return vehicleEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleEventCalled value)? vehicleEventCalled,
  }) {
    return vehicleEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleEventCalled value)? vehicleEventCalled,
    required TResult orElse(),
  }) {
    if (vehicleEventCalled != null) {
      return vehicleEventCalled(this);
    }
    return orElse();
  }
}

abstract class _VehicleEventCalled implements VehicleEvent {
  const factory _VehicleEventCalled({required final NoParams noParams}) =
      _$VehicleEventCalledImpl;

  @override
  NoParams get noParams;
  @override
  @JsonKey(ignore: true)
  _$$VehicleEventCalledImplCopyWith<_$VehicleEventCalledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VehicleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VehicleEntities vehicleEntities) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VehicleEntities vehicleEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleEntities vehicleEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VehicleStateInitial value) initial,
    required TResult Function(_VehicleStateLoadFailure value) loadFailure,
    required TResult Function(VehicleStateLoading value) loading,
    required TResult Function(_VehicleStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleStateInitial value)? initial,
    TResult? Function(_VehicleStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleStateLoading value)? loading,
    TResult? Function(_VehicleStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleStateInitial value)? initial,
    TResult Function(_VehicleStateLoadFailure value)? loadFailure,
    TResult Function(VehicleStateLoading value)? loading,
    TResult Function(_VehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleStateCopyWith<$Res> {
  factory $VehicleStateCopyWith(
          VehicleState value, $Res Function(VehicleState) then) =
      _$VehicleStateCopyWithImpl<$Res, VehicleState>;
}

/// @nodoc
class _$VehicleStateCopyWithImpl<$Res, $Val extends VehicleState>
    implements $VehicleStateCopyWith<$Res> {
  _$VehicleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VehicleStateInitialImplCopyWith<$Res> {
  factory _$$VehicleStateInitialImplCopyWith(_$VehicleStateInitialImpl value,
          $Res Function(_$VehicleStateInitialImpl) then) =
      __$$VehicleStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VehicleStateInitialImplCopyWithImpl<$Res>
    extends _$VehicleStateCopyWithImpl<$Res, _$VehicleStateInitialImpl>
    implements _$$VehicleStateInitialImplCopyWith<$Res> {
  __$$VehicleStateInitialImplCopyWithImpl(_$VehicleStateInitialImpl _value,
      $Res Function(_$VehicleStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VehicleStateInitialImpl implements _VehicleStateInitial {
  const _$VehicleStateInitialImpl();

  @override
  String toString() {
    return 'VehicleState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VehicleEntities vehicleEntities) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VehicleEntities vehicleEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleEntities vehicleEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VehicleStateInitial value) initial,
    required TResult Function(_VehicleStateLoadFailure value) loadFailure,
    required TResult Function(VehicleStateLoading value) loading,
    required TResult Function(_VehicleStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleStateInitial value)? initial,
    TResult? Function(_VehicleStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleStateLoading value)? loading,
    TResult? Function(_VehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleStateInitial value)? initial,
    TResult Function(_VehicleStateLoadFailure value)? loadFailure,
    TResult Function(VehicleStateLoading value)? loading,
    TResult Function(_VehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _VehicleStateInitial implements VehicleState {
  const factory _VehicleStateInitial() = _$VehicleStateInitialImpl;
}

/// @nodoc
abstract class _$$VehicleStateLoadFailureImplCopyWith<$Res> {
  factory _$$VehicleStateLoadFailureImplCopyWith(
          _$VehicleStateLoadFailureImpl value,
          $Res Function(_$VehicleStateLoadFailureImpl) then) =
      __$$VehicleStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$VehicleStateLoadFailureImplCopyWithImpl<$Res>
    extends _$VehicleStateCopyWithImpl<$Res, _$VehicleStateLoadFailureImpl>
    implements _$$VehicleStateLoadFailureImplCopyWith<$Res> {
  __$$VehicleStateLoadFailureImplCopyWithImpl(
      _$VehicleStateLoadFailureImpl _value,
      $Res Function(_$VehicleStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$VehicleStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$VehicleStateLoadFailureImpl implements _VehicleStateLoadFailure {
  const _$VehicleStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'VehicleState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleStateLoadFailureImplCopyWith<_$VehicleStateLoadFailureImpl>
      get copyWith => __$$VehicleStateLoadFailureImplCopyWithImpl<
          _$VehicleStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VehicleEntities vehicleEntities) loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VehicleEntities vehicleEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleEntities vehicleEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VehicleStateInitial value) initial,
    required TResult Function(_VehicleStateLoadFailure value) loadFailure,
    required TResult Function(VehicleStateLoading value) loading,
    required TResult Function(_VehicleStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleStateInitial value)? initial,
    TResult? Function(_VehicleStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleStateLoading value)? loading,
    TResult? Function(_VehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleStateInitial value)? initial,
    TResult Function(_VehicleStateLoadFailure value)? loadFailure,
    TResult Function(VehicleStateLoading value)? loading,
    TResult Function(_VehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _VehicleStateLoadFailure implements VehicleState {
  const factory _VehicleStateLoadFailure(final Failure failure) =
      _$VehicleStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$VehicleStateLoadFailureImplCopyWith<_$VehicleStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VehicleStateLoadingImplCopyWith<$Res> {
  factory _$$VehicleStateLoadingImplCopyWith(_$VehicleStateLoadingImpl value,
          $Res Function(_$VehicleStateLoadingImpl) then) =
      __$$VehicleStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VehicleStateLoadingImplCopyWithImpl<$Res>
    extends _$VehicleStateCopyWithImpl<$Res, _$VehicleStateLoadingImpl>
    implements _$$VehicleStateLoadingImplCopyWith<$Res> {
  __$$VehicleStateLoadingImplCopyWithImpl(_$VehicleStateLoadingImpl _value,
      $Res Function(_$VehicleStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VehicleStateLoadingImpl implements VehicleStateLoading {
  const _$VehicleStateLoadingImpl();

  @override
  String toString() {
    return 'VehicleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VehicleEntities vehicleEntities) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VehicleEntities vehicleEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleEntities vehicleEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VehicleStateInitial value) initial,
    required TResult Function(_VehicleStateLoadFailure value) loadFailure,
    required TResult Function(VehicleStateLoading value) loading,
    required TResult Function(_VehicleStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleStateInitial value)? initial,
    TResult? Function(_VehicleStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleStateLoading value)? loading,
    TResult? Function(_VehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleStateInitial value)? initial,
    TResult Function(_VehicleStateLoadFailure value)? loadFailure,
    TResult Function(VehicleStateLoading value)? loading,
    TResult Function(_VehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VehicleStateLoading implements VehicleState {
  const factory VehicleStateLoading() = _$VehicleStateLoadingImpl;
}

/// @nodoc
abstract class _$$VehicleStateLoadSuccessImplCopyWith<$Res> {
  factory _$$VehicleStateLoadSuccessImplCopyWith(
          _$VehicleStateLoadSuccessImpl value,
          $Res Function(_$VehicleStateLoadSuccessImpl) then) =
      __$$VehicleStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VehicleEntities vehicleEntities});
}

/// @nodoc
class __$$VehicleStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$VehicleStateCopyWithImpl<$Res, _$VehicleStateLoadSuccessImpl>
    implements _$$VehicleStateLoadSuccessImplCopyWith<$Res> {
  __$$VehicleStateLoadSuccessImplCopyWithImpl(
      _$VehicleStateLoadSuccessImpl _value,
      $Res Function(_$VehicleStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleEntities = null,
  }) {
    return _then(_$VehicleStateLoadSuccessImpl(
      null == vehicleEntities
          ? _value.vehicleEntities
          : vehicleEntities // ignore: cast_nullable_to_non_nullable
              as VehicleEntities,
    ));
  }
}

/// @nodoc

class _$VehicleStateLoadSuccessImpl implements _VehicleStateLoadSuccess {
  const _$VehicleStateLoadSuccessImpl(this.vehicleEntities);

  @override
  final VehicleEntities vehicleEntities;

  @override
  String toString() {
    return 'VehicleState.loadSuccess(vehicleEntities: $vehicleEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleStateLoadSuccessImpl &&
            (identical(other.vehicleEntities, vehicleEntities) ||
                other.vehicleEntities == vehicleEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicleEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleStateLoadSuccessImplCopyWith<_$VehicleStateLoadSuccessImpl>
      get copyWith => __$$VehicleStateLoadSuccessImplCopyWithImpl<
          _$VehicleStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VehicleEntities vehicleEntities) loadSuccess,
  }) {
    return loadSuccess(vehicleEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VehicleEntities vehicleEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(vehicleEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleEntities vehicleEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(vehicleEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VehicleStateInitial value) initial,
    required TResult Function(_VehicleStateLoadFailure value) loadFailure,
    required TResult Function(VehicleStateLoading value) loading,
    required TResult Function(_VehicleStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleStateInitial value)? initial,
    TResult? Function(_VehicleStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleStateLoading value)? loading,
    TResult? Function(_VehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleStateInitial value)? initial,
    TResult Function(_VehicleStateLoadFailure value)? loadFailure,
    TResult Function(VehicleStateLoading value)? loading,
    TResult Function(_VehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _VehicleStateLoadSuccess implements VehicleState {
  const factory _VehicleStateLoadSuccess(
      final VehicleEntities vehicleEntities) = _$VehicleStateLoadSuccessImpl;

  VehicleEntities get vehicleEntities;
  @JsonKey(ignore: true)
  _$$VehicleStateLoadSuccessImplCopyWith<_$VehicleStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
