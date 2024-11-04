// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_account_iban_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAccountIbanEvent {
  GetAccountIbanParam get getAccountIbanParam =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAccountIbanParam getAccountIbanParam)
        getAccountIbanEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAccountIbanParam getAccountIbanParam)?
        getAccountIbanEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAccountIbanParam getAccountIbanParam)?
        getAccountIbanEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccountIbanEventCalled value)
        getAccountIbanEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountIbanEventCalled value)?
        getAccountIbanEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountIbanEventCalled value)?
        getAccountIbanEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetAccountIbanEventCopyWith<GetAccountIbanEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAccountIbanEventCopyWith<$Res> {
  factory $GetAccountIbanEventCopyWith(
          GetAccountIbanEvent value, $Res Function(GetAccountIbanEvent) then) =
      _$GetAccountIbanEventCopyWithImpl<$Res, GetAccountIbanEvent>;
  @useResult
  $Res call({GetAccountIbanParam getAccountIbanParam});
}

/// @nodoc
class _$GetAccountIbanEventCopyWithImpl<$Res, $Val extends GetAccountIbanEvent>
    implements $GetAccountIbanEventCopyWith<$Res> {
  _$GetAccountIbanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAccountIbanParam = null,
  }) {
    return _then(_value.copyWith(
      getAccountIbanParam: null == getAccountIbanParam
          ? _value.getAccountIbanParam
          : getAccountIbanParam // ignore: cast_nullable_to_non_nullable
              as GetAccountIbanParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAccountIbanEventCalledImplCopyWith<$Res>
    implements $GetAccountIbanEventCopyWith<$Res> {
  factory _$$GetAccountIbanEventCalledImplCopyWith(
          _$GetAccountIbanEventCalledImpl value,
          $Res Function(_$GetAccountIbanEventCalledImpl) then) =
      __$$GetAccountIbanEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetAccountIbanParam getAccountIbanParam});
}

/// @nodoc
class __$$GetAccountIbanEventCalledImplCopyWithImpl<$Res>
    extends _$GetAccountIbanEventCopyWithImpl<$Res,
        _$GetAccountIbanEventCalledImpl>
    implements _$$GetAccountIbanEventCalledImplCopyWith<$Res> {
  __$$GetAccountIbanEventCalledImplCopyWithImpl(
      _$GetAccountIbanEventCalledImpl _value,
      $Res Function(_$GetAccountIbanEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAccountIbanParam = null,
  }) {
    return _then(_$GetAccountIbanEventCalledImpl(
      getAccountIbanParam: null == getAccountIbanParam
          ? _value.getAccountIbanParam
          : getAccountIbanParam // ignore: cast_nullable_to_non_nullable
              as GetAccountIbanParam,
    ));
  }
}

/// @nodoc

class _$GetAccountIbanEventCalledImpl implements _GetAccountIbanEventCalled {
  const _$GetAccountIbanEventCalledImpl({required this.getAccountIbanParam});

  @override
  final GetAccountIbanParam getAccountIbanParam;

  @override
  String toString() {
    return 'GetAccountIbanEvent.getAccountIbanEventCalled(getAccountIbanParam: $getAccountIbanParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountIbanEventCalledImpl &&
            (identical(other.getAccountIbanParam, getAccountIbanParam) ||
                other.getAccountIbanParam == getAccountIbanParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getAccountIbanParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccountIbanEventCalledImplCopyWith<_$GetAccountIbanEventCalledImpl>
      get copyWith => __$$GetAccountIbanEventCalledImplCopyWithImpl<
          _$GetAccountIbanEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetAccountIbanParam getAccountIbanParam)
        getAccountIbanEventCalled,
  }) {
    return getAccountIbanEventCalled(getAccountIbanParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetAccountIbanParam getAccountIbanParam)?
        getAccountIbanEventCalled,
  }) {
    return getAccountIbanEventCalled?.call(getAccountIbanParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetAccountIbanParam getAccountIbanParam)?
        getAccountIbanEventCalled,
    required TResult orElse(),
  }) {
    if (getAccountIbanEventCalled != null) {
      return getAccountIbanEventCalled(getAccountIbanParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccountIbanEventCalled value)
        getAccountIbanEventCalled,
  }) {
    return getAccountIbanEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountIbanEventCalled value)?
        getAccountIbanEventCalled,
  }) {
    return getAccountIbanEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountIbanEventCalled value)?
        getAccountIbanEventCalled,
    required TResult orElse(),
  }) {
    if (getAccountIbanEventCalled != null) {
      return getAccountIbanEventCalled(this);
    }
    return orElse();
  }
}

