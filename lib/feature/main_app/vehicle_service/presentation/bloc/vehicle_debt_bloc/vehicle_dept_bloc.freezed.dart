// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_dept_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VehicleDeptEvent {
  VehicleDeptParam get vehicleDeptParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VehicleDeptParam vehicleDeptParam)
        vehicleDeptEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VehicleDeptParam vehicleDeptParam)?
        vehicleDeptEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VehicleDeptParam vehicleDeptParam)? vehicleDeptEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditVehicleEventCalled value)
        vehicleDeptEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditVehicleEventCalled value)? vehicleDeptEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditVehicleEventCalled value)? vehicleDeptEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleDeptEventCopyWith<VehicleDeptEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleDeptEventCopyWith<$Res> {
  factory $VehicleDeptEventCopyWith(
          VehicleDeptEvent value, $Res Function(VehicleDeptEvent) then) =
      _$VehicleDeptEventCopyWithImpl<$Res, VehicleDeptEvent>;
  @useResult
  $Res call({VehicleDeptParam vehicleDeptParam});
}

/// @nodoc
class _$VehicleDeptEventCopyWithImpl<$Res, $Val extends VehicleDeptEvent>
    implements $VehicleDeptEventCopyWith<$Res> {
  _$VehicleDeptEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleDeptParam = null,
  }) {
    return _then(_value.copyWith(
      vehicleDeptParam: null == vehicleDeptParam
          ? _value.vehicleDeptParam
          : vehicleDeptParam // ignore: cast_nullable_to_non_nullable
              as VehicleDeptParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditVehicleEventCalledImplCopyWith<$Res>
    implements $VehicleDeptEventCopyWith<$Res> {
  factory _$$EditVehicleEventCalledImplCopyWith(
          _$EditVehicleEventCalledImpl value,
          $Res Function(_$EditVehicleEventCalledImpl) then) =
      __$$EditVehicleEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VehicleDeptParam vehicleDeptParam});
}

/// @nodoc
class __$$EditVehicleEventCalledImplCopyWithImpl<$Res>
    extends _$VehicleDeptEventCopyWithImpl<$Res, _$EditVehicleEventCalledImpl>
    implements _$$EditVehicleEventCalledImplCopyWith<$Res> {
  __$$EditVehicleEventCalledImplCopyWithImpl(
      _$EditVehicleEventCalledImpl _value,
      $Res Function(_$EditVehicleEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleDeptParam = null,
  }) {
    return _then(_$EditVehicleEventCalledImpl(
      vehicleDeptParam: null == vehicleDeptParam
          ? _value.vehicleDeptParam
          : vehicleDeptParam // ignore: cast_nullable_to_non_nullable
              as VehicleDeptParam,
    ));
  }
}

/// @nodoc

class _$EditVehicleEventCalledImpl implements _EditVehicleEventCalled {
  const _$EditVehicleEventCalledImpl({required this.vehicleDeptParam});

  @override
  final VehicleDeptParam vehicleDeptParam;

  @override
  String toString() {
    return 'VehicleDeptEvent.vehicleDeptEventCalled(vehicleDeptParam: $vehicleDeptParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditVehicleEventCalledImpl &&
            (identical(other.vehicleDeptParam, vehicleDeptParam) ||
                other.vehicleDeptParam == vehicleDeptParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicleDeptParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditVehicleEventCalledImplCopyWith<_$EditVehicleEventCalledImpl>
      get copyWith => __$$EditVehicleEventCalledImplCopyWithImpl<
          _$EditVehicleEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VehicleDeptParam vehicleDeptParam)
        vehicleDeptEventCalled,
  }) {
    return vehicleDeptEventCalled(vehicleDeptParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VehicleDeptParam vehicleDeptParam)?
        vehicleDeptEventCalled,
  }) {
    return vehicleDeptEventCalled?.call(vehicleDeptParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VehicleDeptParam vehicleDeptParam)? vehicleDeptEventCalled,
    required TResult orElse(),
  }) {
    if (vehicleDeptEventCalled != null) {
      return vehicleDeptEventCalled(vehicleDeptParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditVehicleEventCalled value)
        vehicleDeptEventCalled,
  }) {
    return vehicleDeptEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditVehicleEventCalled value)? vehicleDeptEventCalled,
  }) {
    return vehicleDeptEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditVehicleEventCalled value)? vehicleDeptEventCalled,
    required TResult orElse(),
  }) {
    if (vehicleDeptEventCalled != null) {
      return vehicleDeptEventCalled(this);
    }
    return orElse();
  }
}

