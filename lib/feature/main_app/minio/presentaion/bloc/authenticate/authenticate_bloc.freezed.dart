// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticateBlocEvent {
  AuthenticateParam get authenticateParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticateParam authenticateParam)
        authBlocEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticateParam authenticateParam)? authBlocEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticateParam authenticateParam)? authBlocEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthBlocEventCalled value) authBlocEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthBlocEventCalled value)? authBlocEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthBlocEventCalled value)? authBlocEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticateBlocEventCopyWith<AuthenticateBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateBlocEventCopyWith<$Res> {
  factory $AuthenticateBlocEventCopyWith(AuthenticateBlocEvent value,
          $Res Function(AuthenticateBlocEvent) then) =
      _$AuthenticateBlocEventCopyWithImpl<$Res, AuthenticateBlocEvent>;
  @useResult
  $Res call({AuthenticateParam authenticateParam});
}

/// @nodoc
class _$AuthenticateBlocEventCopyWithImpl<$Res,
        $Val extends AuthenticateBlocEvent>
    implements $AuthenticateBlocEventCopyWith<$Res> {
  _$AuthenticateBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticateParam = null,
  }) {
    return _then(_value.copyWith(
      authenticateParam: null == authenticateParam
          ? _value.authenticateParam
          : authenticateParam // ignore: cast_nullable_to_non_nullable
              as AuthenticateParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthBlocEventCalledImplCopyWith<$Res>
    implements $AuthenticateBlocEventCopyWith<$Res> {
  factory _$$AuthBlocEventCalledImplCopyWith(_$AuthBlocEventCalledImpl value,
          $Res Function(_$AuthBlocEventCalledImpl) then) =
      __$$AuthBlocEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticateParam authenticateParam});
}

/// @nodoc
class __$$AuthBlocEventCalledImplCopyWithImpl<$Res>
    extends _$AuthenticateBlocEventCopyWithImpl<$Res, _$AuthBlocEventCalledImpl>
    implements _$$AuthBlocEventCalledImplCopyWith<$Res> {
  __$$AuthBlocEventCalledImplCopyWithImpl(_$AuthBlocEventCalledImpl _value,
      $Res Function(_$AuthBlocEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticateParam = null,
  }) {
    return _then(_$AuthBlocEventCalledImpl(
      null == authenticateParam
          ? _value.authenticateParam
          : authenticateParam // ignore: cast_nullable_to_non_nullable
              as AuthenticateParam,
    ));
  }
}

/// @nodoc

class _$AuthBlocEventCalledImpl implements _AuthBlocEventCalled {
  const _$AuthBlocEventCalledImpl(this.authenticateParam);

  @override
  final AuthenticateParam authenticateParam;

  @override
  String toString() {
    return 'AuthenticateBlocEvent.authBlocEventCalled(authenticateParam: $authenticateParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthBlocEventCalledImpl &&
            (identical(other.authenticateParam, authenticateParam) ||
                other.authenticateParam == authenticateParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticateParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthBlocEventCalledImplCopyWith<_$AuthBlocEventCalledImpl> get copyWith =>
      __$$AuthBlocEventCalledImplCopyWithImpl<_$AuthBlocEventCalledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticateParam authenticateParam)
        authBlocEventCalled,
  }) {
    return authBlocEventCalled(authenticateParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticateParam authenticateParam)? authBlocEventCalled,
  }) {
    return authBlocEventCalled?.call(authenticateParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticateParam authenticateParam)? authBlocEventCalled,
    required TResult orElse(),
  }) {
    if (authBlocEventCalled != null) {
      return authBlocEventCalled(authenticateParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthBlocEventCalled value) authBlocEventCalled,
  }) {
    return authBlocEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthBlocEventCalled value)? authBlocEventCalled,
  }) {
    return authBlocEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthBlocEventCalled value)? authBlocEventCalled,
    required TResult orElse(),
  }) {
    if (authBlocEventCalled != null) {
      return authBlocEventCalled(this);
    }
    return orElse();
  }
}

