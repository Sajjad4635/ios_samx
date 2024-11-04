// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_bucket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetBucketEvent {
  GetBucketParam get getBucketParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetBucketParam getBucketParam)
        getBucketEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetBucketParam getBucketParam)? getBucketEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetBucketParam getBucketParam)? getBucketEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBucketEventCalled value) getBucketEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBucketEventCalled value)? getBucketEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBucketEventCalled value)? getBucketEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetBucketEventCopyWith<GetBucketEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBucketEventCopyWith<$Res> {
  factory $GetBucketEventCopyWith(
          GetBucketEvent value, $Res Function(GetBucketEvent) then) =
      _$GetBucketEventCopyWithImpl<$Res, GetBucketEvent>;
  @useResult
  $Res call({GetBucketParam getBucketParam});
}

/// @nodoc
class _$GetBucketEventCopyWithImpl<$Res, $Val extends GetBucketEvent>
    implements $GetBucketEventCopyWith<$Res> {
  _$GetBucketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getBucketParam = null,
  }) {
    return _then(_value.copyWith(
      getBucketParam: null == getBucketParam
          ? _value.getBucketParam
          : getBucketParam // ignore: cast_nullable_to_non_nullable
              as GetBucketParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetBucketEventCalledImplCopyWith<$Res>
    implements $GetBucketEventCopyWith<$Res> {
  factory _$$GetBucketEventCalledImplCopyWith(_$GetBucketEventCalledImpl value,
          $Res Function(_$GetBucketEventCalledImpl) then) =
      __$$GetBucketEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetBucketParam getBucketParam});
}

/// @nodoc
class __$$GetBucketEventCalledImplCopyWithImpl<$Res>
    extends _$GetBucketEventCopyWithImpl<$Res, _$GetBucketEventCalledImpl>
    implements _$$GetBucketEventCalledImplCopyWith<$Res> {
  __$$GetBucketEventCalledImplCopyWithImpl(_$GetBucketEventCalledImpl _value,
      $Res Function(_$GetBucketEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getBucketParam = null,
  }) {
    return _then(_$GetBucketEventCalledImpl(
      null == getBucketParam
          ? _value.getBucketParam
          : getBucketParam // ignore: cast_nullable_to_non_nullable
              as GetBucketParam,
    ));
  }
}

/// @nodoc

class _$GetBucketEventCalledImpl implements _GetBucketEventCalled {
  const _$GetBucketEventCalledImpl(this.getBucketParam);

  @override
  final GetBucketParam getBucketParam;

  @override
  String toString() {
    return 'GetBucketEvent.getBucketEventCalled(getBucketParam: $getBucketParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBucketEventCalledImpl &&
            (identical(other.getBucketParam, getBucketParam) ||
                other.getBucketParam == getBucketParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getBucketParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBucketEventCalledImplCopyWith<_$GetBucketEventCalledImpl>
      get copyWith =>
          __$$GetBucketEventCalledImplCopyWithImpl<_$GetBucketEventCalledImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetBucketParam getBucketParam)
        getBucketEventCalled,
  }) {
    return getBucketEventCalled(getBucketParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetBucketParam getBucketParam)? getBucketEventCalled,
  }) {
    return getBucketEventCalled?.call(getBucketParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetBucketParam getBucketParam)? getBucketEventCalled,
    required TResult orElse(),
  }) {
    if (getBucketEventCalled != null) {
      return getBucketEventCalled(getBucketParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBucketEventCalled value) getBucketEventCalled,
  }) {
    return getBucketEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBucketEventCalled value)? getBucketEventCalled,
  }) {
    return getBucketEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBucketEventCalled value)? getBucketEventCalled,
    required TResult orElse(),
  }) {
    if (getBucketEventCalled != null) {
      return getBucketEventCalled(this);
    }
    return orElse();
  }
}

abstract class _GetBucketEventCalled implements GetBucketEvent {
  const factory _GetBucketEventCalled(final GetBucketParam getBucketParam) =
      _$GetBucketEventCalledImpl;

