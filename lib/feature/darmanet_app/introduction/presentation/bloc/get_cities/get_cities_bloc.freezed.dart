// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_cities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetCitiesEvent {
  GetCitiesParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCitiesParam param) getCitiesEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCitiesParam param)? getCitiesEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCitiesParam param)? getCitiesEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCitiesEventCalled value) getCitiesEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCitiesEventCalled value)? getCitiesEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCitiesEventCalled value)? getCitiesEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetCitiesEventCopyWith<GetCitiesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCitiesEventCopyWith<$Res> {
  factory $GetCitiesEventCopyWith(
          GetCitiesEvent value, $Res Function(GetCitiesEvent) then) =
      _$GetCitiesEventCopyWithImpl<$Res, GetCitiesEvent>;
  @useResult
  $Res call({GetCitiesParam param});
}

/// @nodoc
class _$GetCitiesEventCopyWithImpl<$Res, $Val extends GetCitiesEvent>
    implements $GetCitiesEventCopyWith<$Res> {
  _$GetCitiesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_value.copyWith(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as GetCitiesParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCitiesEventCalledImplCopyWith<$Res>
    implements $GetCitiesEventCopyWith<$Res> {
  factory _$$GetCitiesEventCalledImplCopyWith(_$GetCitiesEventCalledImpl value,
          $Res Function(_$GetCitiesEventCalledImpl) then) =
      __$$GetCitiesEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetCitiesParam param});
}

/// @nodoc
class __$$GetCitiesEventCalledImplCopyWithImpl<$Res>
    extends _$GetCitiesEventCopyWithImpl<$Res, _$GetCitiesEventCalledImpl>
    implements _$$GetCitiesEventCalledImplCopyWith<$Res> {
  __$$GetCitiesEventCalledImplCopyWithImpl(_$GetCitiesEventCalledImpl _value,
      $Res Function(_$GetCitiesEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$GetCitiesEventCalledImpl(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as GetCitiesParam,
    ));
  }
}

/// @nodoc

class _$GetCitiesEventCalledImpl implements _GetCitiesEventCalled {
  const _$GetCitiesEventCalledImpl({required this.param});

  @override
  final GetCitiesParam param;

  @override
  String toString() {
    return 'GetCitiesEvent.getCitiesEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCitiesEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCitiesEventCalledImplCopyWith<_$GetCitiesEventCalledImpl>
      get copyWith =>
          __$$GetCitiesEventCalledImplCopyWithImpl<_$GetCitiesEventCalledImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCitiesParam param) getCitiesEventCalled,
  }) {
    return getCitiesEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetCitiesParam param)? getCitiesEventCalled,
  }) {
    return getCitiesEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCitiesParam param)? getCitiesEventCalled,
    required TResult orElse(),
  }) {
    if (getCitiesEventCalled != null) {
      return getCitiesEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCitiesEventCalled value) getCitiesEventCalled,
  }) {
    return getCitiesEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCitiesEventCalled value)? getCitiesEventCalled,
  }) {
    return getCitiesEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCitiesEventCalled value)? getCitiesEventCalled,
    required TResult orElse(),
  }) {
    if (getCitiesEventCalled != null) {
      return getCitiesEventCalled(this);
    }
    return orElse();
  }
}

abstract class _GetCitiesEventCalled implements GetCitiesEvent {
  const factory _GetCitiesEventCalled({required final GetCitiesParam param}) =
      _$GetCitiesEventCalledImpl;

