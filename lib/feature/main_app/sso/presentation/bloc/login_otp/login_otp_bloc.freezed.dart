// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginOtpEvent {
  LoginOtpParams get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginOtpParams param) loginEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginOtpParams param)? loginEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginOtpParams param)? loginEventCalled,
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
  $LoginOtpEventCopyWith<LoginOtpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginOtpEventCopyWith<$Res> {
  factory $LoginOtpEventCopyWith(
          LoginOtpEvent value, $Res Function(LoginOtpEvent) then) =
      _$LoginOtpEventCopyWithImpl<$Res, LoginOtpEvent>;
  @useResult
  $Res call({LoginOtpParams param});
}

/// @nodoc
class _$LoginOtpEventCopyWithImpl<$Res, $Val extends LoginOtpEvent>
    implements $LoginOtpEventCopyWith<$Res> {
  _$LoginOtpEventCopyWithImpl(this._value, this._then);

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
              as LoginOtpParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginEventCalledImplCopyWith<$Res>
    implements $LoginOtpEventCopyWith<$Res> {
  factory _$$LoginEventCalledImplCopyWith(_$LoginEventCalledImpl value,
          $Res Function(_$LoginEventCalledImpl) then) =
      __$$LoginEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginOtpParams param});
}

/// @nodoc
class __$$LoginEventCalledImplCopyWithImpl<$Res>
    extends _$LoginOtpEventCopyWithImpl<$Res, _$LoginEventCalledImpl>
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
              as LoginOtpParams,
    ));
  }
}

/// @nodoc

class _$LoginEventCalledImpl implements _LoginEventCalled {
  const _$LoginEventCalledImpl(this.param);

  @override
  final LoginOtpParams param;

  @override
  String toString() {
    return 'LoginOtpEvent.loginEventCalled(param: $param)';
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
    required TResult Function(LoginOtpParams param) loginEventCalled,
  }) {
    return loginEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginOtpParams param)? loginEventCalled,
  }) {
    return loginEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginOtpParams param)? loginEventCalled,
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

abstract class _LoginEventCalled implements LoginOtpEvent {
  const factory _LoginEventCalled(final LoginOtpParams param) =
      _$LoginEventCalledImpl;

