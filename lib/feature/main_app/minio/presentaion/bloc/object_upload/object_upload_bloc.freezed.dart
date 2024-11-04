// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object_upload_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ObjectUploadEvent {
  ObjectUploadParam get objectUploadParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ObjectUploadParam objectUploadParam)
        objectUploadEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ObjectUploadParam objectUploadParam)?
        objectUploadEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ObjectUploadParam objectUploadParam)?
        objectUploadEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectUploadEventCalled value)
        objectUploadEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObjectUploadEventCalled value)? objectUploadEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObjectUploadEventCalled value)? objectUploadEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ObjectUploadEventCopyWith<ObjectUploadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectUploadEventCopyWith<$Res> {
  factory $ObjectUploadEventCopyWith(
          ObjectUploadEvent value, $Res Function(ObjectUploadEvent) then) =
      _$ObjectUploadEventCopyWithImpl<$Res, ObjectUploadEvent>;
  @useResult
  $Res call({ObjectUploadParam objectUploadParam});
}

/// @nodoc
class _$ObjectUploadEventCopyWithImpl<$Res, $Val extends ObjectUploadEvent>
    implements $ObjectUploadEventCopyWith<$Res> {
  _$ObjectUploadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectUploadParam = null,
  }) {
    return _then(_value.copyWith(
      objectUploadParam: null == objectUploadParam
          ? _value.objectUploadParam
          : objectUploadParam // ignore: cast_nullable_to_non_nullable
              as ObjectUploadParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ObjectUploadEventCalledImplCopyWith<$Res>
    implements $ObjectUploadEventCopyWith<$Res> {
  factory _$$ObjectUploadEventCalledImplCopyWith(
          _$ObjectUploadEventCalledImpl value,
          $Res Function(_$ObjectUploadEventCalledImpl) then) =
      __$$ObjectUploadEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ObjectUploadParam objectUploadParam});
}

/// @nodoc
class __$$ObjectUploadEventCalledImplCopyWithImpl<$Res>
    extends _$ObjectUploadEventCopyWithImpl<$Res, _$ObjectUploadEventCalledImpl>
    implements _$$ObjectUploadEventCalledImplCopyWith<$Res> {
  __$$ObjectUploadEventCalledImplCopyWithImpl(
      _$ObjectUploadEventCalledImpl _value,
      $Res Function(_$ObjectUploadEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectUploadParam = null,
  }) {
    return _then(_$ObjectUploadEventCalledImpl(
      null == objectUploadParam
          ? _value.objectUploadParam
          : objectUploadParam // ignore: cast_nullable_to_non_nullable
              as ObjectUploadParam,
    ));
  }
}

/// @nodoc

class _$ObjectUploadEventCalledImpl implements _ObjectUploadEventCalled {
  const _$ObjectUploadEventCalledImpl(this.objectUploadParam);

  @override
  final ObjectUploadParam objectUploadParam;

  @override
  String toString() {
    return 'ObjectUploadEvent.objectUploadEventCalled(objectUploadParam: $objectUploadParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectUploadEventCalledImpl &&
            (identical(other.objectUploadParam, objectUploadParam) ||
                other.objectUploadParam == objectUploadParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, objectUploadParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObjectUploadEventCalledImplCopyWith<_$ObjectUploadEventCalledImpl>
      get copyWith => __$$ObjectUploadEventCalledImplCopyWithImpl<
          _$ObjectUploadEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ObjectUploadParam objectUploadParam)
        objectUploadEventCalled,
  }) {
    return objectUploadEventCalled(objectUploadParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ObjectUploadParam objectUploadParam)?
        objectUploadEventCalled,
  }) {
    return objectUploadEventCalled?.call(objectUploadParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ObjectUploadParam objectUploadParam)?
        objectUploadEventCalled,
    required TResult orElse(),
  }) {
    if (objectUploadEventCalled != null) {
      return objectUploadEventCalled(objectUploadParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectUploadEventCalled value)
        objectUploadEventCalled,
  }) {
    return objectUploadEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObjectUploadEventCalled value)? objectUploadEventCalled,
  }) {
    return objectUploadEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObjectUploadEventCalled value)? objectUploadEventCalled,
    required TResult orElse(),
  }) {
    if (objectUploadEventCalled != null) {
      return objectUploadEventCalled(this);
    }
    return orElse();
  }
}