abstract class _AuthBlocEventCalled implements AuthenticateBlocEvent {
  const factory _AuthBlocEventCalled(
      final AuthenticateParam authenticateParam) = _$AuthBlocEventCalledImpl;

  @override
  AuthenticateParam get authenticateParam;
  @override
  @JsonKey(ignore: true)
  _$$AuthBlocEventCalledImplCopyWith<_$AuthBlocEventCalledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticateBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AuthenticateEntities authenticateEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(AuthenticateEntities authenticateEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AuthenticateEntities authenticateEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticateBlocInitial value) initial,
    required TResult Function(_AuthenticateBlocLoadFailure value) loadFailure,
    required TResult Function(AuthenticateBlocStateLoading value) loading,
    required TResult Function(_AuthenticateBlocLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticateBlocInitial value)? initial,
    TResult? Function(_AuthenticateBlocLoadFailure value)? loadFailure,
    TResult? Function(AuthenticateBlocStateLoading value)? loading,
    TResult? Function(_AuthenticateBlocLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticateBlocInitial value)? initial,
    TResult Function(_AuthenticateBlocLoadFailure value)? loadFailure,
    TResult Function(AuthenticateBlocStateLoading value)? loading,
    TResult Function(_AuthenticateBlocLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateBlocStateCopyWith<$Res> {
  factory $AuthenticateBlocStateCopyWith(AuthenticateBlocState value,
          $Res Function(AuthenticateBlocState) then) =
      _$AuthenticateBlocStateCopyWithImpl<$Res, AuthenticateBlocState>;
}

/// @nodoc
class _$AuthenticateBlocStateCopyWithImpl<$Res,
        $Val extends AuthenticateBlocState>
    implements $AuthenticateBlocStateCopyWith<$Res> {
  _$AuthenticateBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticateBlocInitialImplCopyWith<$Res> {
  factory _$$AuthenticateBlocInitialImplCopyWith(
          _$AuthenticateBlocInitialImpl value,
          $Res Function(_$AuthenticateBlocInitialImpl) then) =
      __$$AuthenticateBlocInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateBlocInitialImplCopyWithImpl<$Res>
    extends _$AuthenticateBlocStateCopyWithImpl<$Res,
        _$AuthenticateBlocInitialImpl>
    implements _$$AuthenticateBlocInitialImplCopyWith<$Res> {
  __$$AuthenticateBlocInitialImplCopyWithImpl(
      _$AuthenticateBlocInitialImpl _value,
      $Res Function(_$AuthenticateBlocInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticateBlocInitialImpl implements _AuthenticateBlocInitial {
  const _$AuthenticateBlocInitialImpl();

  @override
  String toString() {
    return 'AuthenticateBlocState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateBlocInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AuthenticateEntities authenticateEntities)
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
    TResult? Function(AuthenticateEntities authenticateEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AuthenticateEntities authenticateEntities)? loadSuccess,
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
    required TResult Function(_AuthenticateBlocInitial value) initial,
    required TResult Function(_AuthenticateBlocLoadFailure value) loadFailure,
    required TResult Function(AuthenticateBlocStateLoading value) loading,
    required TResult Function(_AuthenticateBlocLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticateBlocInitial value)? initial,
    TResult? Function(_AuthenticateBlocLoadFailure value)? loadFailure,
    TResult? Function(AuthenticateBlocStateLoading value)? loading,
    TResult? Function(_AuthenticateBlocLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticateBlocInitial value)? initial,
    TResult Function(_AuthenticateBlocLoadFailure value)? loadFailure,
    TResult Function(AuthenticateBlocStateLoading value)? loading,
    TResult Function(_AuthenticateBlocLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthenticateBlocInitial implements AuthenticateBlocState {
  const factory _AuthenticateBlocInitial() = _$AuthenticateBlocInitialImpl;
}

/// @nodoc
abstract class _$$AuthenticateBlocLoadFailureImplCopyWith<$Res> {
  factory _$$AuthenticateBlocLoadFailureImplCopyWith(
          _$AuthenticateBlocLoadFailureImpl value,
          $Res Function(_$AuthenticateBlocLoadFailureImpl) then) =
      __$$AuthenticateBlocLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$AuthenticateBlocLoadFailureImplCopyWithImpl<$Res>
    extends _$AuthenticateBlocStateCopyWithImpl<$Res,
        _$AuthenticateBlocLoadFailureImpl>
    implements _$$AuthenticateBlocLoadFailureImplCopyWith<$Res> {
  __$$AuthenticateBlocLoadFailureImplCopyWithImpl(
      _$AuthenticateBlocLoadFailureImpl _value,
      $Res Function(_$AuthenticateBlocLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$AuthenticateBlocLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AuthenticateBlocLoadFailureImpl
    implements _AuthenticateBlocLoadFailure {
  const _$AuthenticateBlocLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthenticateBlocState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateBlocLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateBlocLoadFailureImplCopyWith<_$AuthenticateBlocLoadFailureImpl>
      get copyWith => __$$AuthenticateBlocLoadFailureImplCopyWithImpl<
          _$AuthenticateBlocLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AuthenticateEntities authenticateEntities)
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
    TResult? Function(AuthenticateEntities authenticateEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AuthenticateEntities authenticateEntities)? loadSuccess,
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
    required TResult Function(_AuthenticateBlocInitial value) initial,
    required TResult Function(_AuthenticateBlocLoadFailure value) loadFailure,
    required TResult Function(AuthenticateBlocStateLoading value) loading,
    required TResult Function(_AuthenticateBlocLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticateBlocInitial value)? initial,
    TResult? Function(_AuthenticateBlocLoadFailure value)? loadFailure,
    TResult? Function(AuthenticateBlocStateLoading value)? loading,
    TResult? Function(_AuthenticateBlocLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticateBlocInitial value)? initial,
    TResult Function(_AuthenticateBlocLoadFailure value)? loadFailure,
    TResult Function(AuthenticateBlocStateLoading value)? loading,
    TResult Function(_AuthenticateBlocLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _AuthenticateBlocLoadFailure implements AuthenticateBlocState {
  const factory _AuthenticateBlocLoadFailure(final Failure failure) =
      _$AuthenticateBlocLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$AuthenticateBlocLoadFailureImplCopyWith<_$AuthenticateBlocLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticateBlocStateLoadingImplCopyWith<$Res> {
  factory _$$AuthenticateBlocStateLoadingImplCopyWith(
          _$AuthenticateBlocStateLoadingImpl value,
          $Res Function(_$AuthenticateBlocStateLoadingImpl) then) =
      __$$AuthenticateBlocStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateBlocStateLoadingImplCopyWithImpl<$Res>
    extends _$AuthenticateBlocStateCopyWithImpl<$Res,
        _$AuthenticateBlocStateLoadingImpl>
    implements _$$AuthenticateBlocStateLoadingImplCopyWith<$Res> {
  __$$AuthenticateBlocStateLoadingImplCopyWithImpl(
      _$AuthenticateBlocStateLoadingImpl _value,
      $Res Function(_$AuthenticateBlocStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticateBlocStateLoadingImpl
    implements AuthenticateBlocStateLoading {
  const _$AuthenticateBlocStateLoadingImpl();

  @override
  String toString() {
    return 'AuthenticateBlocState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateBlocStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AuthenticateEntities authenticateEntities)
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
    TResult? Function(AuthenticateEntities authenticateEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AuthenticateEntities authenticateEntities)? loadSuccess,
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
    required TResult Function(_AuthenticateBlocInitial value) initial,
    required TResult Function(_AuthenticateBlocLoadFailure value) loadFailure,
    required TResult Function(AuthenticateBlocStateLoading value) loading,
    required TResult Function(_AuthenticateBlocLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticateBlocInitial value)? initial,
    TResult? Function(_AuthenticateBlocLoadFailure value)? loadFailure,
    TResult? Function(AuthenticateBlocStateLoading value)? loading,
    TResult? Function(_AuthenticateBlocLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticateBlocInitial value)? initial,
    TResult Function(_AuthenticateBlocLoadFailure value)? loadFailure,
    TResult Function(AuthenticateBlocStateLoading value)? loading,
    TResult Function(_AuthenticateBlocLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthenticateBlocStateLoading implements AuthenticateBlocState {
  const factory AuthenticateBlocStateLoading() =
      _$AuthenticateBlocStateLoadingImpl;
}

/// @nodoc
abstract class _$$AuthenticateBlocLoadSuccessImplCopyWith<$Res> {
  factory _$$AuthenticateBlocLoadSuccessImplCopyWith(
          _$AuthenticateBlocLoadSuccessImpl value,
          $Res Function(_$AuthenticateBlocLoadSuccessImpl) then) =
      __$$AuthenticateBlocLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticateEntities authenticateEntities});
}

/// @nodoc
class __$$AuthenticateBlocLoadSuccessImplCopyWithImpl<$Res>
    extends _$AuthenticateBlocStateCopyWithImpl<$Res,
        _$AuthenticateBlocLoadSuccessImpl>
    implements _$$AuthenticateBlocLoadSuccessImplCopyWith<$Res> {
  __$$AuthenticateBlocLoadSuccessImplCopyWithImpl(
      _$AuthenticateBlocLoadSuccessImpl _value,
      $Res Function(_$AuthenticateBlocLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticateEntities = null,
  }) {
    return _then(_$AuthenticateBlocLoadSuccessImpl(
      null == authenticateEntities
          ? _value.authenticateEntities
          : authenticateEntities // ignore: cast_nullable_to_non_nullable
              as AuthenticateEntities,
    ));
  }
}

/// @nodoc

class _$AuthenticateBlocLoadSuccessImpl
    implements _AuthenticateBlocLoadSuccess {
  const _$AuthenticateBlocLoadSuccessImpl(this.authenticateEntities);

  @override
  final AuthenticateEntities authenticateEntities;

  @override
  String toString() {
    return 'AuthenticateBlocState.loadSuccess(authenticateEntities: $authenticateEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateBlocLoadSuccessImpl &&
            (identical(other.authenticateEntities, authenticateEntities) ||
                other.authenticateEntities == authenticateEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticateEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateBlocLoadSuccessImplCopyWith<_$AuthenticateBlocLoadSuccessImpl>
      get copyWith => __$$AuthenticateBlocLoadSuccessImplCopyWithImpl<
          _$AuthenticateBlocLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AuthenticateEntities authenticateEntities)
        loadSuccess,
  }) {
    return loadSuccess(authenticateEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(AuthenticateEntities authenticateEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(authenticateEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AuthenticateEntities authenticateEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(authenticateEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticateBlocInitial value) initial,
    required TResult Function(_AuthenticateBlocLoadFailure value) loadFailure,
    required TResult Function(AuthenticateBlocStateLoading value) loading,
    required TResult Function(_AuthenticateBlocLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticateBlocInitial value)? initial,
    TResult? Function(_AuthenticateBlocLoadFailure value)? loadFailure,
    TResult? Function(AuthenticateBlocStateLoading value)? loading,
    TResult? Function(_AuthenticateBlocLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticateBlocInitial value)? initial,
    TResult Function(_AuthenticateBlocLoadFailure value)? loadFailure,
    TResult Function(AuthenticateBlocStateLoading value)? loading,
    TResult Function(_AuthenticateBlocLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _AuthenticateBlocLoadSuccess implements AuthenticateBlocState {
  const factory _AuthenticateBlocLoadSuccess(
          final AuthenticateEntities authenticateEntities) =
      _$AuthenticateBlocLoadSuccessImpl;

  AuthenticateEntities get authenticateEntities;
  @JsonKey(ignore: true)
  _$$AuthenticateBlocLoadSuccessImplCopyWith<_$AuthenticateBlocLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