abstract class _EditVehicleEventCalled implements VehicleDeptEvent {
  const factory _EditVehicleEventCalled(
          {required final VehicleDeptParam vehicleDeptParam}) =
      _$EditVehicleEventCalledImpl;

  @override
  VehicleDeptParam get vehicleDeptParam;
  @override
  @JsonKey(ignore: true)
  _$$EditVehicleEventCalledImplCopyWith<_$EditVehicleEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VehicleDeptState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VehicleDeptEntities vehicleDeptEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VehicleDeptEntities vehicleDeptEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleDeptEntities vehicleDeptEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VehicleDeptStateInitial value) initial,
    required TResult Function(_VehicleDeptStateLoadFailure value) loadFailure,
    required TResult Function(VehicleDeptStateLoading value) loading,
    required TResult Function(_VehicleDeptStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleDeptStateInitial value)? initial,
    TResult? Function(_VehicleDeptStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleDeptStateLoading value)? loading,
    TResult? Function(_VehicleDeptStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleDeptStateInitial value)? initial,
    TResult Function(_VehicleDeptStateLoadFailure value)? loadFailure,
    TResult Function(VehicleDeptStateLoading value)? loading,
    TResult Function(_VehicleDeptStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleDeptStateCopyWith<$Res> {
  factory $VehicleDeptStateCopyWith(
          VehicleDeptState value, $Res Function(VehicleDeptState) then) =
      _$VehicleDeptStateCopyWithImpl<$Res, VehicleDeptState>;
}

/// @nodoc
class _$VehicleDeptStateCopyWithImpl<$Res, $Val extends VehicleDeptState>
    implements $VehicleDeptStateCopyWith<$Res> {
  _$VehicleDeptStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VehicleDeptStateInitialImplCopyWith<$Res> {
  factory _$$VehicleDeptStateInitialImplCopyWith(
          _$VehicleDeptStateInitialImpl value,
          $Res Function(_$VehicleDeptStateInitialImpl) then) =
      __$$VehicleDeptStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VehicleDeptStateInitialImplCopyWithImpl<$Res>
    extends _$VehicleDeptStateCopyWithImpl<$Res, _$VehicleDeptStateInitialImpl>
    implements _$$VehicleDeptStateInitialImplCopyWith<$Res> {
  __$$VehicleDeptStateInitialImplCopyWithImpl(
      _$VehicleDeptStateInitialImpl _value,
      $Res Function(_$VehicleDeptStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VehicleDeptStateInitialImpl implements _VehicleDeptStateInitial {
  const _$VehicleDeptStateInitialImpl();

  @override
  String toString() {
    return 'VehicleDeptState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleDeptStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VehicleDeptEntities vehicleDeptEntities)
        loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VehicleDeptEntities vehicleDeptEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleDeptEntities vehicleDeptEntities)? loadSuccess,
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
    required TResult Function(_VehicleDeptStateInitial value) initial,
    required TResult Function(_VehicleDeptStateLoadFailure value) loadFailure,
    required TResult Function(VehicleDeptStateLoading value) loading,
    required TResult Function(_VehicleDeptStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleDeptStateInitial value)? initial,
    TResult? Function(_VehicleDeptStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleDeptStateLoading value)? loading,
    TResult? Function(_VehicleDeptStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleDeptStateInitial value)? initial,
    TResult Function(_VehicleDeptStateLoadFailure value)? loadFailure,
    TResult Function(VehicleDeptStateLoading value)? loading,
    TResult Function(_VehicleDeptStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _VehicleDeptStateInitial implements VehicleDeptState {
  const factory _VehicleDeptStateInitial() = _$VehicleDeptStateInitialImpl;
}

/// @nodoc
abstract class _$$VehicleDeptStateLoadFailureImplCopyWith<$Res> {
  factory _$$VehicleDeptStateLoadFailureImplCopyWith(
          _$VehicleDeptStateLoadFailureImpl value,
          $Res Function(_$VehicleDeptStateLoadFailureImpl) then) =
      __$$VehicleDeptStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$VehicleDeptStateLoadFailureImplCopyWithImpl<$Res>
    extends _$VehicleDeptStateCopyWithImpl<$Res,
        _$VehicleDeptStateLoadFailureImpl>
    implements _$$VehicleDeptStateLoadFailureImplCopyWith<$Res> {
  __$$VehicleDeptStateLoadFailureImplCopyWithImpl(
      _$VehicleDeptStateLoadFailureImpl _value,
      $Res Function(_$VehicleDeptStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$VehicleDeptStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$VehicleDeptStateLoadFailureImpl
    implements _VehicleDeptStateLoadFailure {
  const _$VehicleDeptStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'VehicleDeptState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleDeptStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleDeptStateLoadFailureImplCopyWith<_$VehicleDeptStateLoadFailureImpl>
      get copyWith => __$$VehicleDeptStateLoadFailureImplCopyWithImpl<
          _$VehicleDeptStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VehicleDeptEntities vehicleDeptEntities)
        loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VehicleDeptEntities vehicleDeptEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleDeptEntities vehicleDeptEntities)? loadSuccess,
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
    required TResult Function(_VehicleDeptStateInitial value) initial,
    required TResult Function(_VehicleDeptStateLoadFailure value) loadFailure,
    required TResult Function(VehicleDeptStateLoading value) loading,
    required TResult Function(_VehicleDeptStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleDeptStateInitial value)? initial,
    TResult? Function(_VehicleDeptStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleDeptStateLoading value)? loading,
    TResult? Function(_VehicleDeptStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleDeptStateInitial value)? initial,
    TResult Function(_VehicleDeptStateLoadFailure value)? loadFailure,
    TResult Function(VehicleDeptStateLoading value)? loading,
    TResult Function(_VehicleDeptStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _VehicleDeptStateLoadFailure implements VehicleDeptState {
  const factory _VehicleDeptStateLoadFailure(final Failure failure) =
      _$VehicleDeptStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$VehicleDeptStateLoadFailureImplCopyWith<_$VehicleDeptStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VehicleDeptStateLoadingImplCopyWith<$Res> {
  factory _$$VehicleDeptStateLoadingImplCopyWith(
          _$VehicleDeptStateLoadingImpl value,
          $Res Function(_$VehicleDeptStateLoadingImpl) then) =
      __$$VehicleDeptStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VehicleDeptStateLoadingImplCopyWithImpl<$Res>
    extends _$VehicleDeptStateCopyWithImpl<$Res, _$VehicleDeptStateLoadingImpl>
    implements _$$VehicleDeptStateLoadingImplCopyWith<$Res> {
  __$$VehicleDeptStateLoadingImplCopyWithImpl(
      _$VehicleDeptStateLoadingImpl _value,
      $Res Function(_$VehicleDeptStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VehicleDeptStateLoadingImpl implements VehicleDeptStateLoading {
  const _$VehicleDeptStateLoadingImpl();

  @override
  String toString() {
    return 'VehicleDeptState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleDeptStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VehicleDeptEntities vehicleDeptEntities)
        loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VehicleDeptEntities vehicleDeptEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleDeptEntities vehicleDeptEntities)? loadSuccess,
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
    required TResult Function(_VehicleDeptStateInitial value) initial,
    required TResult Function(_VehicleDeptStateLoadFailure value) loadFailure,
    required TResult Function(VehicleDeptStateLoading value) loading,
    required TResult Function(_VehicleDeptStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleDeptStateInitial value)? initial,
    TResult? Function(_VehicleDeptStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleDeptStateLoading value)? loading,
    TResult? Function(_VehicleDeptStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleDeptStateInitial value)? initial,
    TResult Function(_VehicleDeptStateLoadFailure value)? loadFailure,
    TResult Function(VehicleDeptStateLoading value)? loading,
    TResult Function(_VehicleDeptStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VehicleDeptStateLoading implements VehicleDeptState {
  const factory VehicleDeptStateLoading() = _$VehicleDeptStateLoadingImpl;
}

/// @nodoc
abstract class _$$VehicleDeptStateLoadSuccessImplCopyWith<$Res> {
  factory _$$VehicleDeptStateLoadSuccessImplCopyWith(
          _$VehicleDeptStateLoadSuccessImpl value,
          $Res Function(_$VehicleDeptStateLoadSuccessImpl) then) =
      __$$VehicleDeptStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VehicleDeptEntities vehicleDeptEntities});
}

/// @nodoc
class __$$VehicleDeptStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$VehicleDeptStateCopyWithImpl<$Res,
        _$VehicleDeptStateLoadSuccessImpl>
    implements _$$VehicleDeptStateLoadSuccessImplCopyWith<$Res> {
  __$$VehicleDeptStateLoadSuccessImplCopyWithImpl(
      _$VehicleDeptStateLoadSuccessImpl _value,
      $Res Function(_$VehicleDeptStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleDeptEntities = null,
  }) {
    return _then(_$VehicleDeptStateLoadSuccessImpl(
      null == vehicleDeptEntities
          ? _value.vehicleDeptEntities
          : vehicleDeptEntities // ignore: cast_nullable_to_non_nullable
              as VehicleDeptEntities,
    ));
  }
}

/// @nodoc

class _$VehicleDeptStateLoadSuccessImpl
    implements _VehicleDeptStateLoadSuccess {
  const _$VehicleDeptStateLoadSuccessImpl(this.vehicleDeptEntities);

  @override
  final VehicleDeptEntities vehicleDeptEntities;

  @override
  String toString() {
    return 'VehicleDeptState.loadSuccess(vehicleDeptEntities: $vehicleDeptEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleDeptStateLoadSuccessImpl &&
            (identical(other.vehicleDeptEntities, vehicleDeptEntities) ||
                other.vehicleDeptEntities == vehicleDeptEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicleDeptEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleDeptStateLoadSuccessImplCopyWith<_$VehicleDeptStateLoadSuccessImpl>
      get copyWith => __$$VehicleDeptStateLoadSuccessImplCopyWithImpl<
          _$VehicleDeptStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VehicleDeptEntities vehicleDeptEntities)
        loadSuccess,
  }) {
    return loadSuccess(vehicleDeptEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VehicleDeptEntities vehicleDeptEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(vehicleDeptEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleDeptEntities vehicleDeptEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(vehicleDeptEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VehicleDeptStateInitial value) initial,
    required TResult Function(_VehicleDeptStateLoadFailure value) loadFailure,
    required TResult Function(VehicleDeptStateLoading value) loading,
    required TResult Function(_VehicleDeptStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleDeptStateInitial value)? initial,
    TResult? Function(_VehicleDeptStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleDeptStateLoading value)? loading,
    TResult? Function(_VehicleDeptStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleDeptStateInitial value)? initial,
    TResult Function(_VehicleDeptStateLoadFailure value)? loadFailure,
    TResult Function(VehicleDeptStateLoading value)? loading,
    TResult Function(_VehicleDeptStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _VehicleDeptStateLoadSuccess implements VehicleDeptState {
  const factory _VehicleDeptStateLoadSuccess(
          final VehicleDeptEntities vehicleDeptEntities) =
      _$VehicleDeptStateLoadSuccessImpl;

  VehicleDeptEntities get vehicleDeptEntities;
  @JsonKey(ignore: true)
  _$$VehicleDeptStateLoadSuccessImplCopyWith<_$VehicleDeptStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
