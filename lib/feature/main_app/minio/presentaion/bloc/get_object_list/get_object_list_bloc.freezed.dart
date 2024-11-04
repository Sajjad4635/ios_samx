// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_object_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetObjectListEvent {
  GetObjectListParam get getObjectListParam =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetObjectListParam getObjectListParam)
        getObjectListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetObjectListParam getObjectListParam)?
        getObjectListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetObjectListParam getObjectListParam)?
        getObjectListEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetObjectListEventCalled value)
        getObjectListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetObjectListEventCalled value)?
        getObjectListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetObjectListEventCalled value)? getObjectListEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetObjectListEventCopyWith<GetObjectListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetObjectListEventCopyWith<$Res> {
  factory $GetObjectListEventCopyWith(
          GetObjectListEvent value, $Res Function(GetObjectListEvent) then) =
      _$GetObjectListEventCopyWithImpl<$Res, GetObjectListEvent>;
  @useResult
  $Res call({GetObjectListParam getObjectListParam});
}

/// @nodoc
class _$GetObjectListEventCopyWithImpl<$Res, $Val extends GetObjectListEvent>
    implements $GetObjectListEventCopyWith<$Res> {
  _$GetObjectListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getObjectListParam = null,
  }) {
    return _then(_value.copyWith(
      getObjectListParam: null == getObjectListParam
          ? _value.getObjectListParam
          : getObjectListParam // ignore: cast_nullable_to_non_nullable
              as GetObjectListParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetObjectListEventCalledImplCopyWith<$Res>
    implements $GetObjectListEventCopyWith<$Res> {
  factory _$$GetObjectListEventCalledImplCopyWith(
          _$GetObjectListEventCalledImpl value,
          $Res Function(_$GetObjectListEventCalledImpl) then) =
      __$$GetObjectListEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetObjectListParam getObjectListParam});
}

/// @nodoc
class __$$GetObjectListEventCalledImplCopyWithImpl<$Res>
    extends _$GetObjectListEventCopyWithImpl<$Res,
        _$GetObjectListEventCalledImpl>
    implements _$$GetObjectListEventCalledImplCopyWith<$Res> {
  __$$GetObjectListEventCalledImplCopyWithImpl(
      _$GetObjectListEventCalledImpl _value,
      $Res Function(_$GetObjectListEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getObjectListParam = null,
  }) {
    return _then(_$GetObjectListEventCalledImpl(
      null == getObjectListParam
          ? _value.getObjectListParam
          : getObjectListParam // ignore: cast_nullable_to_non_nullable
              as GetObjectListParam,
    ));
  }
}

/// @nodoc

class _$GetObjectListEventCalledImpl implements _GetObjectListEventCalled {
  const _$GetObjectListEventCalledImpl(this.getObjectListParam);

  @override
  final GetObjectListParam getObjectListParam;

  @override
  String toString() {
    return 'GetObjectListEvent.getObjectListEventCalled(getObjectListParam: $getObjectListParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetObjectListEventCalledImpl &&
            (identical(other.getObjectListParam, getObjectListParam) ||
                other.getObjectListParam == getObjectListParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getObjectListParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetObjectListEventCalledImplCopyWith<_$GetObjectListEventCalledImpl>
      get copyWith => __$$GetObjectListEventCalledImplCopyWithImpl<
          _$GetObjectListEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetObjectListParam getObjectListParam)
        getObjectListEventCalled,
  }) {
    return getObjectListEventCalled(getObjectListParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetObjectListParam getObjectListParam)?
        getObjectListEventCalled,
  }) {
    return getObjectListEventCalled?.call(getObjectListParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetObjectListParam getObjectListParam)?
        getObjectListEventCalled,
    required TResult orElse(),
  }) {
    if (getObjectListEventCalled != null) {
      return getObjectListEventCalled(getObjectListParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetObjectListEventCalled value)
        getObjectListEventCalled,
  }) {
    return getObjectListEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetObjectListEventCalled value)?
        getObjectListEventCalled,
  }) {
    return getObjectListEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetObjectListEventCalled value)? getObjectListEventCalled,
    required TResult orElse(),
  }) {
    if (getObjectListEventCalled != null) {
      return getObjectListEventCalled(this);
    }
    return orElse();
  }
}

abstract class _GetObjectListEventCalled implements GetObjectListEvent {
  const factory _GetObjectListEventCalled(
          final GetObjectListParam getObjectListParam) =
      _$GetObjectListEventCalledImpl;