abstract class _ObjectUploadEventCalled implements ObjectUploadEvent {
  const factory _ObjectUploadEventCalled(
          final ObjectUploadParam objectUploadParam) =
      _$ObjectUploadEventCalledImpl;

  @override
  ObjectUploadParam get objectUploadParam;
  @override
  @JsonKey(ignore: true)
  _$$ObjectUploadEventCalledImplCopyWith<_$ObjectUploadEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ObjectUploadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ObjectUploadEntities objectUploadEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(ObjectUploadEntities objectUploadEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(ObjectUploadEntities objectUploadEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectUploadStateInitial value) initial,
    required TResult Function(_ObjectUploadStateLoadFailure value) loadFailure,
    required TResult Function(ObjectUploadStateLoading value) loading,
    required TResult Function(_ObjectUploadStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObjectUploadStateInitial value)? initial,
    TResult? Function(_ObjectUploadStateLoadFailure value)? loadFailure,
    TResult? Function(ObjectUploadStateLoading value)? loading,
    TResult? Function(_ObjectUploadStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObjectUploadStateInitial value)? initial,
    TResult Function(_ObjectUploadStateLoadFailure value)? loadFailure,
    TResult Function(ObjectUploadStateLoading value)? loading,
    TResult Function(_ObjectUploadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectUploadStateCopyWith<$Res> {
  factory $ObjectUploadStateCopyWith(
          ObjectUploadState value, $Res Function(ObjectUploadState) then) =
      _$ObjectUploadStateCopyWithImpl<$Res, ObjectUploadState>;
}

/// @nodoc
class _$ObjectUploadStateCopyWithImpl<$Res, $Val extends ObjectUploadState>
    implements $ObjectUploadStateCopyWith<$Res> {
  _$ObjectUploadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ObjectUploadStateInitialImplCopyWith<$Res> {
  factory _$$ObjectUploadStateInitialImplCopyWith(
          _$ObjectUploadStateInitialImpl value,
          $Res Function(_$ObjectUploadStateInitialImpl) then) =
      __$$ObjectUploadStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObjectUploadStateInitialImplCopyWithImpl<$Res>
    extends _$ObjectUploadStateCopyWithImpl<$Res,
        _$ObjectUploadStateInitialImpl>
    implements _$$ObjectUploadStateInitialImplCopyWith<$Res> {
  __$$ObjectUploadStateInitialImplCopyWithImpl(
      _$ObjectUploadStateInitialImpl _value,
      $Res Function(_$ObjectUploadStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ObjectUploadStateInitialImpl implements _ObjectUploadStateInitial {
  const _$ObjectUploadStateInitialImpl();

  @override
  String toString() {
    return 'ObjectUploadState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectUploadStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ObjectUploadEntities objectUploadEntities)
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
    TResult? Function(ObjectUploadEntities objectUploadEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(ObjectUploadEntities objectUploadEntities)? loadSuccess,
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
    required TResult Function(_ObjectUploadStateInitial value) initial,
    required TResult Function(_ObjectUploadStateLoadFailure value) loadFailure,
    required TResult Function(ObjectUploadStateLoading value) loading,
    required TResult Function(_ObjectUploadStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObjectUploadStateInitial value)? initial,
    TResult? Function(_ObjectUploadStateLoadFailure value)? loadFailure,
    TResult? Function(ObjectUploadStateLoading value)? loading,
    TResult? Function(_ObjectUploadStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObjectUploadStateInitial value)? initial,
    TResult Function(_ObjectUploadStateLoadFailure value)? loadFailure,
    TResult Function(ObjectUploadStateLoading value)? loading,
    TResult Function(_ObjectUploadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ObjectUploadStateInitial implements ObjectUploadState {
  const factory _ObjectUploadStateInitial() = _$ObjectUploadStateInitialImpl;
}

/// @nodoc
abstract class _$$ObjectUploadStateLoadFailureImplCopyWith<$Res> {
  factory _$$ObjectUploadStateLoadFailureImplCopyWith(
          _$ObjectUploadStateLoadFailureImpl value,
          $Res Function(_$ObjectUploadStateLoadFailureImpl) then) =
      __$$ObjectUploadStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ObjectUploadStateLoadFailureImplCopyWithImpl<$Res>
    extends _$ObjectUploadStateCopyWithImpl<$Res,
        _$ObjectUploadStateLoadFailureImpl>
    implements _$$ObjectUploadStateLoadFailureImplCopyWith<$Res> {
  __$$ObjectUploadStateLoadFailureImplCopyWithImpl(
      _$ObjectUploadStateLoadFailureImpl _value,
      $Res Function(_$ObjectUploadStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ObjectUploadStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ObjectUploadStateLoadFailureImpl
    implements _ObjectUploadStateLoadFailure {
  const _$ObjectUploadStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ObjectUploadState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectUploadStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObjectUploadStateLoadFailureImplCopyWith<
          _$ObjectUploadStateLoadFailureImpl>
      get copyWith => __$$ObjectUploadStateLoadFailureImplCopyWithImpl<
          _$ObjectUploadStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ObjectUploadEntities objectUploadEntities)
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
    TResult? Function(ObjectUploadEntities objectUploadEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(ObjectUploadEntities objectUploadEntities)? loadSuccess,
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
    required TResult Function(_ObjectUploadStateInitial value) initial,
    required TResult Function(_ObjectUploadStateLoadFailure value) loadFailure,
    required TResult Function(ObjectUploadStateLoading value) loading,
    required TResult Function(_ObjectUploadStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObjectUploadStateInitial value)? initial,
    TResult? Function(_ObjectUploadStateLoadFailure value)? loadFailure,
    TResult? Function(ObjectUploadStateLoading value)? loading,
    TResult? Function(_ObjectUploadStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObjectUploadStateInitial value)? initial,
    TResult Function(_ObjectUploadStateLoadFailure value)? loadFailure,
    TResult Function(ObjectUploadStateLoading value)? loading,
    TResult Function(_ObjectUploadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _ObjectUploadStateLoadFailure implements ObjectUploadState {
  const factory _ObjectUploadStateLoadFailure(final Failure failure) =
      _$ObjectUploadStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ObjectUploadStateLoadFailureImplCopyWith<
          _$ObjectUploadStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ObjectUploadStateLoadingImplCopyWith<$Res> {
  factory _$$ObjectUploadStateLoadingImplCopyWith(
          _$ObjectUploadStateLoadingImpl value,
          $Res Function(_$ObjectUploadStateLoadingImpl) then) =
      __$$ObjectUploadStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObjectUploadStateLoadingImplCopyWithImpl<$Res>
    extends _$ObjectUploadStateCopyWithImpl<$Res,
        _$ObjectUploadStateLoadingImpl>
    implements _$$ObjectUploadStateLoadingImplCopyWith<$Res> {
  __$$ObjectUploadStateLoadingImplCopyWithImpl(
      _$ObjectUploadStateLoadingImpl _value,
      $Res Function(_$ObjectUploadStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ObjectUploadStateLoadingImpl implements ObjectUploadStateLoading {
  const _$ObjectUploadStateLoadingImpl();

  @override
  String toString() {
    return 'ObjectUploadState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectUploadStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ObjectUploadEntities objectUploadEntities)
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
    TResult? Function(ObjectUploadEntities objectUploadEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(ObjectUploadEntities objectUploadEntities)? loadSuccess,
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
    required TResult Function(_ObjectUploadStateInitial value) initial,
    required TResult Function(_ObjectUploadStateLoadFailure value) loadFailure,
    required TResult Function(ObjectUploadStateLoading value) loading,
    required TResult Function(_ObjectUploadStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObjectUploadStateInitial value)? initial,
    TResult? Function(_ObjectUploadStateLoadFailure value)? loadFailure,
    TResult? Function(ObjectUploadStateLoading value)? loading,
    TResult? Function(_ObjectUploadStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObjectUploadStateInitial value)? initial,
    TResult Function(_ObjectUploadStateLoadFailure value)? loadFailure,
    TResult Function(ObjectUploadStateLoading value)? loading,
    TResult Function(_ObjectUploadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ObjectUploadStateLoading implements ObjectUploadState {
  const factory ObjectUploadStateLoading() = _$ObjectUploadStateLoadingImpl;
}

/// @nodoc
abstract class _$$ObjectUploadStateLoadSuccessImplCopyWith<$Res> {
  factory _$$ObjectUploadStateLoadSuccessImplCopyWith(
          _$ObjectUploadStateLoadSuccessImpl value,
          $Res Function(_$ObjectUploadStateLoadSuccessImpl) then) =
      __$$ObjectUploadStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ObjectUploadEntities objectUploadEntities});
}

/// @nodoc
class __$$ObjectUploadStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$ObjectUploadStateCopyWithImpl<$Res,
        _$ObjectUploadStateLoadSuccessImpl>
    implements _$$ObjectUploadStateLoadSuccessImplCopyWith<$Res> {
  __$$ObjectUploadStateLoadSuccessImplCopyWithImpl(
      _$ObjectUploadStateLoadSuccessImpl _value,
      $Res Function(_$ObjectUploadStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectUploadEntities = null,
  }) {
    return _then(_$ObjectUploadStateLoadSuccessImpl(
      null == objectUploadEntities
          ? _value.objectUploadEntities
          : objectUploadEntities // ignore: cast_nullable_to_non_nullable
              as ObjectUploadEntities,
    ));
  }
}

/// @nodoc

class _$ObjectUploadStateLoadSuccessImpl
    implements _ObjectUploadStateLoadSuccess {
  const _$ObjectUploadStateLoadSuccessImpl(this.objectUploadEntities);

  @override
  final ObjectUploadEntities objectUploadEntities;

  @override
  String toString() {
    return 'ObjectUploadState.loadSuccess(objectUploadEntities: $objectUploadEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectUploadStateLoadSuccessImpl &&
            (identical(other.objectUploadEntities, objectUploadEntities) ||
                other.objectUploadEntities == objectUploadEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, objectUploadEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObjectUploadStateLoadSuccessImplCopyWith<
          _$ObjectUploadStateLoadSuccessImpl>
      get copyWith => __$$ObjectUploadStateLoadSuccessImplCopyWithImpl<
          _$ObjectUploadStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ObjectUploadEntities objectUploadEntities)
        loadSuccess,
  }) {
    return loadSuccess(objectUploadEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(ObjectUploadEntities objectUploadEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(objectUploadEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(ObjectUploadEntities objectUploadEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(objectUploadEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectUploadStateInitial value) initial,
    required TResult Function(_ObjectUploadStateLoadFailure value) loadFailure,
    required TResult Function(ObjectUploadStateLoading value) loading,
    required TResult Function(_ObjectUploadStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ObjectUploadStateInitial value)? initial,
    TResult? Function(_ObjectUploadStateLoadFailure value)? loadFailure,
    TResult? Function(ObjectUploadStateLoading value)? loading,
    TResult? Function(_ObjectUploadStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ObjectUploadStateInitial value)? initial,
    TResult Function(_ObjectUploadStateLoadFailure value)? loadFailure,
    TResult Function(ObjectUploadStateLoading value)? loading,
    TResult Function(_ObjectUploadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ObjectUploadStateLoadSuccess implements ObjectUploadState {
  const factory _ObjectUploadStateLoadSuccess(
          final ObjectUploadEntities objectUploadEntities) =
      _$ObjectUploadStateLoadSuccessImpl;

  ObjectUploadEntities get objectUploadEntities;
  @JsonKey(ignore: true)
  _$$ObjectUploadStateLoadSuccessImplCopyWith<
          _$ObjectUploadStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
