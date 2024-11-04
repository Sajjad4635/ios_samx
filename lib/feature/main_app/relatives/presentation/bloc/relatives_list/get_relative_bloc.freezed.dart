// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_relative_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetRelativeEvent {
  GetRelativesParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetRelativesParams params)
        getRelativesEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetRelativesParams params)? getRelativesEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetRelativesParams params)? getRelativesEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RelativesEventCalled value)
        getRelativesEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RelativesEventCalled value)? getRelativesEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RelativesEventCalled value)? getRelativesEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetRelativeEventCopyWith<GetRelativeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRelativeEventCopyWith<$Res> {
  factory $GetRelativeEventCopyWith(
          GetRelativeEvent value, $Res Function(GetRelativeEvent) then) =
      _$GetRelativeEventCopyWithImpl<$Res, GetRelativeEvent>;
  @useResult
  $Res call({GetRelativesParams params});
}

/// @nodoc
class _$GetRelativeEventCopyWithImpl<$Res, $Val extends GetRelativeEvent>
    implements $GetRelativeEventCopyWith<$Res> {
  _$GetRelativeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetRelativesParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelativesEventCalledImplCopyWith<$Res>
    implements $GetRelativeEventCopyWith<$Res> {
  factory _$$RelativesEventCalledImplCopyWith(_$RelativesEventCalledImpl value,
          $Res Function(_$RelativesEventCalledImpl) then) =
      __$$RelativesEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetRelativesParams params});
}

/// @nodoc
class __$$RelativesEventCalledImplCopyWithImpl<$Res>
    extends _$GetRelativeEventCopyWithImpl<$Res, _$RelativesEventCalledImpl>
    implements _$$RelativesEventCalledImplCopyWith<$Res> {
  __$$RelativesEventCalledImplCopyWithImpl(_$RelativesEventCalledImpl _value,
      $Res Function(_$RelativesEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$RelativesEventCalledImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetRelativesParams,
    ));
  }
}

/// @nodoc

class _$RelativesEventCalledImpl implements _RelativesEventCalled {
  const _$RelativesEventCalledImpl({required this.params});

  @override
  final GetRelativesParams params;

  @override
  String toString() {
    return 'GetRelativeEvent.getRelativesEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelativesEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RelativesEventCalledImplCopyWith<_$RelativesEventCalledImpl>
      get copyWith =>
          __$$RelativesEventCalledImplCopyWithImpl<_$RelativesEventCalledImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetRelativesParams params)
        getRelativesEventCalled,
  }) {
    return getRelativesEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetRelativesParams params)? getRelativesEventCalled,
  }) {
    return getRelativesEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetRelativesParams params)? getRelativesEventCalled,
    required TResult orElse(),
  }) {
    if (getRelativesEventCalled != null) {
      return getRelativesEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RelativesEventCalled value)
        getRelativesEventCalled,
  }) {
    return getRelativesEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RelativesEventCalled value)? getRelativesEventCalled,
  }) {
    return getRelativesEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RelativesEventCalled value)? getRelativesEventCalled,
    required TResult orElse(),
  }) {
    if (getRelativesEventCalled != null) {
      return getRelativesEventCalled(this);
    }
    return orElse();
  }
}

abstract class _RelativesEventCalled implements GetRelativeEvent {
  const factory _RelativesEventCalled(
      {required final GetRelativesParams params}) = _$RelativesEventCalledImpl;

