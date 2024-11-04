// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object_remove_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ObjectRemoveEvent {
  ObjectRemoveParam get objectRemoveParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ObjectRemoveParam objectRemoveParam)
        objectRemoveEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ObjectRemoveParam objectRemoveParam)?
        objectRemoveEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ObjectRemoveParam objectRemoveParam)?
        objectRemoveEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectRemoveEventCalled value)
        objectRemoveEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObjectRemoveEventCalled value)? objectRemoveEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObjectRemoveEventCalled value)? objectRemoveEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ObjectRemoveEventCopyWith<ObjectRemoveEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectRemoveEventCopyWith<$Res> {
  factory $ObjectRemoveEventCopyWith(
          ObjectRemoveEvent value, $Res Function(ObjectRemoveEvent) then) =
      _$ObjectRemoveEventCopyWithImpl<$Res, ObjectRemoveEvent>;
  @useResult
  $Res call({ObjectRemoveParam objectRemoveParam});
}

/// @nodoc
class _$ObjectRemoveEventCopyWithImpl<$Res, $Val extends ObjectRemoveEvent>
    implements $ObjectRemoveEventCopyWith<$Res> {
  _$ObjectRemoveEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectRemoveParam = null,
  }) {
    return _then(_value.copyWith(
      objectRemoveParam: null == objectRemoveParam
          ? _value.objectRemoveParam
          : objectRemoveParam // ignore: cast_nullable_to_non_nullable
              as ObjectRemoveParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ObjectRemoveEventCalledImplCopyWith<$Res>
    implements $ObjectRemoveEventCopyWith<$Res> {
  factory _$$ObjectRemoveEventCalledImplCopyWith(
          _$ObjectRemoveEventCalledImpl value,
          $Res Function(_$ObjectRemoveEventCalledImpl) then) =
      __$$ObjectRemoveEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ObjectRemoveParam objectRemoveParam});
}

/// @nodoc
class __$$ObjectRemoveEventCalledImplCopyWithImpl<$Res>
    extends _$ObjectRemoveEventCopyWithImpl<$Res, _$ObjectRemoveEventCalledImpl>
    implements _$$ObjectRemoveEventCalledImplCopyWith<$Res> {
  __$$ObjectRemoveEventCalledImplCopyWithImpl(
      _$ObjectRemoveEventCalledImpl _value,
      $Res Function(_$ObjectRemoveEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectRemoveParam = null,
  }) {
    return _then(_$ObjectRemoveEventCalledImpl(
      null == objectRemoveParam
          ? _value.objectRemoveParam
          : objectRemoveParam // ignore: cast_nullable_to_non_nullable
              as ObjectRemoveParam,
    ));
  }
}

/// @nodoc

class _$ObjectRemoveEventCalledImpl implements _ObjectRemoveEventCalled {
  const _$ObjectRemoveEventCalledImpl(this.objectRemoveParam);

  @override
  final ObjectRemoveParam objectRemoveParam;

  @override
  String toString() {
    return 'ObjectRemoveEvent.objectRemoveEventCalled(objectRemoveParam: $objectRemoveParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectRemoveEventCalledImpl &&
            (identical(other.objectRemoveParam, objectRemoveParam) ||
                other.objectRemoveParam == objectRemoveParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, objectRemoveParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObjectRemoveEventCalledImplCopyWith<_$ObjectRemoveEventCalledImpl>
      get copyWith => __$$ObjectRemoveEventCalledImplCopyWithImpl<
          _$ObjectRemoveEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ObjectRemoveParam objectRemoveParam)
        objectRemoveEventCalled,
  }) {
    return objectRemoveEventCalled(objectRemoveParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ObjectRemoveParam objectRemoveParam)?
        objectRemoveEventCalled,
  }) {
    return objectRemoveEventCalled?.call(objectRemoveParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ObjectRemoveParam objectRemoveParam)?
        objectRemoveEventCalled,
    required TResult orElse(),
  }) {
    if (objectRemoveEventCalled != null) {
      return objectRemoveEventCalled(objectRemoveParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectRemoveEventCalled value)
        objectRemoveEventCalled,
  }) {
    return objectRemoveEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObjectRemoveEventCalled value)? objectRemoveEventCalled,
  }) {
    return objectRemoveEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObjectRemoveEventCalled value)? objectRemoveEventCalled,
    required TResult orElse(),
  }) {
    if (objectRemoveEventCalled != null) {
      return objectRemoveEventCalled(this);
    }
    return orElse();
  }
}