  @override
  GetCitiesParam get param;
  @override
  @JsonKey(ignore: true)
  _$$GetCitiesEventCalledImplCopyWith<_$GetCitiesEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetCitiesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetCitiesEntities getCitiesEntities) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetCitiesEntities getCitiesEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetCitiesEntities getCitiesEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCitiesStateInitial value) initial,
    required TResult Function(_GetCitiesStateLoadFailure value) loadFailure,
    required TResult Function(GetCitiesStateLoading value) loading,
    required TResult Function(_GetCitiesStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCitiesStateInitial value)? initial,
    TResult? Function(_GetCitiesStateLoadFailure value)? loadFailure,
    TResult? Function(GetCitiesStateLoading value)? loading,
    TResult? Function(_GetCitiesStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCitiesStateInitial value)? initial,
    TResult Function(_GetCitiesStateLoadFailure value)? loadFailure,
    TResult Function(GetCitiesStateLoading value)? loading,
    TResult Function(_GetCitiesStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCitiesStateCopyWith<$Res> {
  factory $GetCitiesStateCopyWith(
          GetCitiesState value, $Res Function(GetCitiesState) then) =
      _$GetCitiesStateCopyWithImpl<$Res, GetCitiesState>;
}

/// @nodoc
class _$GetCitiesStateCopyWithImpl<$Res, $Val extends GetCitiesState>
    implements $GetCitiesStateCopyWith<$Res> {
  _$GetCitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCitiesStateInitialImplCopyWith<$Res> {
  factory _$$GetCitiesStateInitialImplCopyWith(
          _$GetCitiesStateInitialImpl value,
          $Res Function(_$GetCitiesStateInitialImpl) then) =
      __$$GetCitiesStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCitiesStateInitialImplCopyWithImpl<$Res>
    extends _$GetCitiesStateCopyWithImpl<$Res, _$GetCitiesStateInitialImpl>
    implements _$$GetCitiesStateInitialImplCopyWith<$Res> {
  __$$GetCitiesStateInitialImplCopyWithImpl(_$GetCitiesStateInitialImpl _value,
      $Res Function(_$GetCitiesStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCitiesStateInitialImpl implements _GetCitiesStateInitial {
  const _$GetCitiesStateInitialImpl();

  @override
  String toString() {
    return 'GetCitiesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCitiesStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetCitiesEntities getCitiesEntities) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetCitiesEntities getCitiesEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetCitiesEntities getCitiesEntities)? loadSuccess,
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
    required TResult Function(_GetCitiesStateInitial value) initial,
    required TResult Function(_GetCitiesStateLoadFailure value) loadFailure,
    required TResult Function(GetCitiesStateLoading value) loading,
    required TResult Function(_GetCitiesStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCitiesStateInitial value)? initial,
    TResult? Function(_GetCitiesStateLoadFailure value)? loadFailure,
    TResult? Function(GetCitiesStateLoading value)? loading,
    TResult? Function(_GetCitiesStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCitiesStateInitial value)? initial,
    TResult Function(_GetCitiesStateLoadFailure value)? loadFailure,
    TResult Function(GetCitiesStateLoading value)? loading,
    TResult Function(_GetCitiesStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetCitiesStateInitial implements GetCitiesState {
  const factory _GetCitiesStateInitial() = _$GetCitiesStateInitialImpl;
}

/// @nodoc
abstract class _$$GetCitiesStateLoadFailureImplCopyWith<$Res> {
  factory _$$GetCitiesStateLoadFailureImplCopyWith(
          _$GetCitiesStateLoadFailureImpl value,
          $Res Function(_$GetCitiesStateLoadFailureImpl) then) =
      __$$GetCitiesStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$GetCitiesStateLoadFailureImplCopyWithImpl<$Res>
    extends _$GetCitiesStateCopyWithImpl<$Res, _$GetCitiesStateLoadFailureImpl>
    implements _$$GetCitiesStateLoadFailureImplCopyWith<$Res> {
  __$$GetCitiesStateLoadFailureImplCopyWithImpl(
      _$GetCitiesStateLoadFailureImpl _value,
      $Res Function(_$GetCitiesStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GetCitiesStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$GetCitiesStateLoadFailureImpl implements _GetCitiesStateLoadFailure {
  const _$GetCitiesStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetCitiesState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCitiesStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCitiesStateLoadFailureImplCopyWith<_$GetCitiesStateLoadFailureImpl>
      get copyWith => __$$GetCitiesStateLoadFailureImplCopyWithImpl<
          _$GetCitiesStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetCitiesEntities getCitiesEntities) loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetCitiesEntities getCitiesEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetCitiesEntities getCitiesEntities)? loadSuccess,
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
    required TResult Function(_GetCitiesStateInitial value) initial,
    required TResult Function(_GetCitiesStateLoadFailure value) loadFailure,
    required TResult Function(GetCitiesStateLoading value) loading,
    required TResult Function(_GetCitiesStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCitiesStateInitial value)? initial,
    TResult? Function(_GetCitiesStateLoadFailure value)? loadFailure,
    TResult? Function(GetCitiesStateLoading value)? loading,
    TResult? Function(_GetCitiesStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCitiesStateInitial value)? initial,
    TResult Function(_GetCitiesStateLoadFailure value)? loadFailure,
    TResult Function(GetCitiesStateLoading value)? loading,
    TResult Function(_GetCitiesStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _GetCitiesStateLoadFailure implements GetCitiesState {
  const factory _GetCitiesStateLoadFailure(final Failure failure) =
      _$GetCitiesStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$GetCitiesStateLoadFailureImplCopyWith<_$GetCitiesStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCitiesStateLoadingImplCopyWith<$Res> {
  factory _$$GetCitiesStateLoadingImplCopyWith(
          _$GetCitiesStateLoadingImpl value,
          $Res Function(_$GetCitiesStateLoadingImpl) then) =
      __$$GetCitiesStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCitiesStateLoadingImplCopyWithImpl<$Res>
    extends _$GetCitiesStateCopyWithImpl<$Res, _$GetCitiesStateLoadingImpl>
    implements _$$GetCitiesStateLoadingImplCopyWith<$Res> {
  __$$GetCitiesStateLoadingImplCopyWithImpl(_$GetCitiesStateLoadingImpl _value,
      $Res Function(_$GetCitiesStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCitiesStateLoadingImpl implements GetCitiesStateLoading {
  const _$GetCitiesStateLoadingImpl();

  @override
  String toString() {
    return 'GetCitiesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCitiesStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetCitiesEntities getCitiesEntities) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetCitiesEntities getCitiesEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetCitiesEntities getCitiesEntities)? loadSuccess,
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
    required TResult Function(_GetCitiesStateInitial value) initial,
    required TResult Function(_GetCitiesStateLoadFailure value) loadFailure,
    required TResult Function(GetCitiesStateLoading value) loading,
    required TResult Function(_GetCitiesStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCitiesStateInitial value)? initial,
    TResult? Function(_GetCitiesStateLoadFailure value)? loadFailure,
    TResult? Function(GetCitiesStateLoading value)? loading,
    TResult? Function(_GetCitiesStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCitiesStateInitial value)? initial,
    TResult Function(_GetCitiesStateLoadFailure value)? loadFailure,
    TResult Function(GetCitiesStateLoading value)? loading,
    TResult Function(_GetCitiesStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetCitiesStateLoading implements GetCitiesState {
  const factory GetCitiesStateLoading() = _$GetCitiesStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetCitiesStateLoadSuccessImplCopyWith<$Res> {
  factory _$$GetCitiesStateLoadSuccessImplCopyWith(
          _$GetCitiesStateLoadSuccessImpl value,
          $Res Function(_$GetCitiesStateLoadSuccessImpl) then) =
      __$$GetCitiesStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetCitiesEntities getCitiesEntities});
}

/// @nodoc
class __$$GetCitiesStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$GetCitiesStateCopyWithImpl<$Res, _$GetCitiesStateLoadSuccessImpl>
    implements _$$GetCitiesStateLoadSuccessImplCopyWith<$Res> {
  __$$GetCitiesStateLoadSuccessImplCopyWithImpl(
      _$GetCitiesStateLoadSuccessImpl _value,
      $Res Function(_$GetCitiesStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCitiesEntities = null,
  }) {
    return _then(_$GetCitiesStateLoadSuccessImpl(
      null == getCitiesEntities
          ? _value.getCitiesEntities
          : getCitiesEntities // ignore: cast_nullable_to_non_nullable
              as GetCitiesEntities,
    ));
  }
}

/// @nodoc

class _$GetCitiesStateLoadSuccessImpl implements _GetCitiesStateLoadSuccess {
  const _$GetCitiesStateLoadSuccessImpl(this.getCitiesEntities);

  @override
  final GetCitiesEntities getCitiesEntities;

  @override
  String toString() {
    return 'GetCitiesState.loadSuccess(getCitiesEntities: $getCitiesEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCitiesStateLoadSuccessImpl &&
            (identical(other.getCitiesEntities, getCitiesEntities) ||
                other.getCitiesEntities == getCitiesEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getCitiesEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCitiesStateLoadSuccessImplCopyWith<_$GetCitiesStateLoadSuccessImpl>
      get copyWith => __$$GetCitiesStateLoadSuccessImplCopyWithImpl<
          _$GetCitiesStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetCitiesEntities getCitiesEntities) loadSuccess,
  }) {
    return loadSuccess(getCitiesEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetCitiesEntities getCitiesEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(getCitiesEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetCitiesEntities getCitiesEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(getCitiesEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCitiesStateInitial value) initial,
    required TResult Function(_GetCitiesStateLoadFailure value) loadFailure,
    required TResult Function(GetCitiesStateLoading value) loading,
    required TResult Function(_GetCitiesStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCitiesStateInitial value)? initial,
    TResult? Function(_GetCitiesStateLoadFailure value)? loadFailure,
    TResult? Function(GetCitiesStateLoading value)? loading,
    TResult? Function(_GetCitiesStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCitiesStateInitial value)? initial,
    TResult Function(_GetCitiesStateLoadFailure value)? loadFailure,
    TResult Function(GetCitiesStateLoading value)? loading,
    TResult Function(_GetCitiesStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetCitiesStateLoadSuccess implements GetCitiesState {
  const factory _GetCitiesStateLoadSuccess(
          final GetCitiesEntities getCitiesEntities) =
      _$GetCitiesStateLoadSuccessImpl;

  GetCitiesEntities get getCitiesEntities;
  @JsonKey(ignore: true)
  _$$GetCitiesStateLoadSuccessImplCopyWith<_$GetCitiesStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
