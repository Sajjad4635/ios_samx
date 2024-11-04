// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  LoginParams get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams param) loginEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams param)? loginEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams param)? loginEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEventCalled value) loginEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEventCalled value)? loginEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEventCalled value)? loginEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({LoginParams param});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

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
              as LoginParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginEventCalledImplCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$LoginEventCalledImplCopyWith(_$LoginEventCalledImpl value,
          $Res Function(_$LoginEventCalledImpl) then) =
      __$$LoginEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginParams param});
}

/// @nodoc
class __$$LoginEventCalledImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventCalledImpl>
    implements _$$LoginEventCalledImplCopyWith<$Res> {
  __$$LoginEventCalledImplCopyWithImpl(_$LoginEventCalledImpl _value,
      $Res Function(_$LoginEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$LoginEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as LoginParams,
    ));
  }
}

/// @nodoc

class _$LoginEventCalledImpl implements _LoginEventCalled {
  const _$LoginEventCalledImpl(this.param);

  @override
  final LoginParams param;

  @override
  String toString() {
    return 'LoginEvent.loginEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventCalledImplCopyWith<_$LoginEventCalledImpl> get copyWith =>
      __$$LoginEventCalledImplCopyWithImpl<_$LoginEventCalledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginParams param) loginEventCalled,
  }) {
    return loginEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginParams param)? loginEventCalled,
  }) {
    return loginEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginParams param)? loginEventCalled,
    required TResult orElse(),
  }) {
    if (loginEventCalled != null) {
      return loginEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEventCalled value) loginEventCalled,
  }) {
    return loginEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEventCalled value)? loginEventCalled,
  }) {
    return loginEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEventCalled value)? loginEventCalled,
    required TResult orElse(),
  }) {
    if (loginEventCalled != null) {
      return loginEventCalled(this);
    }
    return orElse();
  }
}

abstract class _LoginEventCalled implements LoginEvent {
  const factory _LoginEventCalled(final LoginParams param) =
      _$LoginEventCalledImpl;