abstract class _ObjectRemoveEventCalled implements ObjectRemoveEvent {
  const factory _ObjectRemoveEventCalled(
          final ObjectRemoveParam objectRemoveParam) =
      _$ObjectRemoveEventCalledImpl;

  @override
  ObjectRemoveParam get objectRemoveParam;
  @override
  @JsonKey(ignore: true)
  _$$ObjectRemoveEventCalledImplCopyWith<_$ObjectRemoveEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ObjectRemoveState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ObjectRemoveEntities objectRemoveEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(ObjectRemoveEntities objectRemoveEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(ObjectRemoveEntities objectRemoveEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectRemoveStateInitial value) initial,
    required TResult Function(_ObjectRemoveStateLoadFailure value) loadFailure,
    required TResult Function(ObjectRemoveStateLoading value) loading,
    required TResult Function(_ObjectRemoveStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObjectRemoveStateInitial value)? initial,
    TResult? Function(_ObjectRemoveStateLoadFailure value)? loadFailure,
    TResult? Function(ObjectRemoveStateLoading value)? loading,
    TResult? Function(_ObjectRemoveStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObjectRemoveStateInitial value)? initial,
    TResult Function(_ObjectRemoveStateLoadFailure value)? loadFailure,
    TResult Function(ObjectRemoveStateLoading value)? loading,
    TResult Function(_ObjectRemoveStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectRemoveStateCopyWith<$Res> {
  factory $ObjectRemoveStateCopyWith(
          ObjectRemoveState value, $Res Function(ObjectRemoveState) then) =
      _$ObjectRemoveStateCopyWithImpl<$Res, ObjectRemoveState>;
}

/// @nodoc
class _$ObjectRemoveStateCopyWithImpl<$Res, $Val extends ObjectRemoveState>
    implements $ObjectRemoveStateCopyWith<$Res> {
  _$ObjectRemoveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ObjectRemoveStateInitialImplCopyWith<$Res> {
  factory _$$ObjectRemoveStateInitialImplCopyWith(
          _$ObjectRemoveStateInitialImpl value,
          $Res Function(_$ObjectRemoveStateInitialImpl) then) =
      __$$ObjectRemoveStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObjectRemoveStateInitialImplCopyWithImpl<$Res>
    extends _$ObjectRemoveStateCopyWithImpl<$Res,
        _$ObjectRemoveStateInitialImpl>
    implements _$$ObjectRemoveStateInitialImplCopyWith<$Res> {
  __$$ObjectRemoveStateInitialImplCopyWithImpl(
      _$ObjectRemoveStateInitialImpl _value,
      $Res Function(_$ObjectRemoveStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ObjectRemoveStateInitialImpl implements _ObjectRemoveStateInitial {
  const _$ObjectRemoveStateInitialImpl();

  @override
  String toString() {
    return 'ObjectRemoveState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectRemoveStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ObjectRemoveEntities objectRemoveEntities)
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
    TResult? Function(ObjectRemoveEntities objectRemoveEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(ObjectRemoveEntities objectRemoveEntities)? loadSuccess,
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
    required TResult Function(_ObjectRemoveStateInitial value) initial,
    required TResult Function(_ObjectRemoveStateLoadFailure value) loadFailure,
    required TResult Function(ObjectRemoveStateLoading value) loading,
    required TResult Function(_ObjectRemoveStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObjectRemoveStateInitial value)? initial,
    TResult? Function(_ObjectRemoveStateLoadFailure value)? loadFailure,
    TResult? Function(ObjectRemoveStateLoading value)? loading,
    TResult? Function(_ObjectRemoveStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObjectRemoveStateInitial value)? initial,
    TResult Function(_ObjectRemoveStateLoadFailure value)? loadFailure,
    TResult Function(ObjectRemoveStateLoading value)? loading,
    TResult Function(_ObjectRemoveStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ObjectRemoveStateInitial implements ObjectRemoveState {
  const factory _ObjectRemoveStateInitial() = _$ObjectRemoveStateInitialImpl;
}

/// @nodoc
abstract class _$$ObjectRemoveStateLoadFailureImplCopyWith<$Res> {
  factory _$$ObjectRemoveStateLoadFailureImplCopyWith(
          _$ObjectRemoveStateLoadFailureImpl value,
          $Res Function(_$ObjectRemoveStateLoadFailureImpl) then) =
      __$$ObjectRemoveStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ObjectRemoveStateLoadFailureImplCopyWithImpl<$Res>
    extends _$ObjectRemoveStateCopyWithImpl<$Res,
        _$ObjectRemoveStateLoadFailureImpl>
    implements _$$ObjectRemoveStateLoadFailureImplCopyWith<$Res> {
  __$$ObjectRemoveStateLoadFailureImplCopyWithImpl(
      _$ObjectRemoveStateLoadFailureImpl _value,
      $Res Function(_$ObjectRemoveStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ObjectRemoveStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ObjectRemoveStateLoadFailureImpl
    implements _ObjectRemoveStateLoadFailure {
  const _$ObjectRemoveStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ObjectRemoveState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectRemoveStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObjectRemoveStateLoadFailureImplCopyWith<
          _$ObjectRemoveStateLoadFailureImpl>
      get copyWith => __$$ObjectRemoveStateLoadFailureImplCopyWithImpl<
          _$ObjectRemoveStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ObjectRemoveEntities objectRemoveEntities)
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
    TResult? Function(ObjectRemoveEntities objectRemoveEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(ObjectRemoveEntities objectRemoveEntities)? loadSuccess,
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
    required TResult Function(_ObjectRemoveStateInitial value) initial,
    required TResult Function(_ObjectRemoveStateLoadFailure value) loadFailure,
    required TResult Function(ObjectRemoveStateLoading value) loading,
    required TResult Function(_ObjectRemoveStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObjectRemoveStateInitial value)? initial,
    TResult? Function(_ObjectRemoveStateLoadFailure value)? loadFailure,
    TResult? Function(ObjectRemoveStateLoading value)? loading,
    TResult? Function(_ObjectRemoveStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObjectRemoveStateInitial value)? initial,
    TResult Function(_ObjectRemoveStateLoadFailure value)? loadFailure,
    TResult Function(ObjectRemoveStateLoading value)? loading,
    TResult Function(_ObjectRemoveStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _ObjectRemoveStateLoadFailure implements ObjectRemoveState {
  const factory _ObjectRemoveStateLoadFailure(final Failure failure) =
      _$ObjectRemoveStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ObjectRemoveStateLoadFailureImplCopyWith<
          _$ObjectRemoveStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ObjectRemoveStateLoadingImplCopyWith<$Res> {
  factory _$$ObjectRemoveStateLoadingImplCopyWith(
          _$ObjectRemoveStateLoadingImpl value,
          $Res Function(_$ObjectRemoveStateLoadingImpl) then) =
      __$$ObjectRemoveStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObjectRemoveStateLoadingImplCopyWithImpl<$Res>
    extends _$ObjectRemoveStateCopyWithImpl<$Res,
        _$ObjectRemoveStateLoadingImpl>
    implements _$$ObjectRemoveStateLoadingImplCopyWith<$Res> {
  __$$ObjectRemoveStateLoadingImplCopyWithImpl(
      _$ObjectRemoveStateLoadingImpl _value,
      $Res Function(_$ObjectRemoveStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ObjectRemoveStateLoadingImpl implements ObjectRemoveStateLoading {
  const _$ObjectRemoveStateLoadingImpl();

  @override
  String toString() {
    return 'ObjectRemoveState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectRemoveStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ObjectRemoveEntities objectRemoveEntities)
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
    TResult? Function(ObjectRemoveEntities objectRemoveEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(ObjectRemoveEntities objectRemoveEntities)? loadSuccess,
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
    required TResult Function(_ObjectRemoveStateInitial value) initial,
    required TResult Function(_ObjectRemoveStateLoadFailure value) loadFailure,
    required TResult Function(ObjectRemoveStateLoading value) loading,
    required TResult Function(_ObjectRemoveStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObjectRemoveStateInitial value)? initial,
    TResult? Function(_ObjectRemoveStateLoadFailure value)? loadFailure,
    TResult? Function(ObjectRemoveStateLoading value)? loading,
    TResult? Function(_ObjectRemoveStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObjectRemoveStateInitial value)? initial,
    TResult Function(_ObjectRemoveStateLoadFailure value)? loadFailure,
    TResult Function(ObjectRemoveStateLoading value)? loading,
    TResult Function(_ObjectRemoveStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ObjectRemoveStateLoading implements ObjectRemoveState {
  const factory ObjectRemoveStateLoading() = _$ObjectRemoveStateLoadingImpl;
}

/// @nodoc
abstract class _$$ObjectRemoveStateLoadSuccessImplCopyWith<$Res> {
  factory _$$ObjectRemoveStateLoadSuccessImplCopyWith(
          _$ObjectRemoveStateLoadSuccessImpl value,
          $Res Function(_$ObjectRemoveStateLoadSuccessImpl) then) =
      __$$ObjectRemoveStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ObjectRemoveEntities objectRemoveEntities});
}

/// @nodoc
class __$$ObjectRemoveStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$ObjectRemoveStateCopyWithImpl<$Res,
        _$ObjectRemoveStateLoadSuccessImpl>
    implements _$$ObjectRemoveStateLoadSuccessImplCopyWith<$Res> {
  __$$ObjectRemoveStateLoadSuccessImplCopyWithImpl(
      _$ObjectRemoveStateLoadSuccessImpl _value,
      $Res Function(_$ObjectRemoveStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectRemoveEntities = null,
  }) {
    return _then(_$ObjectRemoveStateLoadSuccessImpl(
      null == objectRemoveEntities
          ? _value.objectRemoveEntities
          : objectRemoveEntities // ignore: cast_nullable_to_non_nullable
              as ObjectRemoveEntities,
    ));
  }
}

/// @nodoc

class _$ObjectRemoveStateLoadSuccessImpl
    implements _ObjectRemoveStateLoadSuccess {
  const _$ObjectRemoveStateLoadSuccessImpl(this.objectRemoveEntities);

  @override
  final ObjectRemoveEntities objectRemoveEntities;

  @override
  String toString() {
    return 'ObjectRemoveState.loadSuccess(objectRemoveEntities: $objectRemoveEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectRemoveStateLoadSuccessImpl &&
            (identical(other.objectRemoveEntities, objectRemoveEntities) ||
                other.objectRemoveEntities == objectRemoveEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, objectRemoveEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObjectRemoveStateLoadSuccessImplCopyWith<
          _$ObjectRemoveStateLoadSuccessImpl>
      get copyWith => __$$ObjectRemoveStateLoadSuccessImplCopyWithImpl<
          _$ObjectRemoveStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ObjectRemoveEntities objectRemoveEntities)
        loadSuccess,
  }) {
    return loadSuccess(objectRemoveEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(ObjectRemoveEntities objectRemoveEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(objectRemoveEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(ObjectRemoveEntities objectRemoveEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(objectRemoveEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectRemoveStateInitial value) initial,
    required TResult Function(_ObjectRemoveStateLoadFailure value) loadFailure,
    required TResult Function(ObjectRemoveStateLoading value) loading,
    required TResult Function(_ObjectRemoveStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObjectRemoveStateInitial value)? initial,
    TResult? Function(_ObjectRemoveStateLoadFailure value)? loadFailure,
    TResult? Function(ObjectRemoveStateLoading value)? loading,
    TResult? Function(_ObjectRemoveStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObjectRemoveStateInitial value)? initial,
    TResult Function(_ObjectRemoveStateLoadFailure value)? loadFailure,
    TResult Function(ObjectRemoveStateLoading value)? loading,
    TResult Function(_ObjectRemoveStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ObjectRemoveStateLoadSuccess implements ObjectRemoveState {
  const factory _ObjectRemoveStateLoadSuccess(
          final ObjectRemoveEntities objectRemoveEntities) =
      _$ObjectRemoveStateLoadSuccessImpl;

  ObjectRemoveEntities get objectRemoveEntities;
  @JsonKey(ignore: true)
  _$$ObjectRemoveStateLoadSuccessImplCopyWith<
          _$ObjectRemoveStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
