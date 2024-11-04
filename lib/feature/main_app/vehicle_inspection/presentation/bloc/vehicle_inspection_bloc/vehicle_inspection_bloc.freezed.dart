// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_inspection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VehicleInspectionEvent {
  VehicleInspectionParam get vehicleInspectionParam =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VehicleInspectionParam vehicleInspectionParam)
        vehicleInspectionEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VehicleInspectionParam vehicleInspectionParam)?
        vehicleInspectionEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VehicleInspectionParam vehicleInspectionParam)?
        vehicleInspectionEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VehicleInspectionEventCalled value)
        vehicleInspectionEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleInspectionEventCalled value)?
        vehicleInspectionEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleInspectionEventCalled value)?
        vehicleInspectionEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleInspectionEventCopyWith<VehicleInspectionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleInspectionEventCopyWith<$Res> {
  factory $VehicleInspectionEventCopyWith(VehicleInspectionEvent value,
          $Res Function(VehicleInspectionEvent) then) =
      _$VehicleInspectionEventCopyWithImpl<$Res, VehicleInspectionEvent>;
  @useResult
  $Res call({VehicleInspectionParam vehicleInspectionParam});
}

/// @nodoc
class _$VehicleInspectionEventCopyWithImpl<$Res,
        $Val extends VehicleInspectionEvent>
    implements $VehicleInspectionEventCopyWith<$Res> {
  _$VehicleInspectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleInspectionParam = null,
  }) {
    return _then(_value.copyWith(
      vehicleInspectionParam: null == vehicleInspectionParam
          ? _value.vehicleInspectionParam
          : vehicleInspectionParam // ignore: cast_nullable_to_non_nullable
              as VehicleInspectionParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleInspectionEventCalledImplCopyWith<$Res>
    implements $VehicleInspectionEventCopyWith<$Res> {
  factory _$$VehicleInspectionEventCalledImplCopyWith(
          _$VehicleInspectionEventCalledImpl value,
          $Res Function(_$VehicleInspectionEventCalledImpl) then) =
      __$$VehicleInspectionEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VehicleInspectionParam vehicleInspectionParam});
}

/// @nodoc
class __$$VehicleInspectionEventCalledImplCopyWithImpl<$Res>
    extends _$VehicleInspectionEventCopyWithImpl<$Res,
        _$VehicleInspectionEventCalledImpl>
    implements _$$VehicleInspectionEventCalledImplCopyWith<$Res> {
  __$$VehicleInspectionEventCalledImplCopyWithImpl(
      _$VehicleInspectionEventCalledImpl _value,
      $Res Function(_$VehicleInspectionEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleInspectionParam = null,
  }) {
    return _then(_$VehicleInspectionEventCalledImpl(
      vehicleInspectionParam: null == vehicleInspectionParam
          ? _value.vehicleInspectionParam
          : vehicleInspectionParam // ignore: cast_nullable_to_non_nullable
              as VehicleInspectionParam,
    ));
  }
}

/// @nodoc

class _$VehicleInspectionEventCalledImpl
    implements _VehicleInspectionEventCalled {
  const _$VehicleInspectionEventCalledImpl(
      {required this.vehicleInspectionParam});

  @override
  final VehicleInspectionParam vehicleInspectionParam;

  @override
  String toString() {
    return 'VehicleInspectionEvent.vehicleInspectionEventCalled(vehicleInspectionParam: $vehicleInspectionParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleInspectionEventCalledImpl &&
            (identical(other.vehicleInspectionParam, vehicleInspectionParam) ||
                other.vehicleInspectionParam == vehicleInspectionParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicleInspectionParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleInspectionEventCalledImplCopyWith<
          _$VehicleInspectionEventCalledImpl>
      get copyWith => __$$VehicleInspectionEventCalledImplCopyWithImpl<
          _$VehicleInspectionEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VehicleInspectionParam vehicleInspectionParam)
        vehicleInspectionEventCalled,
  }) {
    return vehicleInspectionEventCalled(vehicleInspectionParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VehicleInspectionParam vehicleInspectionParam)?
        vehicleInspectionEventCalled,
  }) {
    return vehicleInspectionEventCalled?.call(vehicleInspectionParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VehicleInspectionParam vehicleInspectionParam)?
        vehicleInspectionEventCalled,
    required TResult orElse(),
  }) {
    if (vehicleInspectionEventCalled != null) {
      return vehicleInspectionEventCalled(vehicleInspectionParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VehicleInspectionEventCalled value)
        vehicleInspectionEventCalled,
  }) {
    return vehicleInspectionEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleInspectionEventCalled value)?
        vehicleInspectionEventCalled,
  }) {
    return vehicleInspectionEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleInspectionEventCalled value)?
        vehicleInspectionEventCalled,
    required TResult orElse(),
  }) {
    if (vehicleInspectionEventCalled != null) {
      return vehicleInspectionEventCalled(this);
    }
    return orElse();
  }
}

