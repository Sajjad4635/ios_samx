// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpOtpEvent {
  SignUpOtpParams get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpOtpParams param) signUpOtpEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpOtpParams param)? signUpOtpEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpOtpParams param)? signUpOtpEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpOtpEventCalled value) signUpOtpEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpOtpEventCalled value)? signUpOtpEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpOtpEventCalled value)? signUpOtpEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpOtpEventCopyWith<SignUpOtpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpOtpEventCopyWith<$Res> {
  factory $SignUpOtpEventCopyWith(
          SignUpOtpEvent value, $Res Function(SignUpOtpEvent) then) =
      _$SignUpOtpEventCopyWithImpl<$Res, SignUpOtpEvent>;
  @useResult
  $Res call({SignUpOtpParams param});
}

/// @nodoc
class _$SignUpOtpEventCopyWithImpl<$Res, $Val extends SignUpOtpEvent>
    implements $SignUpOtpEventCopyWith<$Res> {
  _$SignUpOtpEventCopyWithImpl(this._value, this._then);

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
              as SignUpOtpParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpOtpEventCalledImplCopyWith<$Res>
    implements $SignUpOtpEventCopyWith<$Res> {
  factory _$$SignUpOtpEventCalledImplCopyWith(_$SignUpOtpEventCalledImpl value,
          $Res Function(_$SignUpOtpEventCalledImpl) then) =
      __$$SignUpOtpEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignUpOtpParams param});
}

/// @nodoc
class __$$SignUpOtpEventCalledImplCopyWithImpl<$Res>
    extends _$SignUpOtpEventCopyWithImpl<$Res, _$SignUpOtpEventCalledImpl>
    implements _$$SignUpOtpEventCalledImplCopyWith<$Res> {
  __$$SignUpOtpEventCalledImplCopyWithImpl(_$SignUpOtpEventCalledImpl _value,
      $Res Function(_$SignUpOtpEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$SignUpOtpEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as SignUpOtpParams,
    ));
  }
}

/// @nodoc

class _$SignUpOtpEventCalledImpl implements _SignUpOtpEventCalled {
  const _$SignUpOtpEventCalledImpl(this.param);

  @override
  final SignUpOtpParams param;

  @override
  String toString() {
    return 'SignUpOtpEvent.signUpOtpEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpOtpEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpOtpEventCalledImplCopyWith<_$SignUpOtpEventCalledImpl>
      get copyWith =>
          __$$SignUpOtpEventCalledImplCopyWithImpl<_$SignUpOtpEventCalledImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpOtpParams param) signUpOtpEventCalled,
  }) {
    return signUpOtpEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpOtpParams param)? signUpOtpEventCalled,
  }) {
    return signUpOtpEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpOtpParams param)? signUpOtpEventCalled,
    required TResult orElse(),
  }) {
    if (signUpOtpEventCalled != null) {
      return signUpOtpEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpOtpEventCalled value) signUpOtpEventCalled,
  }) {
    return signUpOtpEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpOtpEventCalled value)? signUpOtpEventCalled,
  }) {
    return signUpOtpEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpOtpEventCalled value)? signUpOtpEventCalled,
    required TResult orElse(),
  }) {
    if (signUpOtpEventCalled != null) {
      return signUpOtpEventCalled(this);
    }
    return orElse();
  }
}

abstract class _SignUpOtpEventCalled implements SignUpOtpEvent {
  const factory _SignUpOtpEventCalled(final SignUpOtpParams param) =
      _$SignUpOtpEventCalledImpl;

