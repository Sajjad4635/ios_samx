// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_vehicle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteVehicleEvent {
  DeleteVehicleParam get deleteVehicleParam =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeleteVehicleParam deleteVehicleParam)
        deleteVehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeleteVehicleParam deleteVehicleParam)?
        deleteVehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeleteVehicleParam deleteVehicleParam)?
        deleteVehicleEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteVehicleEventCalled value)
        deleteVehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteVehicleEventCalled value)?
        deleteVehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteVehicleEventCalled value)? deleteVehicleEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteVehicleEventCopyWith<DeleteVehicleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteVehicleEventCopyWith<$Res> {
  factory $DeleteVehicleEventCopyWith(
          DeleteVehicleEvent value, $Res Function(DeleteVehicleEvent) then) =
      _$DeleteVehicleEventCopyWithImpl<$Res, DeleteVehicleEvent>;
  @useResult
  $Res call({DeleteVehicleParam deleteVehicleParam});
}

/// @nodoc
class _$DeleteVehicleEventCopyWithImpl<$Res, $Val extends DeleteVehicleEvent>
    implements $DeleteVehicleEventCopyWith<$Res> {
  _$DeleteVehicleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteVehicleParam = null,
  }) {
    return _then(_value.copyWith(
      deleteVehicleParam: null == deleteVehicleParam
          ? _value.deleteVehicleParam
          : deleteVehicleParam // ignore: cast_nullable_to_non_nullable
              as DeleteVehicleParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteVehicleEventCalledImplCopyWith<$Res>
    implements $DeleteVehicleEventCopyWith<$Res> {
  factory _$$DeleteVehicleEventCalledImplCopyWith(
          _$DeleteVehicleEventCalledImpl value,
          $Res Function(_$DeleteVehicleEventCalledImpl) then) =
      __$$DeleteVehicleEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeleteVehicleParam deleteVehicleParam});
}

/// @nodoc
class __$$DeleteVehicleEventCalledImplCopyWithImpl<$Res>
    extends _$DeleteVehicleEventCopyWithImpl<$Res,
        _$DeleteVehicleEventCalledImpl>
    implements _$$DeleteVehicleEventCalledImplCopyWith<$Res> {
  __$$DeleteVehicleEventCalledImplCopyWithImpl(
      _$DeleteVehicleEventCalledImpl _value,
      $Res Function(_$DeleteVehicleEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteVehicleParam = null,
  }) {
    return _then(_$DeleteVehicleEventCalledImpl(
      deleteVehicleParam: null == deleteVehicleParam
          ? _value.deleteVehicleParam
          : deleteVehicleParam // ignore: cast_nullable_to_non_nullable
              as DeleteVehicleParam,
    ));
  }
}

/// @nodoc

class _$DeleteVehicleEventCalledImpl implements _DeleteVehicleEventCalled {
  const _$DeleteVehicleEventCalledImpl({required this.deleteVehicleParam});

  @override
  final DeleteVehicleParam deleteVehicleParam;

  @override
  String toString() {
    return 'DeleteVehicleEvent.deleteVehicleEventCalled(deleteVehicleParam: $deleteVehicleParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteVehicleEventCalledImpl &&
            (identical(other.deleteVehicleParam, deleteVehicleParam) ||
                other.deleteVehicleParam == deleteVehicleParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deleteVehicleParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteVehicleEventCalledImplCopyWith<_$DeleteVehicleEventCalledImpl>
      get copyWith => __$$DeleteVehicleEventCalledImplCopyWithImpl<
          _$DeleteVehicleEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeleteVehicleParam deleteVehicleParam)
        deleteVehicleEventCalled,
  }) {
    return deleteVehicleEventCalled(deleteVehicleParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeleteVehicleParam deleteVehicleParam)?
        deleteVehicleEventCalled,
  }) {
    return deleteVehicleEventCalled?.call(deleteVehicleParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeleteVehicleParam deleteVehicleParam)?
        deleteVehicleEventCalled,
    required TResult orElse(),
  }) {
    if (deleteVehicleEventCalled != null) {
      return deleteVehicleEventCalled(deleteVehicleParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteVehicleEventCalled value)
        deleteVehicleEventCalled,
  }) {
    return deleteVehicleEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteVehicleEventCalled value)?
        deleteVehicleEventCalled,
  }) {
    return deleteVehicleEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteVehicleEventCalled value)? deleteVehicleEventCalled,
    required TResult orElse(),
  }) {
    if (deleteVehicleEventCalled != null) {
      return deleteVehicleEventCalled(this);
    }
    return orElse();
  }
}