abstract class _GetAccountIbanEventCalled implements GetAccountIbanEvent {
  const factory _GetAccountIbanEventCalled(
          {required final GetAccountIbanParam getAccountIbanParam}) =
      _$GetAccountIbanEventCalledImpl;

  @override
  GetAccountIbanParam get getAccountIbanParam;
  @override
  @JsonKey(ignore: true)
  _$$GetAccountIbanEventCalledImplCopyWith<_$GetAccountIbanEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetAccountIbanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetAccountIbanEntities getAccountIbanEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetAccountIbanEntities getAccountIbanEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetAccountIbanEntities getAccountIbanEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccountIbanStateInitial value) initial,
    required TResult Function(_GetAccountIbanStateLoadFailure value)
        loadFailure,
    required TResult Function(GetAccountIbanStateLoading value) loading,
    required TResult Function(_GetAccountIbanStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountIbanStateInitial value)? initial,
    TResult? Function(_GetAccountIbanStateLoadFailure value)? loadFailure,
    TResult? Function(GetAccountIbanStateLoading value)? loading,
    TResult? Function(_GetAccountIbanStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountIbanStateInitial value)? initial,
    TResult Function(_GetAccountIbanStateLoadFailure value)? loadFailure,
    TResult Function(GetAccountIbanStateLoading value)? loading,
    TResult Function(_GetAccountIbanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAccountIbanStateCopyWith<$Res> {
  factory $GetAccountIbanStateCopyWith(
          GetAccountIbanState value, $Res Function(GetAccountIbanState) then) =
      _$GetAccountIbanStateCopyWithImpl<$Res, GetAccountIbanState>;
}

/// @nodoc
class _$GetAccountIbanStateCopyWithImpl<$Res, $Val extends GetAccountIbanState>
    implements $GetAccountIbanStateCopyWith<$Res> {
  _$GetAccountIbanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAccountIbanStateInitialImplCopyWith<$Res> {
  factory _$$GetAccountIbanStateInitialImplCopyWith(
          _$GetAccountIbanStateInitialImpl value,
          $Res Function(_$GetAccountIbanStateInitialImpl) then) =
      __$$GetAccountIbanStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAccountIbanStateInitialImplCopyWithImpl<$Res>
    extends _$GetAccountIbanStateCopyWithImpl<$Res,
        _$GetAccountIbanStateInitialImpl>
    implements _$$GetAccountIbanStateInitialImplCopyWith<$Res> {
  __$$GetAccountIbanStateInitialImplCopyWithImpl(
      _$GetAccountIbanStateInitialImpl _value,
      $Res Function(_$GetAccountIbanStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAccountIbanStateInitialImpl implements _GetAccountIbanStateInitial {
  const _$GetAccountIbanStateInitialImpl();

  @override
  String toString() {
    return 'GetAccountIbanState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountIbanStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetAccountIbanEntities getAccountIbanEntities)
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
    TResult? Function(GetAccountIbanEntities getAccountIbanEntities)?
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
    TResult Function(GetAccountIbanEntities getAccountIbanEntities)?
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
    required TResult Function(_GetAccountIbanStateInitial value) initial,
    required TResult Function(_GetAccountIbanStateLoadFailure value)
        loadFailure,
    required TResult Function(GetAccountIbanStateLoading value) loading,
    required TResult Function(_GetAccountIbanStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountIbanStateInitial value)? initial,
    TResult? Function(_GetAccountIbanStateLoadFailure value)? loadFailure,
    TResult? Function(GetAccountIbanStateLoading value)? loading,
    TResult? Function(_GetAccountIbanStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountIbanStateInitial value)? initial,
    TResult Function(_GetAccountIbanStateLoadFailure value)? loadFailure,
    TResult Function(GetAccountIbanStateLoading value)? loading,
    TResult Function(_GetAccountIbanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetAccountIbanStateInitial implements GetAccountIbanState {
  const factory _GetAccountIbanStateInitial() =
      _$GetAccountIbanStateInitialImpl;
}

/// @nodoc
abstract class _$$GetAccountIbanStateLoadFailureImplCopyWith<$Res> {
  factory _$$GetAccountIbanStateLoadFailureImplCopyWith(
          _$GetAccountIbanStateLoadFailureImpl value,
          $Res Function(_$GetAccountIbanStateLoadFailureImpl) then) =
      __$$GetAccountIbanStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$GetAccountIbanStateLoadFailureImplCopyWithImpl<$Res>
    extends _$GetAccountIbanStateCopyWithImpl<$Res,
        _$GetAccountIbanStateLoadFailureImpl>
    implements _$$GetAccountIbanStateLoadFailureImplCopyWith<$Res> {
  __$$GetAccountIbanStateLoadFailureImplCopyWithImpl(
      _$GetAccountIbanStateLoadFailureImpl _value,
      $Res Function(_$GetAccountIbanStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GetAccountIbanStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$GetAccountIbanStateLoadFailureImpl
    implements _GetAccountIbanStateLoadFailure {
  const _$GetAccountIbanStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetAccountIbanState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountIbanStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccountIbanStateLoadFailureImplCopyWith<
          _$GetAccountIbanStateLoadFailureImpl>
      get copyWith => __$$GetAccountIbanStateLoadFailureImplCopyWithImpl<
          _$GetAccountIbanStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetAccountIbanEntities getAccountIbanEntities)
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
    TResult? Function(GetAccountIbanEntities getAccountIbanEntities)?
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
    TResult Function(GetAccountIbanEntities getAccountIbanEntities)?
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
    required TResult Function(_GetAccountIbanStateInitial value) initial,
    required TResult Function(_GetAccountIbanStateLoadFailure value)
        loadFailure,
    required TResult Function(GetAccountIbanStateLoading value) loading,
    required TResult Function(_GetAccountIbanStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountIbanStateInitial value)? initial,
    TResult? Function(_GetAccountIbanStateLoadFailure value)? loadFailure,
    TResult? Function(GetAccountIbanStateLoading value)? loading,
    TResult? Function(_GetAccountIbanStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountIbanStateInitial value)? initial,
    TResult Function(_GetAccountIbanStateLoadFailure value)? loadFailure,
    TResult Function(GetAccountIbanStateLoading value)? loading,
    TResult Function(_GetAccountIbanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _GetAccountIbanStateLoadFailure implements GetAccountIbanState {
  const factory _GetAccountIbanStateLoadFailure(final Failure failure) =
      _$GetAccountIbanStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$GetAccountIbanStateLoadFailureImplCopyWith<
          _$GetAccountIbanStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAccountIbanStateLoadingImplCopyWith<$Res> {
  factory _$$GetAccountIbanStateLoadingImplCopyWith(
          _$GetAccountIbanStateLoadingImpl value,
          $Res Function(_$GetAccountIbanStateLoadingImpl) then) =
      __$$GetAccountIbanStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAccountIbanStateLoadingImplCopyWithImpl<$Res>
    extends _$GetAccountIbanStateCopyWithImpl<$Res,
        _$GetAccountIbanStateLoadingImpl>
    implements _$$GetAccountIbanStateLoadingImplCopyWith<$Res> {
  __$$GetAccountIbanStateLoadingImplCopyWithImpl(
      _$GetAccountIbanStateLoadingImpl _value,
      $Res Function(_$GetAccountIbanStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAccountIbanStateLoadingImpl implements GetAccountIbanStateLoading {
  const _$GetAccountIbanStateLoadingImpl();

  @override
  String toString() {
    return 'GetAccountIbanState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountIbanStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetAccountIbanEntities getAccountIbanEntities)
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
    TResult? Function(GetAccountIbanEntities getAccountIbanEntities)?
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
    TResult Function(GetAccountIbanEntities getAccountIbanEntities)?
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
    required TResult Function(_GetAccountIbanStateInitial value) initial,
    required TResult Function(_GetAccountIbanStateLoadFailure value)
        loadFailure,
    required TResult Function(GetAccountIbanStateLoading value) loading,
    required TResult Function(_GetAccountIbanStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountIbanStateInitial value)? initial,
    TResult? Function(_GetAccountIbanStateLoadFailure value)? loadFailure,
    TResult? Function(GetAccountIbanStateLoading value)? loading,
    TResult? Function(_GetAccountIbanStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountIbanStateInitial value)? initial,
    TResult Function(_GetAccountIbanStateLoadFailure value)? loadFailure,
    TResult Function(GetAccountIbanStateLoading value)? loading,
    TResult Function(_GetAccountIbanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetAccountIbanStateLoading implements GetAccountIbanState {
  const factory GetAccountIbanStateLoading() = _$GetAccountIbanStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetAccountIbanStateLoadSuccessImplCopyWith<$Res> {
  factory _$$GetAccountIbanStateLoadSuccessImplCopyWith(
          _$GetAccountIbanStateLoadSuccessImpl value,
          $Res Function(_$GetAccountIbanStateLoadSuccessImpl) then) =
      __$$GetAccountIbanStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAccountIbanEntities getAccountIbanEntities});
}

/// @nodoc
class __$$GetAccountIbanStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$GetAccountIbanStateCopyWithImpl<$Res,
        _$GetAccountIbanStateLoadSuccessImpl>
    implements _$$GetAccountIbanStateLoadSuccessImplCopyWith<$Res> {
  __$$GetAccountIbanStateLoadSuccessImplCopyWithImpl(
      _$GetAccountIbanStateLoadSuccessImpl _value,
      $Res Function(_$GetAccountIbanStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAccountIbanEntities = null,
  }) {
    return _then(_$GetAccountIbanStateLoadSuccessImpl(
      null == getAccountIbanEntities
          ? _value.getAccountIbanEntities
          : getAccountIbanEntities // ignore: cast_nullable_to_non_nullable
              as GetAccountIbanEntities,
    ));
  }
}

/// @nodoc

class _$GetAccountIbanStateLoadSuccessImpl
    implements _GetAccountIbanStateLoadSuccess {
  const _$GetAccountIbanStateLoadSuccessImpl(this.getAccountIbanEntities);

  @override
  final GetAccountIbanEntities getAccountIbanEntities;

  @override
  String toString() {
    return 'GetAccountIbanState.loadSuccess(getAccountIbanEntities: $getAccountIbanEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountIbanStateLoadSuccessImpl &&
            (identical(other.getAccountIbanEntities, getAccountIbanEntities) ||
                other.getAccountIbanEntities == getAccountIbanEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getAccountIbanEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccountIbanStateLoadSuccessImplCopyWith<
          _$GetAccountIbanStateLoadSuccessImpl>
      get copyWith => __$$GetAccountIbanStateLoadSuccessImplCopyWithImpl<
          _$GetAccountIbanStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetAccountIbanEntities getAccountIbanEntities)
        loadSuccess,
  }) {
    return loadSuccess(getAccountIbanEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetAccountIbanEntities getAccountIbanEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(getAccountIbanEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetAccountIbanEntities getAccountIbanEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(getAccountIbanEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccountIbanStateInitial value) initial,
    required TResult Function(_GetAccountIbanStateLoadFailure value)
        loadFailure,
    required TResult Function(GetAccountIbanStateLoading value) loading,
    required TResult Function(_GetAccountIbanStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountIbanStateInitial value)? initial,
    TResult? Function(_GetAccountIbanStateLoadFailure value)? loadFailure,
    TResult? Function(GetAccountIbanStateLoading value)? loading,
    TResult? Function(_GetAccountIbanStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountIbanStateInitial value)? initial,
    TResult Function(_GetAccountIbanStateLoadFailure value)? loadFailure,
    TResult Function(GetAccountIbanStateLoading value)? loading,
    TResult Function(_GetAccountIbanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetAccountIbanStateLoadSuccess implements GetAccountIbanState {
  const factory _GetAccountIbanStateLoadSuccess(
          final GetAccountIbanEntities getAccountIbanEntities) =
      _$GetAccountIbanStateLoadSuccessImpl;

  GetAccountIbanEntities get getAccountIbanEntities;
  @JsonKey(ignore: true)
  _$$GetAccountIbanStateLoadSuccessImplCopyWith<
          _$GetAccountIbanStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