abstract class _VehicleInspectionEventCalled implements VehicleInspectionEvent {
  const factory _VehicleInspectionEventCalled(
          {required final VehicleInspectionParam vehicleInspectionParam}) =
      _$VehicleInspectionEventCalledImpl;

  @override
  VehicleInspectionParam get vehicleInspectionParam;
  @override
  @JsonKey(ignore: true)
  _$$VehicleInspectionEventCalledImplCopyWith<
          _$VehicleInspectionEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VehicleInspectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            VehicleInspectionEntities vehicleInspectionEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VehicleInspectionEntities vehicleInspectionEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleInspectionEntities vehicleInspectionEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VehicleInspectionStateInitial value) initial,
    required TResult Function(_VehicleInspectionStateLoadFailure value)
        loadFailure,
    required TResult Function(VehicleInspectionStateLoading value) loading,
    required TResult Function(_VehicleInspectionStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleInspectionStateInitial value)? initial,
    TResult? Function(_VehicleInspectionStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleInspectionStateLoading value)? loading,
    TResult? Function(_VehicleInspectionStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleInspectionStateInitial value)? initial,
    TResult Function(_VehicleInspectionStateLoadFailure value)? loadFailure,
    TResult Function(VehicleInspectionStateLoading value)? loading,
    TResult Function(_VehicleInspectionStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleInspectionStateCopyWith<$Res> {
  factory $VehicleInspectionStateCopyWith(VehicleInspectionState value,
          $Res Function(VehicleInspectionState) then) =
      _$VehicleInspectionStateCopyWithImpl<$Res, VehicleInspectionState>;
}

/// @nodoc
class _$VehicleInspectionStateCopyWithImpl<$Res,
        $Val extends VehicleInspectionState>
    implements $VehicleInspectionStateCopyWith<$Res> {
  _$VehicleInspectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VehicleInspectionStateInitialImplCopyWith<$Res> {
  factory _$$VehicleInspectionStateInitialImplCopyWith(
          _$VehicleInspectionStateInitialImpl value,
          $Res Function(_$VehicleInspectionStateInitialImpl) then) =
      __$$VehicleInspectionStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VehicleInspectionStateInitialImplCopyWithImpl<$Res>
    extends _$VehicleInspectionStateCopyWithImpl<$Res,
        _$VehicleInspectionStateInitialImpl>
    implements _$$VehicleInspectionStateInitialImplCopyWith<$Res> {
  __$$VehicleInspectionStateInitialImplCopyWithImpl(
      _$VehicleInspectionStateInitialImpl _value,
      $Res Function(_$VehicleInspectionStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VehicleInspectionStateInitialImpl
    implements _VehicleInspectionStateInitial {
  const _$VehicleInspectionStateInitialImpl();

  @override
  String toString() {
    return 'VehicleInspectionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleInspectionStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            VehicleInspectionEntities vehicleInspectionEntities)
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
    TResult? Function(VehicleInspectionEntities vehicleInspectionEntities)?
        loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleInspectionEntities vehicleInspectionEntities)?
        loadSuccess,
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
    required TResult Function(_VehicleInspectionStateInitial value) initial,
    required TResult Function(_VehicleInspectionStateLoadFailure value)
        loadFailure,
    required TResult Function(VehicleInspectionStateLoading value) loading,
    required TResult Function(_VehicleInspectionStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleInspectionStateInitial value)? initial,
    TResult? Function(_VehicleInspectionStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleInspectionStateLoading value)? loading,
    TResult? Function(_VehicleInspectionStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleInspectionStateInitial value)? initial,
    TResult Function(_VehicleInspectionStateLoadFailure value)? loadFailure,
    TResult Function(VehicleInspectionStateLoading value)? loading,
    TResult Function(_VehicleInspectionStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _VehicleInspectionStateInitial
    implements VehicleInspectionState {
  const factory _VehicleInspectionStateInitial() =
      _$VehicleInspectionStateInitialImpl;
}

/// @nodoc
abstract class _$$VehicleInspectionStateLoadFailureImplCopyWith<$Res> {
  factory _$$VehicleInspectionStateLoadFailureImplCopyWith(
          _$VehicleInspectionStateLoadFailureImpl value,
          $Res Function(_$VehicleInspectionStateLoadFailureImpl) then) =
      __$$VehicleInspectionStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$VehicleInspectionStateLoadFailureImplCopyWithImpl<$Res>
    extends _$VehicleInspectionStateCopyWithImpl<$Res,
        _$VehicleInspectionStateLoadFailureImpl>
    implements _$$VehicleInspectionStateLoadFailureImplCopyWith<$Res> {
  __$$VehicleInspectionStateLoadFailureImplCopyWithImpl(
      _$VehicleInspectionStateLoadFailureImpl _value,
      $Res Function(_$VehicleInspectionStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$VehicleInspectionStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$VehicleInspectionStateLoadFailureImpl
    implements _VehicleInspectionStateLoadFailure {
  const _$VehicleInspectionStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'VehicleInspectionState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleInspectionStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleInspectionStateLoadFailureImplCopyWith<
          _$VehicleInspectionStateLoadFailureImpl>
      get copyWith => __$$VehicleInspectionStateLoadFailureImplCopyWithImpl<
          _$VehicleInspectionStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            VehicleInspectionEntities vehicleInspectionEntities)
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
    TResult? Function(VehicleInspectionEntities vehicleInspectionEntities)?
        loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleInspectionEntities vehicleInspectionEntities)?
        loadSuccess,
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
    required TResult Function(_VehicleInspectionStateInitial value) initial,
    required TResult Function(_VehicleInspectionStateLoadFailure value)
        loadFailure,
    required TResult Function(VehicleInspectionStateLoading value) loading,
    required TResult Function(_VehicleInspectionStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleInspectionStateInitial value)? initial,
    TResult? Function(_VehicleInspectionStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleInspectionStateLoading value)? loading,
    TResult? Function(_VehicleInspectionStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleInspectionStateInitial value)? initial,
    TResult Function(_VehicleInspectionStateLoadFailure value)? loadFailure,
    TResult Function(VehicleInspectionStateLoading value)? loading,
    TResult Function(_VehicleInspectionStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _VehicleInspectionStateLoadFailure
    implements VehicleInspectionState {
  const factory _VehicleInspectionStateLoadFailure(final Failure failure) =
      _$VehicleInspectionStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$VehicleInspectionStateLoadFailureImplCopyWith<
          _$VehicleInspectionStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VehicleInspectionStateLoadingImplCopyWith<$Res> {
  factory _$$VehicleInspectionStateLoadingImplCopyWith(
          _$VehicleInspectionStateLoadingImpl value,
          $Res Function(_$VehicleInspectionStateLoadingImpl) then) =
      __$$VehicleInspectionStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VehicleInspectionStateLoadingImplCopyWithImpl<$Res>
    extends _$VehicleInspectionStateCopyWithImpl<$Res,
        _$VehicleInspectionStateLoadingImpl>
    implements _$$VehicleInspectionStateLoadingImplCopyWith<$Res> {
  __$$VehicleInspectionStateLoadingImplCopyWithImpl(
      _$VehicleInspectionStateLoadingImpl _value,
      $Res Function(_$VehicleInspectionStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VehicleInspectionStateLoadingImpl
    implements VehicleInspectionStateLoading {
  const _$VehicleInspectionStateLoadingImpl();

  @override
  String toString() {
    return 'VehicleInspectionState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleInspectionStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            VehicleInspectionEntities vehicleInspectionEntities)
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
    TResult? Function(VehicleInspectionEntities vehicleInspectionEntities)?
        loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleInspectionEntities vehicleInspectionEntities)?
        loadSuccess,
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
    required TResult Function(_VehicleInspectionStateInitial value) initial,
    required TResult Function(_VehicleInspectionStateLoadFailure value)
        loadFailure,
    required TResult Function(VehicleInspectionStateLoading value) loading,
    required TResult Function(_VehicleInspectionStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleInspectionStateInitial value)? initial,
    TResult? Function(_VehicleInspectionStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleInspectionStateLoading value)? loading,
    TResult? Function(_VehicleInspectionStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleInspectionStateInitial value)? initial,
    TResult Function(_VehicleInspectionStateLoadFailure value)? loadFailure,
    TResult Function(VehicleInspectionStateLoading value)? loading,
    TResult Function(_VehicleInspectionStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VehicleInspectionStateLoading implements VehicleInspectionState {
  const factory VehicleInspectionStateLoading() =
      _$VehicleInspectionStateLoadingImpl;
}

/// @nodoc
abstract class _$$VehicleInspectionStateLoadSuccessImplCopyWith<$Res> {
  factory _$$VehicleInspectionStateLoadSuccessImplCopyWith(
          _$VehicleInspectionStateLoadSuccessImpl value,
          $Res Function(_$VehicleInspectionStateLoadSuccessImpl) then) =
      __$$VehicleInspectionStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VehicleInspectionEntities vehicleInspectionEntities});
}

/// @nodoc
class __$$VehicleInspectionStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$VehicleInspectionStateCopyWithImpl<$Res,
        _$VehicleInspectionStateLoadSuccessImpl>
    implements _$$VehicleInspectionStateLoadSuccessImplCopyWith<$Res> {
  __$$VehicleInspectionStateLoadSuccessImplCopyWithImpl(
      _$VehicleInspectionStateLoadSuccessImpl _value,
      $Res Function(_$VehicleInspectionStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleInspectionEntities = null,
  }) {
    return _then(_$VehicleInspectionStateLoadSuccessImpl(
      null == vehicleInspectionEntities
          ? _value.vehicleInspectionEntities
          : vehicleInspectionEntities // ignore: cast_nullable_to_non_nullable
              as VehicleInspectionEntities,
    ));
  }
}

/// @nodoc

class _$VehicleInspectionStateLoadSuccessImpl
    implements _VehicleInspectionStateLoadSuccess {
  const _$VehicleInspectionStateLoadSuccessImpl(this.vehicleInspectionEntities);

  @override
  final VehicleInspectionEntities vehicleInspectionEntities;

  @override
  String toString() {
    return 'VehicleInspectionState.loadSuccess(vehicleInspectionEntities: $vehicleInspectionEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleInspectionStateLoadSuccessImpl &&
            (identical(other.vehicleInspectionEntities,
                    vehicleInspectionEntities) ||
                other.vehicleInspectionEntities == vehicleInspectionEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicleInspectionEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleInspectionStateLoadSuccessImplCopyWith<
          _$VehicleInspectionStateLoadSuccessImpl>
      get copyWith => __$$VehicleInspectionStateLoadSuccessImplCopyWithImpl<
          _$VehicleInspectionStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            VehicleInspectionEntities vehicleInspectionEntities)
        loadSuccess,
  }) {
    return loadSuccess(vehicleInspectionEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VehicleInspectionEntities vehicleInspectionEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(vehicleInspectionEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VehicleInspectionEntities vehicleInspectionEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(vehicleInspectionEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VehicleInspectionStateInitial value) initial,
    required TResult Function(_VehicleInspectionStateLoadFailure value)
        loadFailure,
    required TResult Function(VehicleInspectionStateLoading value) loading,
    required TResult Function(_VehicleInspectionStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VehicleInspectionStateInitial value)? initial,
    TResult? Function(_VehicleInspectionStateLoadFailure value)? loadFailure,
    TResult? Function(VehicleInspectionStateLoading value)? loading,
    TResult? Function(_VehicleInspectionStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VehicleInspectionStateInitial value)? initial,
    TResult Function(_VehicleInspectionStateLoadFailure value)? loadFailure,
    TResult Function(VehicleInspectionStateLoading value)? loading,
    TResult Function(_VehicleInspectionStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _VehicleInspectionStateLoadSuccess
    implements VehicleInspectionState {
  const factory _VehicleInspectionStateLoadSuccess(
          final VehicleInspectionEntities vehicleInspectionEntities) =
      _$VehicleInspectionStateLoadSuccessImpl;

  VehicleInspectionEntities get vehicleInspectionEntities;
  @JsonKey(ignore: true)
  _$$VehicleInspectionStateLoadSuccessImplCopyWith<
          _$VehicleInspectionStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