abstract class _DeleteVehicleEventCalled implements DeleteVehicleEvent {
  const factory _DeleteVehicleEventCalled(
          {required final DeleteVehicleParam deleteVehicleParam}) =
      _$DeleteVehicleEventCalledImpl;

  @override
  DeleteVehicleParam get deleteVehicleParam;
  @override
  @JsonKey(ignore: true)
  _$$DeleteVehicleEventCalledImplCopyWith<_$DeleteVehicleEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteVehicleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DeleteVehicleEntities deleteVehicleEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(DeleteVehicleEntities deleteVehicleEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(DeleteVehicleEntities deleteVehicleEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteVehicleStateInitial value) initial,
    required TResult Function(_DeleteVehicleStateLoadFailure value) loadFailure,
    required TResult Function(DeleteVehicleStateLoading value) loading,
    required TResult Function(_VehicleStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteVehicleStateInitial value)? initial,
    TResult? Function(_DeleteVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(DeleteVehicleStateLoading value)? loading,
    TResult? Function(_VehicleStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteVehicleStateInitial value)? initial,
    TResult Function(_DeleteVehicleStateLoadFailure value)? loadFailure,
    TResult Function(DeleteVehicleStateLoading value)? loading,
    TResult Function(_VehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteVehicleStateCopyWith<$Res> {
  factory $DeleteVehicleStateCopyWith(
          DeleteVehicleState value, $Res Function(DeleteVehicleState) then) =
      _$DeleteVehicleStateCopyWithImpl<$Res, DeleteVehicleState>;
}

/// @nodoc
class _$DeleteVehicleStateCopyWithImpl<$Res, $Val extends DeleteVehicleState>
    implements $DeleteVehicleStateCopyWith<$Res> {
  _$DeleteVehicleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteVehicleStateInitialImplCopyWith<$Res> {
  factory _$$DeleteVehicleStateInitialImplCopyWith(
          _$DeleteVehicleStateInitialImpl value,
          $Res Function(_$DeleteVehicleStateInitialImpl) then) =
      __$$DeleteVehicleStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteVehicleStateInitialImplCopyWithImpl<$Res>
    extends _$DeleteVehicleStateCopyWithImpl<$Res,
        _$DeleteVehicleStateInitialImpl>
    implements _$$DeleteVehicleStateInitialImplCopyWith<$Res> {
  __$$DeleteVehicleStateInitialImplCopyWithImpl(
      _$DeleteVehicleStateInitialImpl _value,
      $Res Function(_$DeleteVehicleStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteVehicleStateInitialImpl implements _DeleteVehicleStateInitial {
  const _$DeleteVehicleStateInitialImpl();

  @override
  String toString() {
    return 'DeleteVehicleState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteVehicleStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DeleteVehicleEntities deleteVehicleEntities)
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
    TResult? Function(DeleteVehicleEntities deleteVehicleEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(DeleteVehicleEntities deleteVehicleEntities)? loadSuccess,
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
    required TResult Function(_DeleteVehicleStateInitial value) initial,
    required TResult Function(_DeleteVehicleStateLoadFailure value) loadFailure,
    required TResult Function(DeleteVehicleStateLoading value) loading,
    required TResult Function(_VehicleStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteVehicleStateInitial value)? initial,
    TResult? Function(_DeleteVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(DeleteVehicleStateLoading value)? loading,
    TResult? Function(_VehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteVehicleStateInitial value)? initial,
    TResult Function(_DeleteVehicleStateLoadFailure value)? loadFailure,
    TResult Function(DeleteVehicleStateLoading value)? loading,
    TResult Function(_VehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DeleteVehicleStateInitial implements DeleteVehicleState {
  const factory _DeleteVehicleStateInitial() = _$DeleteVehicleStateInitialImpl;
}

/// @nodoc
abstract class _$$DeleteVehicleStateLoadFailureImplCopyWith<$Res> {
  factory _$$DeleteVehicleStateLoadFailureImplCopyWith(
          _$DeleteVehicleStateLoadFailureImpl value,
          $Res Function(_$DeleteVehicleStateLoadFailureImpl) then) =
      __$$DeleteVehicleStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$DeleteVehicleStateLoadFailureImplCopyWithImpl<$Res>
    extends _$DeleteVehicleStateCopyWithImpl<$Res,
        _$DeleteVehicleStateLoadFailureImpl>
    implements _$$DeleteVehicleStateLoadFailureImplCopyWith<$Res> {
  __$$DeleteVehicleStateLoadFailureImplCopyWithImpl(
      _$DeleteVehicleStateLoadFailureImpl _value,
      $Res Function(_$DeleteVehicleStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$DeleteVehicleStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$DeleteVehicleStateLoadFailureImpl
    implements _DeleteVehicleStateLoadFailure {
  const _$DeleteVehicleStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'DeleteVehicleState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteVehicleStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteVehicleStateLoadFailureImplCopyWith<
          _$DeleteVehicleStateLoadFailureImpl>
      get copyWith => __$$DeleteVehicleStateLoadFailureImplCopyWithImpl<
          _$DeleteVehicleStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DeleteVehicleEntities deleteVehicleEntities)
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
    TResult? Function(DeleteVehicleEntities deleteVehicleEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(DeleteVehicleEntities deleteVehicleEntities)? loadSuccess,
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
    required TResult Function(_DeleteVehicleStateInitial value) initial,
    required TResult Function(_DeleteVehicleStateLoadFailure value) loadFailure,
    required TResult Function(DeleteVehicleStateLoading value) loading,
    required TResult Function(_VehicleStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteVehicleStateInitial value)? initial,
    TResult? Function(_DeleteVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(DeleteVehicleStateLoading value)? loading,
    TResult? Function(_VehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteVehicleStateInitial value)? initial,
    TResult Function(_DeleteVehicleStateLoadFailure value)? loadFailure,
    TResult Function(DeleteVehicleStateLoading value)? loading,
    TResult Function(_VehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteVehicleStateLoadFailure implements DeleteVehicleState {
  const factory _DeleteVehicleStateLoadFailure(final Failure failure) =
      _$DeleteVehicleStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$DeleteVehicleStateLoadFailureImplCopyWith<
          _$DeleteVehicleStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteVehicleStateLoadingImplCopyWith<$Res> {
  factory _$$DeleteVehicleStateLoadingImplCopyWith(
          _$DeleteVehicleStateLoadingImpl value,
          $Res Function(_$DeleteVehicleStateLoadingImpl) then) =
      __$$DeleteVehicleStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteVehicleStateLoadingImplCopyWithImpl<$Res>
    extends _$DeleteVehicleStateCopyWithImpl<$Res,
        _$DeleteVehicleStateLoadingImpl>
    implements _$$DeleteVehicleStateLoadingImplCopyWith<$Res> {
  __$$DeleteVehicleStateLoadingImplCopyWithImpl(
      _$DeleteVehicleStateLoadingImpl _value,
      $Res Function(_$DeleteVehicleStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteVehicleStateLoadingImpl implements DeleteVehicleStateLoading {
  const _$DeleteVehicleStateLoadingImpl();

  @override
  String toString() {
    return 'DeleteVehicleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteVehicleStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DeleteVehicleEntities deleteVehicleEntities)
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
    TResult? Function(DeleteVehicleEntities deleteVehicleEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(DeleteVehicleEntities deleteVehicleEntities)? loadSuccess,
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
    required TResult Function(_DeleteVehicleStateInitial value) initial,
    required TResult Function(_DeleteVehicleStateLoadFailure value) loadFailure,
    required TResult Function(DeleteVehicleStateLoading value) loading,
    required TResult Function(_VehicleStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteVehicleStateInitial value)? initial,
    TResult? Function(_DeleteVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(DeleteVehicleStateLoading value)? loading,
    TResult? Function(_VehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteVehicleStateInitial value)? initial,
    TResult Function(_DeleteVehicleStateLoadFailure value)? loadFailure,
    TResult Function(DeleteVehicleStateLoading value)? loading,
    TResult Function(_VehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DeleteVehicleStateLoading implements DeleteVehicleState {
  const factory DeleteVehicleStateLoading() = _$DeleteVehicleStateLoadingImpl;
}

/// @nodoc
abstract class _$$VehicleStateLoadSuccessImplCopyWith<$Res> {
  factory _$$VehicleStateLoadSuccessImplCopyWith(
          _$VehicleStateLoadSuccessImpl value,
          $Res Function(_$VehicleStateLoadSuccessImpl) then) =
      __$$VehicleStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteVehicleEntities deleteVehicleEntities});
}

/// @nodoc
class __$$VehicleStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$DeleteVehicleStateCopyWithImpl<$Res,
        _$VehicleStateLoadSuccessImpl>
    implements _$$VehicleStateLoadSuccessImplCopyWith<$Res> {
  __$$VehicleStateLoadSuccessImplCopyWithImpl(
      _$VehicleStateLoadSuccessImpl _value,
      $Res Function(_$VehicleStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteVehicleEntities = null,
  }) {
    return _then(_$VehicleStateLoadSuccessImpl(
      null == deleteVehicleEntities
          ? _value.deleteVehicleEntities
          : deleteVehicleEntities // ignore: cast_nullable_to_non_nullable
              as DeleteVehicleEntities,
    ));
  }
}

/// @nodoc

class _$VehicleStateLoadSuccessImpl implements _VehicleStateLoadSuccess {
  const _$VehicleStateLoadSuccessImpl(this.deleteVehicleEntities);

  @override
  final DeleteVehicleEntities deleteVehicleEntities;

  @override
  String toString() {
    return 'DeleteVehicleState.loadSuccess(deleteVehicleEntities: $deleteVehicleEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleStateLoadSuccessImpl &&
            (identical(other.deleteVehicleEntities, deleteVehicleEntities) ||
                other.deleteVehicleEntities == deleteVehicleEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deleteVehicleEntities);

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
    required TResult Function(DeleteVehicleEntities deleteVehicleEntities)
        loadSuccess,
  }) {
    return loadSuccess(deleteVehicleEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(DeleteVehicleEntities deleteVehicleEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(deleteVehicleEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(DeleteVehicleEntities deleteVehicleEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(deleteVehicleEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteVehicleStateInitial value) initial,
    required TResult Function(_DeleteVehicleStateLoadFailure value) loadFailure,
    required TResult Function(DeleteVehicleStateLoading value) loading,
    required TResult Function(_VehicleStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteVehicleStateInitial value)? initial,
    TResult? Function(_DeleteVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(DeleteVehicleStateLoading value)? loading,
    TResult? Function(_VehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteVehicleStateInitial value)? initial,
    TResult Function(_DeleteVehicleStateLoadFailure value)? loadFailure,
    TResult Function(DeleteVehicleStateLoading value)? loading,
    TResult Function(_VehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _VehicleStateLoadSuccess implements DeleteVehicleState {
  const factory _VehicleStateLoadSuccess(
          final DeleteVehicleEntities deleteVehicleEntities) =
      _$VehicleStateLoadSuccessImpl;

  DeleteVehicleEntities get deleteVehicleEntities;
  @JsonKey(ignore: true)
  _$$VehicleStateLoadSuccessImplCopyWith<_$VehicleStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