  @override
  LoginOtpParams get param;
  @override
  @JsonKey(ignore: true)
  _$$LoginEventCalledImplCopyWith<_$LoginEventCalledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginOtpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(LoginOtpEntities loginOtpEntities) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(LoginOtpEntities loginOtpEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(LoginOtpEntities loginOtpEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginOtpStateInitial value) initial,
    required TResult Function(_LoginOtpStateLoadFailure value) loadFailure,
    required TResult Function(LoginOtpStateLoading value) loading,
    required TResult Function(_LoginOtpStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginOtpStateInitial value)? initial,
    TResult? Function(_LoginOtpStateLoadFailure value)? loadFailure,
    TResult? Function(LoginOtpStateLoading value)? loading,
    TResult? Function(_LoginOtpStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginOtpStateInitial value)? initial,
    TResult Function(_LoginOtpStateLoadFailure value)? loadFailure,
    TResult Function(LoginOtpStateLoading value)? loading,
    TResult Function(_LoginOtpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginOtpStateCopyWith<$Res> {
  factory $LoginOtpStateCopyWith(
          LoginOtpState value, $Res Function(LoginOtpState) then) =
      _$LoginOtpStateCopyWithImpl<$Res, LoginOtpState>;
}

/// @nodoc
class _$LoginOtpStateCopyWithImpl<$Res, $Val extends LoginOtpState>
    implements $LoginOtpStateCopyWith<$Res> {
  _$LoginOtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginOtpStateInitialImplCopyWith<$Res> {
  factory _$$LoginOtpStateInitialImplCopyWith(_$LoginOtpStateInitialImpl value,
          $Res Function(_$LoginOtpStateInitialImpl) then) =
      __$$LoginOtpStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginOtpStateInitialImplCopyWithImpl<$Res>
    extends _$LoginOtpStateCopyWithImpl<$Res, _$LoginOtpStateInitialImpl>
    implements _$$LoginOtpStateInitialImplCopyWith<$Res> {
  __$$LoginOtpStateInitialImplCopyWithImpl(_$LoginOtpStateInitialImpl _value,
      $Res Function(_$LoginOtpStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginOtpStateInitialImpl implements _LoginOtpStateInitial {
  const _$LoginOtpStateInitialImpl();

  @override
  String toString() {
    return 'LoginOtpState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginOtpStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(LoginOtpEntities loginOtpEntities) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(LoginOtpEntities loginOtpEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(LoginOtpEntities loginOtpEntities)? loadSuccess,
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
    required TResult Function(_LoginOtpStateInitial value) initial,
    required TResult Function(_LoginOtpStateLoadFailure value) loadFailure,
    required TResult Function(LoginOtpStateLoading value) loading,
    required TResult Function(_LoginOtpStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginOtpStateInitial value)? initial,
    TResult? Function(_LoginOtpStateLoadFailure value)? loadFailure,
    TResult? Function(LoginOtpStateLoading value)? loading,
    TResult? Function(_LoginOtpStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginOtpStateInitial value)? initial,
    TResult Function(_LoginOtpStateLoadFailure value)? loadFailure,
    TResult Function(LoginOtpStateLoading value)? loading,
    TResult Function(_LoginOtpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoginOtpStateInitial implements LoginOtpState {
  const factory _LoginOtpStateInitial() = _$LoginOtpStateInitialImpl;
}

/// @nodoc
abstract class _$$LoginOtpStateLoadFailureImplCopyWith<$Res> {
  factory _$$LoginOtpStateLoadFailureImplCopyWith(
          _$LoginOtpStateLoadFailureImpl value,
          $Res Function(_$LoginOtpStateLoadFailureImpl) then) =
      __$$LoginOtpStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$LoginOtpStateLoadFailureImplCopyWithImpl<$Res>
    extends _$LoginOtpStateCopyWithImpl<$Res, _$LoginOtpStateLoadFailureImpl>
    implements _$$LoginOtpStateLoadFailureImplCopyWith<$Res> {
  __$$LoginOtpStateLoadFailureImplCopyWithImpl(
      _$LoginOtpStateLoadFailureImpl _value,
      $Res Function(_$LoginOtpStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoginOtpStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$LoginOtpStateLoadFailureImpl implements _LoginOtpStateLoadFailure {
  const _$LoginOtpStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'LoginOtpState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginOtpStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginOtpStateLoadFailureImplCopyWith<_$LoginOtpStateLoadFailureImpl>
      get copyWith => __$$LoginOtpStateLoadFailureImplCopyWithImpl<
          _$LoginOtpStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(LoginOtpEntities loginOtpEntities) loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(LoginOtpEntities loginOtpEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(LoginOtpEntities loginOtpEntities)? loadSuccess,
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
    required TResult Function(_LoginOtpStateInitial value) initial,
    required TResult Function(_LoginOtpStateLoadFailure value) loadFailure,
    required TResult Function(LoginOtpStateLoading value) loading,
    required TResult Function(_LoginOtpStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginOtpStateInitial value)? initial,
    TResult? Function(_LoginOtpStateLoadFailure value)? loadFailure,
    TResult? Function(LoginOtpStateLoading value)? loading,
    TResult? Function(_LoginOtpStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginOtpStateInitial value)? initial,
    TResult Function(_LoginOtpStateLoadFailure value)? loadFailure,
    TResult Function(LoginOtpStateLoading value)? loading,
    TResult Function(_LoginOtpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoginOtpStateLoadFailure implements LoginOtpState {
  const factory _LoginOtpStateLoadFailure(final Failure failure) =
      _$LoginOtpStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$LoginOtpStateLoadFailureImplCopyWith<_$LoginOtpStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginOtpStateLoadingImplCopyWith<$Res> {
  factory _$$LoginOtpStateLoadingImplCopyWith(_$LoginOtpStateLoadingImpl value,
          $Res Function(_$LoginOtpStateLoadingImpl) then) =
      __$$LoginOtpStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginOtpStateLoadingImplCopyWithImpl<$Res>
    extends _$LoginOtpStateCopyWithImpl<$Res, _$LoginOtpStateLoadingImpl>
    implements _$$LoginOtpStateLoadingImplCopyWith<$Res> {
  __$$LoginOtpStateLoadingImplCopyWithImpl(_$LoginOtpStateLoadingImpl _value,
      $Res Function(_$LoginOtpStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginOtpStateLoadingImpl implements LoginOtpStateLoading {
  const _$LoginOtpStateLoadingImpl();

  @override
  String toString() {
    return 'LoginOtpState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginOtpStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(LoginOtpEntities loginOtpEntities) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(LoginOtpEntities loginOtpEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(LoginOtpEntities loginOtpEntities)? loadSuccess,
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
    required TResult Function(_LoginOtpStateInitial value) initial,
    required TResult Function(_LoginOtpStateLoadFailure value) loadFailure,
    required TResult Function(LoginOtpStateLoading value) loading,
    required TResult Function(_LoginOtpStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginOtpStateInitial value)? initial,
    TResult? Function(_LoginOtpStateLoadFailure value)? loadFailure,
    TResult? Function(LoginOtpStateLoading value)? loading,
    TResult? Function(_LoginOtpStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginOtpStateInitial value)? initial,
    TResult Function(_LoginOtpStateLoadFailure value)? loadFailure,
    TResult Function(LoginOtpStateLoading value)? loading,
    TResult Function(_LoginOtpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginOtpStateLoading implements LoginOtpState {
  const factory LoginOtpStateLoading() = _$LoginOtpStateLoadingImpl;
}

/// @nodoc
abstract class _$$LoginOtpStateLoadSuccessImplCopyWith<$Res> {
  factory _$$LoginOtpStateLoadSuccessImplCopyWith(
          _$LoginOtpStateLoadSuccessImpl value,
          $Res Function(_$LoginOtpStateLoadSuccessImpl) then) =
      __$$LoginOtpStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginOtpEntities loginOtpEntities});
}

/// @nodoc
class __$$LoginOtpStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$LoginOtpStateCopyWithImpl<$Res, _$LoginOtpStateLoadSuccessImpl>
    implements _$$LoginOtpStateLoadSuccessImplCopyWith<$Res> {
  __$$LoginOtpStateLoadSuccessImplCopyWithImpl(
      _$LoginOtpStateLoadSuccessImpl _value,
      $Res Function(_$LoginOtpStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginOtpEntities = null,
  }) {
    return _then(_$LoginOtpStateLoadSuccessImpl(
      null == loginOtpEntities
          ? _value.loginOtpEntities
          : loginOtpEntities // ignore: cast_nullable_to_non_nullable
              as LoginOtpEntities,
    ));
  }
}

/// @nodoc

class _$LoginOtpStateLoadSuccessImpl implements _LoginOtpStateLoadSuccess {
  const _$LoginOtpStateLoadSuccessImpl(this.loginOtpEntities);

  @override
  final LoginOtpEntities loginOtpEntities;

  @override
  String toString() {
    return 'LoginOtpState.loadSuccess(loginOtpEntities: $loginOtpEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginOtpStateLoadSuccessImpl &&
            (identical(other.loginOtpEntities, loginOtpEntities) ||
                other.loginOtpEntities == loginOtpEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginOtpEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginOtpStateLoadSuccessImplCopyWith<_$LoginOtpStateLoadSuccessImpl>
      get copyWith => __$$LoginOtpStateLoadSuccessImplCopyWithImpl<
          _$LoginOtpStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(LoginOtpEntities loginOtpEntities) loadSuccess,
  }) {
    return loadSuccess(loginOtpEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(LoginOtpEntities loginOtpEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(loginOtpEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(LoginOtpEntities loginOtpEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(loginOtpEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginOtpStateInitial value) initial,
    required TResult Function(_LoginOtpStateLoadFailure value) loadFailure,
    required TResult Function(LoginOtpStateLoading value) loading,
    required TResult Function(_LoginOtpStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginOtpStateInitial value)? initial,
    TResult? Function(_LoginOtpStateLoadFailure value)? loadFailure,
    TResult? Function(LoginOtpStateLoading value)? loading,
    TResult? Function(_LoginOtpStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginOtpStateInitial value)? initial,
    TResult Function(_LoginOtpStateLoadFailure value)? loadFailure,
    TResult Function(LoginOtpStateLoading value)? loading,
    TResult Function(_LoginOtpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginOtpStateLoadSuccess implements LoginOtpState {
  const factory _LoginOtpStateLoadSuccess(
      final LoginOtpEntities loginOtpEntities) = _$LoginOtpStateLoadSuccessImpl;

  LoginOtpEntities get loginOtpEntities;
  @JsonKey(ignore: true)
  _$$LoginOtpStateLoadSuccessImplCopyWith<_$LoginOtpStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