  @override
  LoginParams get param;
  @override
  @JsonKey(ignore: true)
  _$$LoginEventCalledImplCopyWith<_$LoginEventCalledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(LoginEntities loginEntities) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(LoginEntities loginEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(LoginEntities loginEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoadFailure value) loadFailure,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(_LoginStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoadFailure value)? loadFailure,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(_LoginStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoadFailure value)? loadFailure,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(_LoginStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStateInitialImplCopyWith<$Res> {
  factory _$$LoginStateInitialImplCopyWith(_$LoginStateInitialImpl value,
          $Res Function(_$LoginStateInitialImpl) then) =
      __$$LoginStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateInitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateInitialImpl>
    implements _$$LoginStateInitialImplCopyWith<$Res> {
  __$$LoginStateInitialImplCopyWithImpl(_$LoginStateInitialImpl _value,
      $Res Function(_$LoginStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateInitialImpl implements _LoginStateInitial {
  const _$LoginStateInitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(LoginEntities loginEntities) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(LoginEntities loginEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(LoginEntities loginEntities)? loadSuccess,
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
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoadFailure value) loadFailure,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(_LoginStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoadFailure value)? loadFailure,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(_LoginStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoadFailure value)? loadFailure,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(_LoginStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoginStateInitial implements LoginState {
  const factory _LoginStateInitial() = _$LoginStateInitialImpl;
}

/// @nodoc
abstract class _$$LoginStateLoadFailureImplCopyWith<$Res> {
  factory _$$LoginStateLoadFailureImplCopyWith(
          _$LoginStateLoadFailureImpl value,
          $Res Function(_$LoginStateLoadFailureImpl) then) =
      __$$LoginStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$LoginStateLoadFailureImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateLoadFailureImpl>
    implements _$$LoginStateLoadFailureImplCopyWith<$Res> {
  __$$LoginStateLoadFailureImplCopyWithImpl(_$LoginStateLoadFailureImpl _value,
      $Res Function(_$LoginStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoginStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$LoginStateLoadFailureImpl implements _LoginStateLoadFailure {
  const _$LoginStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'LoginState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateLoadFailureImplCopyWith<_$LoginStateLoadFailureImpl>
      get copyWith => __$$LoginStateLoadFailureImplCopyWithImpl<
          _$LoginStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(LoginEntities loginEntities) loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(LoginEntities loginEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(LoginEntities loginEntities)? loadSuccess,
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
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoadFailure value) loadFailure,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(_LoginStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoadFailure value)? loadFailure,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(_LoginStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoadFailure value)? loadFailure,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(_LoginStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoginStateLoadFailure implements LoginState {
  const factory _LoginStateLoadFailure(final Failure failure) =
      _$LoginStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$LoginStateLoadFailureImplCopyWith<_$LoginStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginStateLoadingImplCopyWith<$Res> {
  factory _$$LoginStateLoadingImplCopyWith(_$LoginStateLoadingImpl value,
          $Res Function(_$LoginStateLoadingImpl) then) =
      __$$LoginStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateLoadingImpl>
    implements _$$LoginStateLoadingImplCopyWith<$Res> {
  __$$LoginStateLoadingImplCopyWithImpl(_$LoginStateLoadingImpl _value,
      $Res Function(_$LoginStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateLoadingImpl implements LoginStateLoading {
  const _$LoginStateLoadingImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(LoginEntities loginEntities) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(LoginEntities loginEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(LoginEntities loginEntities)? loadSuccess,
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
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoadFailure value) loadFailure,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(_LoginStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoadFailure value)? loadFailure,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(_LoginStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoadFailure value)? loadFailure,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(_LoginStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginStateLoading implements LoginState {
  const factory LoginStateLoading() = _$LoginStateLoadingImpl;
}

/// @nodoc
abstract class _$$LoginStateLoadSuccessImplCopyWith<$Res> {
  factory _$$LoginStateLoadSuccessImplCopyWith(
          _$LoginStateLoadSuccessImpl value,
          $Res Function(_$LoginStateLoadSuccessImpl) then) =
      __$$LoginStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginEntities loginEntities});
}

/// @nodoc
class __$$LoginStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateLoadSuccessImpl>
    implements _$$LoginStateLoadSuccessImplCopyWith<$Res> {
  __$$LoginStateLoadSuccessImplCopyWithImpl(_$LoginStateLoadSuccessImpl _value,
      $Res Function(_$LoginStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginEntities = null,
  }) {
    return _then(_$LoginStateLoadSuccessImpl(
      null == loginEntities
          ? _value.loginEntities
          : loginEntities // ignore: cast_nullable_to_non_nullable
              as LoginEntities,
    ));
  }
}

/// @nodoc

class _$LoginStateLoadSuccessImpl implements _LoginStateLoadSuccess {
  const _$LoginStateLoadSuccessImpl(this.loginEntities);

  @override
  final LoginEntities loginEntities;

  @override
  String toString() {
    return 'LoginState.loadSuccess(loginEntities: $loginEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateLoadSuccessImpl &&
            (identical(other.loginEntities, loginEntities) ||
                other.loginEntities == loginEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateLoadSuccessImplCopyWith<_$LoginStateLoadSuccessImpl>
      get copyWith => __$$LoginStateLoadSuccessImplCopyWithImpl<
          _$LoginStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(LoginEntities loginEntities) loadSuccess,
  }) {
    return loadSuccess(loginEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(LoginEntities loginEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(loginEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(LoginEntities loginEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(loginEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoadFailure value) loadFailure,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(_LoginStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoadFailure value)? loadFailure,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(_LoginStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoadFailure value)? loadFailure,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(_LoginStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginStateLoadSuccess implements LoginState {
  const factory _LoginStateLoadSuccess(final LoginEntities loginEntities) =
      _$LoginStateLoadSuccessImpl;

  LoginEntities get loginEntities;
  @JsonKey(ignore: true)
  _$$LoginStateLoadSuccessImplCopyWith<_$LoginStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