  @override
  GetObjectListParam get getObjectListParam;
  @override
  @JsonKey(ignore: true)
  _$$GetObjectListEventCalledImplCopyWith<_$GetObjectListEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetObjectListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetObjectListEntities getObjectListEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetObjectListEntities getObjectListEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetObjectListEntities getObjectListEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetObjectListStateInitial value) initial,
    required TResult Function(_GetObjectListStateLoadFailure value) loadFailure,
    required TResult Function(GetObjectListStateLoading value) loading,
    required TResult Function(_GetObjectListStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetObjectListStateInitial value)? initial,
    TResult? Function(_GetObjectListStateLoadFailure value)? loadFailure,
    TResult? Function(GetObjectListStateLoading value)? loading,
    TResult? Function(_GetObjectListStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetObjectListStateInitial value)? initial,
    TResult Function(_GetObjectListStateLoadFailure value)? loadFailure,
    TResult Function(GetObjectListStateLoading value)? loading,
    TResult Function(_GetObjectListStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetObjectListStateCopyWith<$Res> {
  factory $GetObjectListStateCopyWith(
          GetObjectListState value, $Res Function(GetObjectListState) then) =
      _$GetObjectListStateCopyWithImpl<$Res, GetObjectListState>;
}

/// @nodoc
class _$GetObjectListStateCopyWithImpl<$Res, $Val extends GetObjectListState>
    implements $GetObjectListStateCopyWith<$Res> {
  _$GetObjectListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetObjectListStateInitialImplCopyWith<$Res> {
  factory _$$GetObjectListStateInitialImplCopyWith(
          _$GetObjectListStateInitialImpl value,
          $Res Function(_$GetObjectListStateInitialImpl) then) =
      __$$GetObjectListStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetObjectListStateInitialImplCopyWithImpl<$Res>
    extends _$GetObjectListStateCopyWithImpl<$Res,
        _$GetObjectListStateInitialImpl>
    implements _$$GetObjectListStateInitialImplCopyWith<$Res> {
  __$$GetObjectListStateInitialImplCopyWithImpl(
      _$GetObjectListStateInitialImpl _value,
      $Res Function(_$GetObjectListStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetObjectListStateInitialImpl implements _GetObjectListStateInitial {
  const _$GetObjectListStateInitialImpl();

  @override
  String toString() {
    return 'GetObjectListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetObjectListStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetObjectListEntities getObjectListEntities)
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
    TResult? Function(GetObjectListEntities getObjectListEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetObjectListEntities getObjectListEntities)? loadSuccess,
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
    required TResult Function(_GetObjectListStateInitial value) initial,
    required TResult Function(_GetObjectListStateLoadFailure value) loadFailure,
    required TResult Function(GetObjectListStateLoading value) loading,
    required TResult Function(_GetObjectListStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetObjectListStateInitial value)? initial,
    TResult? Function(_GetObjectListStateLoadFailure value)? loadFailure,
    TResult? Function(GetObjectListStateLoading value)? loading,
    TResult? Function(_GetObjectListStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetObjectListStateInitial value)? initial,
    TResult Function(_GetObjectListStateLoadFailure value)? loadFailure,
    TResult Function(GetObjectListStateLoading value)? loading,
    TResult Function(_GetObjectListStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetObjectListStateInitial implements GetObjectListState {
  const factory _GetObjectListStateInitial() = _$GetObjectListStateInitialImpl;
}

/// @nodoc
abstract class _$$GetObjectListStateLoadFailureImplCopyWith<$Res> {
  factory _$$GetObjectListStateLoadFailureImplCopyWith(
          _$GetObjectListStateLoadFailureImpl value,
          $Res Function(_$GetObjectListStateLoadFailureImpl) then) =
      __$$GetObjectListStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$GetObjectListStateLoadFailureImplCopyWithImpl<$Res>
    extends _$GetObjectListStateCopyWithImpl<$Res,
        _$GetObjectListStateLoadFailureImpl>
    implements _$$GetObjectListStateLoadFailureImplCopyWith<$Res> {
  __$$GetObjectListStateLoadFailureImplCopyWithImpl(
      _$GetObjectListStateLoadFailureImpl _value,
      $Res Function(_$GetObjectListStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GetObjectListStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$GetObjectListStateLoadFailureImpl
    implements _GetObjectListStateLoadFailure {
  const _$GetObjectListStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetObjectListState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetObjectListStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetObjectListStateLoadFailureImplCopyWith<
          _$GetObjectListStateLoadFailureImpl>
      get copyWith => __$$GetObjectListStateLoadFailureImplCopyWithImpl<
          _$GetObjectListStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetObjectListEntities getObjectListEntities)
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
    TResult? Function(GetObjectListEntities getObjectListEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetObjectListEntities getObjectListEntities)? loadSuccess,
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
    required TResult Function(_GetObjectListStateInitial value) initial,
    required TResult Function(_GetObjectListStateLoadFailure value) loadFailure,
    required TResult Function(GetObjectListStateLoading value) loading,
    required TResult Function(_GetObjectListStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetObjectListStateInitial value)? initial,
    TResult? Function(_GetObjectListStateLoadFailure value)? loadFailure,
    TResult? Function(GetObjectListStateLoading value)? loading,
    TResult? Function(_GetObjectListStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetObjectListStateInitial value)? initial,
    TResult Function(_GetObjectListStateLoadFailure value)? loadFailure,
    TResult Function(GetObjectListStateLoading value)? loading,
    TResult Function(_GetObjectListStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _GetObjectListStateLoadFailure implements GetObjectListState {
  const factory _GetObjectListStateLoadFailure(final Failure failure) =
      _$GetObjectListStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$GetObjectListStateLoadFailureImplCopyWith<
          _$GetObjectListStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetObjectListStateLoadingImplCopyWith<$Res> {
  factory _$$GetObjectListStateLoadingImplCopyWith(
          _$GetObjectListStateLoadingImpl value,
          $Res Function(_$GetObjectListStateLoadingImpl) then) =
      __$$GetObjectListStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetObjectListStateLoadingImplCopyWithImpl<$Res>
    extends _$GetObjectListStateCopyWithImpl<$Res,
        _$GetObjectListStateLoadingImpl>
    implements _$$GetObjectListStateLoadingImplCopyWith<$Res> {
  __$$GetObjectListStateLoadingImplCopyWithImpl(
      _$GetObjectListStateLoadingImpl _value,
      $Res Function(_$GetObjectListStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetObjectListStateLoadingImpl implements GetObjectListStateLoading {
  const _$GetObjectListStateLoadingImpl();

  @override
  String toString() {
    return 'GetObjectListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetObjectListStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetObjectListEntities getObjectListEntities)
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
    TResult? Function(GetObjectListEntities getObjectListEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetObjectListEntities getObjectListEntities)? loadSuccess,
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
    required TResult Function(_GetObjectListStateInitial value) initial,
    required TResult Function(_GetObjectListStateLoadFailure value) loadFailure,
    required TResult Function(GetObjectListStateLoading value) loading,
    required TResult Function(_GetObjectListStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetObjectListStateInitial value)? initial,
    TResult? Function(_GetObjectListStateLoadFailure value)? loadFailure,
    TResult? Function(GetObjectListStateLoading value)? loading,
    TResult? Function(_GetObjectListStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetObjectListStateInitial value)? initial,
    TResult Function(_GetObjectListStateLoadFailure value)? loadFailure,
    TResult Function(GetObjectListStateLoading value)? loading,
    TResult Function(_GetObjectListStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetObjectListStateLoading implements GetObjectListState {
  const factory GetObjectListStateLoading() = _$GetObjectListStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetObjectListStateLoadSuccessImplCopyWith<$Res> {
  factory _$$GetObjectListStateLoadSuccessImplCopyWith(
          _$GetObjectListStateLoadSuccessImpl value,
          $Res Function(_$GetObjectListStateLoadSuccessImpl) then) =
      __$$GetObjectListStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetObjectListEntities getObjectListEntities});
}

/// @nodoc
class __$$GetObjectListStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$GetObjectListStateCopyWithImpl<$Res,
        _$GetObjectListStateLoadSuccessImpl>
    implements _$$GetObjectListStateLoadSuccessImplCopyWith<$Res> {
  __$$GetObjectListStateLoadSuccessImplCopyWithImpl(
      _$GetObjectListStateLoadSuccessImpl _value,
      $Res Function(_$GetObjectListStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getObjectListEntities = null,
  }) {
    return _then(_$GetObjectListStateLoadSuccessImpl(
      null == getObjectListEntities
          ? _value.getObjectListEntities
          : getObjectListEntities // ignore: cast_nullable_to_non_nullable
              as GetObjectListEntities,
    ));
  }
}

/// @nodoc

class _$GetObjectListStateLoadSuccessImpl
    implements _GetObjectListStateLoadSuccess {
  const _$GetObjectListStateLoadSuccessImpl(this.getObjectListEntities);

  @override
  final GetObjectListEntities getObjectListEntities;

  @override
  String toString() {
    return 'GetObjectListState.loadSuccess(getObjectListEntities: $getObjectListEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetObjectListStateLoadSuccessImpl &&
            (identical(other.getObjectListEntities, getObjectListEntities) ||
                other.getObjectListEntities == getObjectListEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getObjectListEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetObjectListStateLoadSuccessImplCopyWith<
          _$GetObjectListStateLoadSuccessImpl>
      get copyWith => __$$GetObjectListStateLoadSuccessImplCopyWithImpl<
          _$GetObjectListStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetObjectListEntities getObjectListEntities)
        loadSuccess,
  }) {
    return loadSuccess(getObjectListEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetObjectListEntities getObjectListEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(getObjectListEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetObjectListEntities getObjectListEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(getObjectListEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetObjectListStateInitial value) initial,
    required TResult Function(_GetObjectListStateLoadFailure value) loadFailure,
    required TResult Function(GetObjectListStateLoading value) loading,
    required TResult Function(_GetObjectListStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetObjectListStateInitial value)? initial,
    TResult? Function(_GetObjectListStateLoadFailure value)? loadFailure,
    TResult? Function(GetObjectListStateLoading value)? loading,
    TResult? Function(_GetObjectListStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetObjectListStateInitial value)? initial,
    TResult Function(_GetObjectListStateLoadFailure value)? loadFailure,
    TResult Function(GetObjectListStateLoading value)? loading,
    TResult Function(_GetObjectListStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetObjectListStateLoadSuccess implements GetObjectListState {
  const factory _GetObjectListStateLoadSuccess(
          final GetObjectListEntities getObjectListEntities) =
      _$GetObjectListStateLoadSuccessImpl;

  GetObjectListEntities get getObjectListEntities;
  @JsonKey(ignore: true)
  _$$GetObjectListStateLoadSuccessImplCopyWith<
          _$GetObjectListStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