  @override
  GetBucketParam get getBucketParam;
  @override
  @JsonKey(ignore: true)
  _$$GetBucketEventCalledImplCopyWith<_$GetBucketEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetBucketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetBucketEntities getBucketEntities) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetBucketEntities getBucketEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetBucketEntities getBucketEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBucketStateInitial value) initial,
    required TResult Function(_GetBucketStateLoadFailure value) loadFailure,
    required TResult Function(GetBucketStateLoading value) loading,
    required TResult Function(_GetBucketStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBucketStateInitial value)? initial,
    TResult? Function(_GetBucketStateLoadFailure value)? loadFailure,
    TResult? Function(GetBucketStateLoading value)? loading,
    TResult? Function(_GetBucketStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBucketStateInitial value)? initial,
    TResult Function(_GetBucketStateLoadFailure value)? loadFailure,
    TResult Function(GetBucketStateLoading value)? loading,
    TResult Function(_GetBucketStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBucketStateCopyWith<$Res> {
  factory $GetBucketStateCopyWith(
          GetBucketState value, $Res Function(GetBucketState) then) =
      _$GetBucketStateCopyWithImpl<$Res, GetBucketState>;
}

/// @nodoc
class _$GetBucketStateCopyWithImpl<$Res, $Val extends GetBucketState>
    implements $GetBucketStateCopyWith<$Res> {
  _$GetBucketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetBucketStateInitialImplCopyWith<$Res> {
  factory _$$GetBucketStateInitialImplCopyWith(
          _$GetBucketStateInitialImpl value,
          $Res Function(_$GetBucketStateInitialImpl) then) =
      __$$GetBucketStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBucketStateInitialImplCopyWithImpl<$Res>
    extends _$GetBucketStateCopyWithImpl<$Res, _$GetBucketStateInitialImpl>
    implements _$$GetBucketStateInitialImplCopyWith<$Res> {
  __$$GetBucketStateInitialImplCopyWithImpl(_$GetBucketStateInitialImpl _value,
      $Res Function(_$GetBucketStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBucketStateInitialImpl implements _GetBucketStateInitial {
  const _$GetBucketStateInitialImpl();

  @override
  String toString() {
    return 'GetBucketState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBucketStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetBucketEntities getBucketEntities) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetBucketEntities getBucketEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetBucketEntities getBucketEntities)? loadSuccess,
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
    required TResult Function(_GetBucketStateInitial value) initial,
    required TResult Function(_GetBucketStateLoadFailure value) loadFailure,
    required TResult Function(GetBucketStateLoading value) loading,
    required TResult Function(_GetBucketStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBucketStateInitial value)? initial,
    TResult? Function(_GetBucketStateLoadFailure value)? loadFailure,
    TResult? Function(GetBucketStateLoading value)? loading,
    TResult? Function(_GetBucketStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBucketStateInitial value)? initial,
    TResult Function(_GetBucketStateLoadFailure value)? loadFailure,
    TResult Function(GetBucketStateLoading value)? loading,
    TResult Function(_GetBucketStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetBucketStateInitial implements GetBucketState {
  const factory _GetBucketStateInitial() = _$GetBucketStateInitialImpl;
}

/// @nodoc
abstract class _$$GetBucketStateLoadFailureImplCopyWith<$Res> {
  factory _$$GetBucketStateLoadFailureImplCopyWith(
          _$GetBucketStateLoadFailureImpl value,
          $Res Function(_$GetBucketStateLoadFailureImpl) then) =
      __$$GetBucketStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$GetBucketStateLoadFailureImplCopyWithImpl<$Res>
    extends _$GetBucketStateCopyWithImpl<$Res, _$GetBucketStateLoadFailureImpl>
    implements _$$GetBucketStateLoadFailureImplCopyWith<$Res> {
  __$$GetBucketStateLoadFailureImplCopyWithImpl(
      _$GetBucketStateLoadFailureImpl _value,
      $Res Function(_$GetBucketStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GetBucketStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$GetBucketStateLoadFailureImpl implements _GetBucketStateLoadFailure {
  const _$GetBucketStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetBucketState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBucketStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBucketStateLoadFailureImplCopyWith<_$GetBucketStateLoadFailureImpl>
      get copyWith => __$$GetBucketStateLoadFailureImplCopyWithImpl<
          _$GetBucketStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetBucketEntities getBucketEntities) loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetBucketEntities getBucketEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetBucketEntities getBucketEntities)? loadSuccess,
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
    required TResult Function(_GetBucketStateInitial value) initial,
    required TResult Function(_GetBucketStateLoadFailure value) loadFailure,
    required TResult Function(GetBucketStateLoading value) loading,
    required TResult Function(_GetBucketStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBucketStateInitial value)? initial,
    TResult? Function(_GetBucketStateLoadFailure value)? loadFailure,
    TResult? Function(GetBucketStateLoading value)? loading,
    TResult? Function(_GetBucketStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBucketStateInitial value)? initial,
    TResult Function(_GetBucketStateLoadFailure value)? loadFailure,
    TResult Function(GetBucketStateLoading value)? loading,
    TResult Function(_GetBucketStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _GetBucketStateLoadFailure implements GetBucketState {
  const factory _GetBucketStateLoadFailure(final Failure failure) =
      _$GetBucketStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$GetBucketStateLoadFailureImplCopyWith<_$GetBucketStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBucketStateLoadingImplCopyWith<$Res> {
  factory _$$GetBucketStateLoadingImplCopyWith(
          _$GetBucketStateLoadingImpl value,
          $Res Function(_$GetBucketStateLoadingImpl) then) =
      __$$GetBucketStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBucketStateLoadingImplCopyWithImpl<$Res>
    extends _$GetBucketStateCopyWithImpl<$Res, _$GetBucketStateLoadingImpl>
    implements _$$GetBucketStateLoadingImplCopyWith<$Res> {
  __$$GetBucketStateLoadingImplCopyWithImpl(_$GetBucketStateLoadingImpl _value,
      $Res Function(_$GetBucketStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBucketStateLoadingImpl implements GetBucketStateLoading {
  const _$GetBucketStateLoadingImpl();

  @override
  String toString() {
    return 'GetBucketState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBucketStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetBucketEntities getBucketEntities) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetBucketEntities getBucketEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetBucketEntities getBucketEntities)? loadSuccess,
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
    required TResult Function(_GetBucketStateInitial value) initial,
    required TResult Function(_GetBucketStateLoadFailure value) loadFailure,
    required TResult Function(GetBucketStateLoading value) loading,
    required TResult Function(_GetBucketStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBucketStateInitial value)? initial,
    TResult? Function(_GetBucketStateLoadFailure value)? loadFailure,
    TResult? Function(GetBucketStateLoading value)? loading,
    TResult? Function(_GetBucketStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBucketStateInitial value)? initial,
    TResult Function(_GetBucketStateLoadFailure value)? loadFailure,
    TResult Function(GetBucketStateLoading value)? loading,
    TResult Function(_GetBucketStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetBucketStateLoading implements GetBucketState {
  const factory GetBucketStateLoading() = _$GetBucketStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetBucketStateLoadSuccessImplCopyWith<$Res> {
  factory _$$GetBucketStateLoadSuccessImplCopyWith(
          _$GetBucketStateLoadSuccessImpl value,
          $Res Function(_$GetBucketStateLoadSuccessImpl) then) =
      __$$GetBucketStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetBucketEntities getBucketEntities});
}

/// @nodoc
class __$$GetBucketStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$GetBucketStateCopyWithImpl<$Res, _$GetBucketStateLoadSuccessImpl>
    implements _$$GetBucketStateLoadSuccessImplCopyWith<$Res> {
  __$$GetBucketStateLoadSuccessImplCopyWithImpl(
      _$GetBucketStateLoadSuccessImpl _value,
      $Res Function(_$GetBucketStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getBucketEntities = null,
  }) {
    return _then(_$GetBucketStateLoadSuccessImpl(
      null == getBucketEntities
          ? _value.getBucketEntities
          : getBucketEntities // ignore: cast_nullable_to_non_nullable
              as GetBucketEntities,
    ));
  }
}

/// @nodoc

class _$GetBucketStateLoadSuccessImpl implements _GetBucketStateLoadSuccess {
  const _$GetBucketStateLoadSuccessImpl(this.getBucketEntities);

  @override
  final GetBucketEntities getBucketEntities;

  @override
  String toString() {
    return 'GetBucketState.loadSuccess(getBucketEntities: $getBucketEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBucketStateLoadSuccessImpl &&
            (identical(other.getBucketEntities, getBucketEntities) ||
                other.getBucketEntities == getBucketEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getBucketEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBucketStateLoadSuccessImplCopyWith<_$GetBucketStateLoadSuccessImpl>
      get copyWith => __$$GetBucketStateLoadSuccessImplCopyWithImpl<
          _$GetBucketStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetBucketEntities getBucketEntities) loadSuccess,
  }) {
    return loadSuccess(getBucketEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetBucketEntities getBucketEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(getBucketEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetBucketEntities getBucketEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(getBucketEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBucketStateInitial value) initial,
    required TResult Function(_GetBucketStateLoadFailure value) loadFailure,
    required TResult Function(GetBucketStateLoading value) loading,
    required TResult Function(_GetBucketStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBucketStateInitial value)? initial,
    TResult? Function(_GetBucketStateLoadFailure value)? loadFailure,
    TResult? Function(GetBucketStateLoading value)? loading,
    TResult? Function(_GetBucketStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBucketStateInitial value)? initial,
    TResult Function(_GetBucketStateLoadFailure value)? loadFailure,
    TResult Function(GetBucketStateLoading value)? loading,
    TResult Function(_GetBucketStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetBucketStateLoadSuccess implements GetBucketState {
  const factory _GetBucketStateLoadSuccess(
          final GetBucketEntities getBucketEntities) =
      _$GetBucketStateLoadSuccessImpl;

  GetBucketEntities get getBucketEntities;
  @JsonKey(ignore: true)
  _$$GetBucketStateLoadSuccessImplCopyWith<_$GetBucketStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