  @override
  GetRelativesParams get params;
  @override
  @JsonKey(ignore: true)
  _$$RelativesEventCalledImplCopyWith<_$RelativesEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetRelativeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetRelativeEntities getPersonFamilyListEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetRelativeEntities getPersonFamilyListEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetRelativeEntities getPersonFamilyListEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRelativeStateInitial value) initial,
    required TResult Function(_GetRelativeStateLoadFailure value) loadFailure,
    required TResult Function(GetRelativeStateLoading value) loading,
    required TResult Function(_GetRelativeStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRelativeStateInitial value)? initial,
    TResult? Function(_GetRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(GetRelativeStateLoading value)? loading,
    TResult? Function(_GetRelativeStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRelativeStateInitial value)? initial,
    TResult Function(_GetRelativeStateLoadFailure value)? loadFailure,
    TResult Function(GetRelativeStateLoading value)? loading,
    TResult Function(_GetRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRelativeStateCopyWith<$Res> {
  factory $GetRelativeStateCopyWith(
          GetRelativeState value, $Res Function(GetRelativeState) then) =
      _$GetRelativeStateCopyWithImpl<$Res, GetRelativeState>;
}

/// @nodoc
class _$GetRelativeStateCopyWithImpl<$Res, $Val extends GetRelativeState>
    implements $GetRelativeStateCopyWith<$Res> {
  _$GetRelativeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRelativeStateInitialImplCopyWith<$Res> {
  factory _$$GetRelativeStateInitialImplCopyWith(
          _$GetRelativeStateInitialImpl value,
          $Res Function(_$GetRelativeStateInitialImpl) then) =
      __$$GetRelativeStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRelativeStateInitialImplCopyWithImpl<$Res>
    extends _$GetRelativeStateCopyWithImpl<$Res, _$GetRelativeStateInitialImpl>
    implements _$$GetRelativeStateInitialImplCopyWith<$Res> {
  __$$GetRelativeStateInitialImplCopyWithImpl(
      _$GetRelativeStateInitialImpl _value,
      $Res Function(_$GetRelativeStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRelativeStateInitialImpl implements _GetRelativeStateInitial {
  const _$GetRelativeStateInitialImpl();

  @override
  String toString() {
    return 'GetRelativeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRelativeStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetRelativeEntities getPersonFamilyListEntities)
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
    TResult? Function(GetRelativeEntities getPersonFamilyListEntities)?
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
    TResult Function(GetRelativeEntities getPersonFamilyListEntities)?
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
    required TResult Function(_GetRelativeStateInitial value) initial,
    required TResult Function(_GetRelativeStateLoadFailure value) loadFailure,
    required TResult Function(GetRelativeStateLoading value) loading,
    required TResult Function(_GetRelativeStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRelativeStateInitial value)? initial,
    TResult? Function(_GetRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(GetRelativeStateLoading value)? loading,
    TResult? Function(_GetRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRelativeStateInitial value)? initial,
    TResult Function(_GetRelativeStateLoadFailure value)? loadFailure,
    TResult Function(GetRelativeStateLoading value)? loading,
    TResult Function(_GetRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetRelativeStateInitial implements GetRelativeState {
  const factory _GetRelativeStateInitial() = _$GetRelativeStateInitialImpl;
}

/// @nodoc
abstract class _$$GetRelativeStateLoadFailureImplCopyWith<$Res> {
  factory _$$GetRelativeStateLoadFailureImplCopyWith(
          _$GetRelativeStateLoadFailureImpl value,
          $Res Function(_$GetRelativeStateLoadFailureImpl) then) =
      __$$GetRelativeStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$GetRelativeStateLoadFailureImplCopyWithImpl<$Res>
    extends _$GetRelativeStateCopyWithImpl<$Res,
        _$GetRelativeStateLoadFailureImpl>
    implements _$$GetRelativeStateLoadFailureImplCopyWith<$Res> {
  __$$GetRelativeStateLoadFailureImplCopyWithImpl(
      _$GetRelativeStateLoadFailureImpl _value,
      $Res Function(_$GetRelativeStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GetRelativeStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$GetRelativeStateLoadFailureImpl
    implements _GetRelativeStateLoadFailure {
  const _$GetRelativeStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetRelativeState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRelativeStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRelativeStateLoadFailureImplCopyWith<_$GetRelativeStateLoadFailureImpl>
      get copyWith => __$$GetRelativeStateLoadFailureImplCopyWithImpl<
          _$GetRelativeStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetRelativeEntities getPersonFamilyListEntities)
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
    TResult? Function(GetRelativeEntities getPersonFamilyListEntities)?
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
    TResult Function(GetRelativeEntities getPersonFamilyListEntities)?
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
    required TResult Function(_GetRelativeStateInitial value) initial,
    required TResult Function(_GetRelativeStateLoadFailure value) loadFailure,
    required TResult Function(GetRelativeStateLoading value) loading,
    required TResult Function(_GetRelativeStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRelativeStateInitial value)? initial,
    TResult? Function(_GetRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(GetRelativeStateLoading value)? loading,
    TResult? Function(_GetRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRelativeStateInitial value)? initial,
    TResult Function(_GetRelativeStateLoadFailure value)? loadFailure,
    TResult Function(GetRelativeStateLoading value)? loading,
    TResult Function(_GetRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _GetRelativeStateLoadFailure implements GetRelativeState {
  const factory _GetRelativeStateLoadFailure(final Failure failure) =
      _$GetRelativeStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$GetRelativeStateLoadFailureImplCopyWith<_$GetRelativeStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRelativeStateLoadingImplCopyWith<$Res> {
  factory _$$GetRelativeStateLoadingImplCopyWith(
          _$GetRelativeStateLoadingImpl value,
          $Res Function(_$GetRelativeStateLoadingImpl) then) =
      __$$GetRelativeStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRelativeStateLoadingImplCopyWithImpl<$Res>
    extends _$GetRelativeStateCopyWithImpl<$Res, _$GetRelativeStateLoadingImpl>
    implements _$$GetRelativeStateLoadingImplCopyWith<$Res> {
  __$$GetRelativeStateLoadingImplCopyWithImpl(
      _$GetRelativeStateLoadingImpl _value,
      $Res Function(_$GetRelativeStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRelativeStateLoadingImpl implements GetRelativeStateLoading {
  const _$GetRelativeStateLoadingImpl();

  @override
  String toString() {
    return 'GetRelativeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRelativeStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetRelativeEntities getPersonFamilyListEntities)
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
    TResult? Function(GetRelativeEntities getPersonFamilyListEntities)?
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
    TResult Function(GetRelativeEntities getPersonFamilyListEntities)?
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
    required TResult Function(_GetRelativeStateInitial value) initial,
    required TResult Function(_GetRelativeStateLoadFailure value) loadFailure,
    required TResult Function(GetRelativeStateLoading value) loading,
    required TResult Function(_GetRelativeStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRelativeStateInitial value)? initial,
    TResult? Function(_GetRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(GetRelativeStateLoading value)? loading,
    TResult? Function(_GetRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRelativeStateInitial value)? initial,
    TResult Function(_GetRelativeStateLoadFailure value)? loadFailure,
    TResult Function(GetRelativeStateLoading value)? loading,
    TResult Function(_GetRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetRelativeStateLoading implements GetRelativeState {
  const factory GetRelativeStateLoading() = _$GetRelativeStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetRelativeStateLoadSuccessImplCopyWith<$Res> {
  factory _$$GetRelativeStateLoadSuccessImplCopyWith(
          _$GetRelativeStateLoadSuccessImpl value,
          $Res Function(_$GetRelativeStateLoadSuccessImpl) then) =
      __$$GetRelativeStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetRelativeEntities getPersonFamilyListEntities});
}

/// @nodoc
class __$$GetRelativeStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$GetRelativeStateCopyWithImpl<$Res,
        _$GetRelativeStateLoadSuccessImpl>
    implements _$$GetRelativeStateLoadSuccessImplCopyWith<$Res> {
  __$$GetRelativeStateLoadSuccessImplCopyWithImpl(
      _$GetRelativeStateLoadSuccessImpl _value,
      $Res Function(_$GetRelativeStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getPersonFamilyListEntities = null,
  }) {
    return _then(_$GetRelativeStateLoadSuccessImpl(
      null == getPersonFamilyListEntities
          ? _value.getPersonFamilyListEntities
          : getPersonFamilyListEntities // ignore: cast_nullable_to_non_nullable
              as GetRelativeEntities,
    ));
  }
}

/// @nodoc

class _$GetRelativeStateLoadSuccessImpl
    implements _GetRelativeStateLoadSuccess {
  const _$GetRelativeStateLoadSuccessImpl(this.getPersonFamilyListEntities);

  @override
  final GetRelativeEntities getPersonFamilyListEntities;

  @override
  String toString() {
    return 'GetRelativeState.loadSuccess(getPersonFamilyListEntities: $getPersonFamilyListEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRelativeStateLoadSuccessImpl &&
            (identical(other.getPersonFamilyListEntities,
                    getPersonFamilyListEntities) ||
                other.getPersonFamilyListEntities ==
                    getPersonFamilyListEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getPersonFamilyListEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRelativeStateLoadSuccessImplCopyWith<_$GetRelativeStateLoadSuccessImpl>
      get copyWith => __$$GetRelativeStateLoadSuccessImplCopyWithImpl<
          _$GetRelativeStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetRelativeEntities getPersonFamilyListEntities)
        loadSuccess,
  }) {
    return loadSuccess(getPersonFamilyListEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetRelativeEntities getPersonFamilyListEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(getPersonFamilyListEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetRelativeEntities getPersonFamilyListEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(getPersonFamilyListEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRelativeStateInitial value) initial,
    required TResult Function(_GetRelativeStateLoadFailure value) loadFailure,
    required TResult Function(GetRelativeStateLoading value) loading,
    required TResult Function(_GetRelativeStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRelativeStateInitial value)? initial,
    TResult? Function(_GetRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(GetRelativeStateLoading value)? loading,
    TResult? Function(_GetRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRelativeStateInitial value)? initial,
    TResult Function(_GetRelativeStateLoadFailure value)? loadFailure,
    TResult Function(GetRelativeStateLoading value)? loading,
    TResult Function(_GetRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetRelativeStateLoadSuccess implements GetRelativeState {
  const factory _GetRelativeStateLoadSuccess(
          final GetRelativeEntities getPersonFamilyListEntities) =
      _$GetRelativeStateLoadSuccessImpl;

  GetRelativeEntities get getPersonFamilyListEntities;
  @JsonKey(ignore: true)
  _$$GetRelativeStateLoadSuccessImplCopyWith<_$GetRelativeStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