  @override
  SignUpOtpParams get param;
  @override
  @JsonKey(ignore: true)
  _$$SignUpOtpEventCalledImplCopyWith<_$SignUpOtpEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpOtpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SignUpOtpEntities signUpOtpEntities) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SignUpOtpEntities signUpOtpEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SignUpOtpEntities signUpOtpEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpOtpStateInitial value) initial,
    required TResult Function(_SignUpOtpStateLoadFailure value) loadFailure,
    required TResult Function(SignUpOtpStateLoading value) loading,
    required TResult Function(_SignUpOtpStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpOtpStateInitial value)? initial,
    TResult? Function(_SignUpOtpStateLoadFailure value)? loadFailure,
    TResult? Function(SignUpOtpStateLoading value)? loading,
    TResult? Function(_SignUpOtpStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpOtpStateInitial value)? initial,
    TResult Function(_SignUpOtpStateLoadFailure value)? loadFailure,
    TResult Function(SignUpOtpStateLoading value)? loading,
    TResult Function(_SignUpOtpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpOtpStateCopyWith<$Res> {
  factory $SignUpOtpStateCopyWith(
          SignUpOtpState value, $Res Function(SignUpOtpState) then) =
      _$SignUpOtpStateCopyWithImpl<$Res, SignUpOtpState>;
}

/// @nodoc
class _$SignUpOtpStateCopyWithImpl<$Res, $Val extends SignUpOtpState>
    implements $SignUpOtpStateCopyWith<$Res> {
  _$SignUpOtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpOtpStateInitialImplCopyWith<$Res> {
  factory _$$SignUpOtpStateInitialImplCopyWith(
          _$SignUpOtpStateInitialImpl value,
          $Res Function(_$SignUpOtpStateInitialImpl) then) =
      __$$SignUpOtpStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpOtpStateInitialImplCopyWithImpl<$Res>
    extends _$SignUpOtpStateCopyWithImpl<$Res, _$SignUpOtpStateInitialImpl>
    implements _$$SignUpOtpStateInitialImplCopyWith<$Res> {
  __$$SignUpOtpStateInitialImplCopyWithImpl(_$SignUpOtpStateInitialImpl _value,
      $Res Function(_$SignUpOtpStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpOtpStateInitialImpl implements _SignUpOtpStateInitial {
  const _$SignUpOtpStateInitialImpl();

  @override
  String toString() {
    return 'SignUpOtpState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpOtpStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SignUpOtpEntities signUpOtpEntities) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SignUpOtpEntities signUpOtpEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SignUpOtpEntities signUpOtpEntities)? loadSuccess,
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
    required TResult Function(_SignUpOtpStateInitial value) initial,
    required TResult Function(_SignUpOtpStateLoadFailure value) loadFailure,
    required TResult Function(SignUpOtpStateLoading value) loading,
    required TResult Function(_SignUpOtpStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpOtpStateInitial value)? initial,
    TResult? Function(_SignUpOtpStateLoadFailure value)? loadFailure,
    TResult? Function(SignUpOtpStateLoading value)? loading,
    TResult? Function(_SignUpOtpStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpOtpStateInitial value)? initial,
    TResult Function(_SignUpOtpStateLoadFailure value)? loadFailure,
    TResult Function(SignUpOtpStateLoading value)? loading,
    TResult Function(_SignUpOtpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SignUpOtpStateInitial implements SignUpOtpState {
  const factory _SignUpOtpStateInitial() = _$SignUpOtpStateInitialImpl;
}

/// @nodoc
abstract class _$$SignUpOtpStateLoadFailureImplCopyWith<$Res> {
  factory _$$SignUpOtpStateLoadFailureImplCopyWith(
          _$SignUpOtpStateLoadFailureImpl value,
          $Res Function(_$SignUpOtpStateLoadFailureImpl) then) =
      __$$SignUpOtpStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$SignUpOtpStateLoadFailureImplCopyWithImpl<$Res>
    extends _$SignUpOtpStateCopyWithImpl<$Res, _$SignUpOtpStateLoadFailureImpl>
    implements _$$SignUpOtpStateLoadFailureImplCopyWith<$Res> {
  __$$SignUpOtpStateLoadFailureImplCopyWithImpl(
      _$SignUpOtpStateLoadFailureImpl _value,
      $Res Function(_$SignUpOtpStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$SignUpOtpStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$SignUpOtpStateLoadFailureImpl implements _SignUpOtpStateLoadFailure {
  const _$SignUpOtpStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SignUpOtpState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpOtpStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpOtpStateLoadFailureImplCopyWith<_$SignUpOtpStateLoadFailureImpl>
      get copyWith => __$$SignUpOtpStateLoadFailureImplCopyWithImpl<
          _$SignUpOtpStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SignUpOtpEntities signUpOtpEntities) loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SignUpOtpEntities signUpOtpEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SignUpOtpEntities signUpOtpEntities)? loadSuccess,
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
    required TResult Function(_SignUpOtpStateInitial value) initial,
    required TResult Function(_SignUpOtpStateLoadFailure value) loadFailure,
    required TResult Function(SignUpOtpStateLoading value) loading,
    required TResult Function(_SignUpOtpStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpOtpStateInitial value)? initial,
    TResult? Function(_SignUpOtpStateLoadFailure value)? loadFailure,
    TResult? Function(SignUpOtpStateLoading value)? loading,
    TResult? Function(_SignUpOtpStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpOtpStateInitial value)? initial,
    TResult Function(_SignUpOtpStateLoadFailure value)? loadFailure,
    TResult Function(SignUpOtpStateLoading value)? loading,
    TResult Function(_SignUpOtpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _SignUpOtpStateLoadFailure implements SignUpOtpState {
  const factory _SignUpOtpStateLoadFailure(final Failure failure) =
      _$SignUpOtpStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$SignUpOtpStateLoadFailureImplCopyWith<_$SignUpOtpStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpOtpStateLoadingImplCopyWith<$Res> {
  factory _$$SignUpOtpStateLoadingImplCopyWith(
          _$SignUpOtpStateLoadingImpl value,
          $Res Function(_$SignUpOtpStateLoadingImpl) then) =
      __$$SignUpOtpStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpOtpStateLoadingImplCopyWithImpl<$Res>
    extends _$SignUpOtpStateCopyWithImpl<$Res, _$SignUpOtpStateLoadingImpl>
    implements _$$SignUpOtpStateLoadingImplCopyWith<$Res> {
  __$$SignUpOtpStateLoadingImplCopyWithImpl(_$SignUpOtpStateLoadingImpl _value,
      $Res Function(_$SignUpOtpStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpOtpStateLoadingImpl implements SignUpOtpStateLoading {
  const _$SignUpOtpStateLoadingImpl();

  @override
  String toString() {
    return 'SignUpOtpState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpOtpStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SignUpOtpEntities signUpOtpEntities) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SignUpOtpEntities signUpOtpEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SignUpOtpEntities signUpOtpEntities)? loadSuccess,
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
    required TResult Function(_SignUpOtpStateInitial value) initial,
    required TResult Function(_SignUpOtpStateLoadFailure value) loadFailure,
    required TResult Function(SignUpOtpStateLoading value) loading,
    required TResult Function(_SignUpOtpStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpOtpStateInitial value)? initial,
    TResult? Function(_SignUpOtpStateLoadFailure value)? loadFailure,
    TResult? Function(SignUpOtpStateLoading value)? loading,
    TResult? Function(_SignUpOtpStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpOtpStateInitial value)? initial,
    TResult Function(_SignUpOtpStateLoadFailure value)? loadFailure,
    TResult Function(SignUpOtpStateLoading value)? loading,
    TResult Function(_SignUpOtpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignUpOtpStateLoading implements SignUpOtpState {
  const factory SignUpOtpStateLoading() = _$SignUpOtpStateLoadingImpl;
}

/// @nodoc
abstract class _$$SignUpOtpStateLoadSuccessImplCopyWith<$Res> {
  factory _$$SignUpOtpStateLoadSuccessImplCopyWith(
          _$SignUpOtpStateLoadSuccessImpl value,
          $Res Function(_$SignUpOtpStateLoadSuccessImpl) then) =
      __$$SignUpOtpStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpOtpEntities signUpOtpEntities});
}

/// @nodoc
class __$$SignUpOtpStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$SignUpOtpStateCopyWithImpl<$Res, _$SignUpOtpStateLoadSuccessImpl>
    implements _$$SignUpOtpStateLoadSuccessImplCopyWith<$Res> {
  __$$SignUpOtpStateLoadSuccessImplCopyWithImpl(
      _$SignUpOtpStateLoadSuccessImpl _value,
      $Res Function(_$SignUpOtpStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpOtpEntities = null,
  }) {
    return _then(_$SignUpOtpStateLoadSuccessImpl(
      null == signUpOtpEntities
          ? _value.signUpOtpEntities
          : signUpOtpEntities // ignore: cast_nullable_to_non_nullable
              as SignUpOtpEntities,
    ));
  }
}

/// @nodoc

class _$SignUpOtpStateLoadSuccessImpl implements _SignUpOtpStateLoadSuccess {
  const _$SignUpOtpStateLoadSuccessImpl(this.signUpOtpEntities);

  @override
  final SignUpOtpEntities signUpOtpEntities;

  @override
  String toString() {
    return 'SignUpOtpState.loadSuccess(signUpOtpEntities: $signUpOtpEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpOtpStateLoadSuccessImpl &&
            (identical(other.signUpOtpEntities, signUpOtpEntities) ||
                other.signUpOtpEntities == signUpOtpEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpOtpEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpOtpStateLoadSuccessImplCopyWith<_$SignUpOtpStateLoadSuccessImpl>
      get copyWith => __$$SignUpOtpStateLoadSuccessImplCopyWithImpl<
          _$SignUpOtpStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SignUpOtpEntities signUpOtpEntities) loadSuccess,
  }) {
    return loadSuccess(signUpOtpEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SignUpOtpEntities signUpOtpEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(signUpOtpEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SignUpOtpEntities signUpOtpEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(signUpOtpEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpOtpStateInitial value) initial,
    required TResult Function(_SignUpOtpStateLoadFailure value) loadFailure,
    required TResult Function(SignUpOtpStateLoading value) loading,
    required TResult Function(_SignUpOtpStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpOtpStateInitial value)? initial,
    TResult? Function(_SignUpOtpStateLoadFailure value)? loadFailure,
    TResult? Function(SignUpOtpStateLoading value)? loading,
    TResult? Function(_SignUpOtpStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpOtpStateInitial value)? initial,
    TResult Function(_SignUpOtpStateLoadFailure value)? loadFailure,
    TResult Function(SignUpOtpStateLoading value)? loading,
    TResult Function(_SignUpOtpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _SignUpOtpStateLoadSuccess implements SignUpOtpState {
  const factory _SignUpOtpStateLoadSuccess(
          final SignUpOtpEntities signUpOtpEntities) =
      _$SignUpOtpStateLoadSuccessImpl;

  SignUpOtpEntities get signUpOtpEntities;
  @JsonKey(ignore: true)
  _$$SignUpOtpStateLoadSuccessImplCopyWith<_$SignUpOtpStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
