// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_buy_back_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterBuyBackEvent {
  RegisterBuyBackParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterBuyBackParams params)
        registerBuyBackEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterBuyBackParams params)? registerBuyBackEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterBuyBackParams params)? registerBuyBackEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterBuyBackEventCalled value)
        registerBuyBackEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterBuyBackEventCalled value)?
        registerBuyBackEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterBuyBackEventCalled value)?
        registerBuyBackEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterBuyBackEventCopyWith<RegisterBuyBackEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBuyBackEventCopyWith<$Res> {
  factory $RegisterBuyBackEventCopyWith(RegisterBuyBackEvent value,
          $Res Function(RegisterBuyBackEvent) then) =
      _$RegisterBuyBackEventCopyWithImpl<$Res, RegisterBuyBackEvent>;
  @useResult
  $Res call({RegisterBuyBackParams params});
}

/// @nodoc
class _$RegisterBuyBackEventCopyWithImpl<$Res,
        $Val extends RegisterBuyBackEvent>
    implements $RegisterBuyBackEventCopyWith<$Res> {
  _$RegisterBuyBackEventCopyWithImpl(this._value, this._then);

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
              as RegisterBuyBackParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterBuyBackEventCalledImplCopyWith<$Res>
    implements $RegisterBuyBackEventCopyWith<$Res> {
  factory _$$RegisterBuyBackEventCalledImplCopyWith(
          _$RegisterBuyBackEventCalledImpl value,
          $Res Function(_$RegisterBuyBackEventCalledImpl) then) =
      __$$RegisterBuyBackEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterBuyBackParams params});
}

/// @nodoc
class __$$RegisterBuyBackEventCalledImplCopyWithImpl<$Res>
    extends _$RegisterBuyBackEventCopyWithImpl<$Res,
        _$RegisterBuyBackEventCalledImpl>
    implements _$$RegisterBuyBackEventCalledImplCopyWith<$Res> {
  __$$RegisterBuyBackEventCalledImplCopyWithImpl(
      _$RegisterBuyBackEventCalledImpl _value,
      $Res Function(_$RegisterBuyBackEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$RegisterBuyBackEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as RegisterBuyBackParams,
    ));
  }
}

/// @nodoc

class _$RegisterBuyBackEventCalledImpl implements _RegisterBuyBackEventCalled {
  const _$RegisterBuyBackEventCalledImpl(this.params);

  @override
  final RegisterBuyBackParams params;

  @override
  String toString() {
    return 'RegisterBuyBackEvent.registerBuyBackEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterBuyBackEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterBuyBackEventCalledImplCopyWith<_$RegisterBuyBackEventCalledImpl>
      get copyWith => __$$RegisterBuyBackEventCalledImplCopyWithImpl<
          _$RegisterBuyBackEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterBuyBackParams params)
        registerBuyBackEventCalled,
  }) {
    return registerBuyBackEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterBuyBackParams params)? registerBuyBackEventCalled,
  }) {
    return registerBuyBackEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterBuyBackParams params)? registerBuyBackEventCalled,
    required TResult orElse(),
  }) {
    if (registerBuyBackEventCalled != null) {
      return registerBuyBackEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterBuyBackEventCalled value)
        registerBuyBackEventCalled,
  }) {
    return registerBuyBackEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterBuyBackEventCalled value)?
        registerBuyBackEventCalled,
  }) {
    return registerBuyBackEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterBuyBackEventCalled value)?
        registerBuyBackEventCalled,
    required TResult orElse(),
  }) {
    if (registerBuyBackEventCalled != null) {
      return registerBuyBackEventCalled(this);
    }
    return orElse();
  }
}

abstract class _RegisterBuyBackEventCalled implements RegisterBuyBackEvent {
  const factory _RegisterBuyBackEventCalled(
      final RegisterBuyBackParams params) = _$RegisterBuyBackEventCalledImpl;

  @override
  RegisterBuyBackParams get params;
  @override
  @JsonKey(ignore: true)
  _$$RegisterBuyBackEventCalledImplCopyWith<_$RegisterBuyBackEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterBuyBackState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterBuyBackStateInitial value) initial,
    required TResult Function(_RegisterBuyBackStateLoadFailure value)
        loadFailure,
    required TResult Function(RegisterBuyBackStateLoading value) loading,
    required TResult Function(_RegisterBuyBackStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterBuyBackStateInitial value)? initial,
    TResult? Function(_RegisterBuyBackStateLoadFailure value)? loadFailure,
    TResult? Function(RegisterBuyBackStateLoading value)? loading,
    TResult? Function(_RegisterBuyBackStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterBuyBackStateInitial value)? initial,
    TResult Function(_RegisterBuyBackStateLoadFailure value)? loadFailure,
    TResult Function(RegisterBuyBackStateLoading value)? loading,
    TResult Function(_RegisterBuyBackStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBuyBackStateCopyWith<$Res> {
  factory $RegisterBuyBackStateCopyWith(RegisterBuyBackState value,
          $Res Function(RegisterBuyBackState) then) =
      _$RegisterBuyBackStateCopyWithImpl<$Res, RegisterBuyBackState>;
}

/// @nodoc
class _$RegisterBuyBackStateCopyWithImpl<$Res,
        $Val extends RegisterBuyBackState>
    implements $RegisterBuyBackStateCopyWith<$Res> {
  _$RegisterBuyBackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterBuyBackStateInitialImplCopyWith<$Res> {
  factory _$$RegisterBuyBackStateInitialImplCopyWith(
          _$RegisterBuyBackStateInitialImpl value,
          $Res Function(_$RegisterBuyBackStateInitialImpl) then) =
      __$$RegisterBuyBackStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterBuyBackStateInitialImplCopyWithImpl<$Res>
    extends _$RegisterBuyBackStateCopyWithImpl<$Res,
        _$RegisterBuyBackStateInitialImpl>
    implements _$$RegisterBuyBackStateInitialImplCopyWith<$Res> {
  __$$RegisterBuyBackStateInitialImplCopyWithImpl(
      _$RegisterBuyBackStateInitialImpl _value,
      $Res Function(_$RegisterBuyBackStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterBuyBackStateInitialImpl
    implements _RegisterBuyBackStateInitial {
  const _$RegisterBuyBackStateInitialImpl();

  @override
  String toString() {
    return 'RegisterBuyBackState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterBuyBackStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)
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
    TResult? Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)?
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
    TResult Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)?
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
    required TResult Function(_RegisterBuyBackStateInitial value) initial,
    required TResult Function(_RegisterBuyBackStateLoadFailure value)
        loadFailure,
    required TResult Function(RegisterBuyBackStateLoading value) loading,
    required TResult Function(_RegisterBuyBackStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterBuyBackStateInitial value)? initial,
    TResult? Function(_RegisterBuyBackStateLoadFailure value)? loadFailure,
    TResult? Function(RegisterBuyBackStateLoading value)? loading,
    TResult? Function(_RegisterBuyBackStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterBuyBackStateInitial value)? initial,
    TResult Function(_RegisterBuyBackStateLoadFailure value)? loadFailure,
    TResult Function(RegisterBuyBackStateLoading value)? loading,
    TResult Function(_RegisterBuyBackStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RegisterBuyBackStateInitial implements RegisterBuyBackState {
  const factory _RegisterBuyBackStateInitial() =
      _$RegisterBuyBackStateInitialImpl;
}

/// @nodoc
abstract class _$$RegisterBuyBackStateLoadFailureImplCopyWith<$Res> {
  factory _$$RegisterBuyBackStateLoadFailureImplCopyWith(
          _$RegisterBuyBackStateLoadFailureImpl value,
          $Res Function(_$RegisterBuyBackStateLoadFailureImpl) then) =
      __$$RegisterBuyBackStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$RegisterBuyBackStateLoadFailureImplCopyWithImpl<$Res>
    extends _$RegisterBuyBackStateCopyWithImpl<$Res,
        _$RegisterBuyBackStateLoadFailureImpl>
    implements _$$RegisterBuyBackStateLoadFailureImplCopyWith<$Res> {
  __$$RegisterBuyBackStateLoadFailureImplCopyWithImpl(
      _$RegisterBuyBackStateLoadFailureImpl _value,
      $Res Function(_$RegisterBuyBackStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$RegisterBuyBackStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$RegisterBuyBackStateLoadFailureImpl
    implements _RegisterBuyBackStateLoadFailure {
  const _$RegisterBuyBackStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'RegisterBuyBackState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterBuyBackStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterBuyBackStateLoadFailureImplCopyWith<
          _$RegisterBuyBackStateLoadFailureImpl>
      get copyWith => __$$RegisterBuyBackStateLoadFailureImplCopyWithImpl<
          _$RegisterBuyBackStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)
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
    TResult? Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)?
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
    TResult Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)?
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
    required TResult Function(_RegisterBuyBackStateInitial value) initial,
    required TResult Function(_RegisterBuyBackStateLoadFailure value)
        loadFailure,
    required TResult Function(RegisterBuyBackStateLoading value) loading,
    required TResult Function(_RegisterBuyBackStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterBuyBackStateInitial value)? initial,
    TResult? Function(_RegisterBuyBackStateLoadFailure value)? loadFailure,
    TResult? Function(RegisterBuyBackStateLoading value)? loading,
    TResult? Function(_RegisterBuyBackStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterBuyBackStateInitial value)? initial,
    TResult Function(_RegisterBuyBackStateLoadFailure value)? loadFailure,
    TResult Function(RegisterBuyBackStateLoading value)? loading,
    TResult Function(_RegisterBuyBackStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _RegisterBuyBackStateLoadFailure
    implements RegisterBuyBackState {
  const factory _RegisterBuyBackStateLoadFailure(final Failure failure) =
      _$RegisterBuyBackStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$RegisterBuyBackStateLoadFailureImplCopyWith<
          _$RegisterBuyBackStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterBuyBackStateLoadingImplCopyWith<$Res> {
  factory _$$RegisterBuyBackStateLoadingImplCopyWith(
          _$RegisterBuyBackStateLoadingImpl value,
          $Res Function(_$RegisterBuyBackStateLoadingImpl) then) =
      __$$RegisterBuyBackStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterBuyBackStateLoadingImplCopyWithImpl<$Res>
    extends _$RegisterBuyBackStateCopyWithImpl<$Res,
        _$RegisterBuyBackStateLoadingImpl>
    implements _$$RegisterBuyBackStateLoadingImplCopyWith<$Res> {
  __$$RegisterBuyBackStateLoadingImplCopyWithImpl(
      _$RegisterBuyBackStateLoadingImpl _value,
      $Res Function(_$RegisterBuyBackStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterBuyBackStateLoadingImpl implements RegisterBuyBackStateLoading {
  const _$RegisterBuyBackStateLoadingImpl();

  @override
  String toString() {
    return 'RegisterBuyBackState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterBuyBackStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)
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
    TResult? Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)?
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
    TResult Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)?
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
    required TResult Function(_RegisterBuyBackStateInitial value) initial,
    required TResult Function(_RegisterBuyBackStateLoadFailure value)
        loadFailure,
    required TResult Function(RegisterBuyBackStateLoading value) loading,
    required TResult Function(_RegisterBuyBackStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterBuyBackStateInitial value)? initial,
    TResult? Function(_RegisterBuyBackStateLoadFailure value)? loadFailure,
    TResult? Function(RegisterBuyBackStateLoading value)? loading,
    TResult? Function(_RegisterBuyBackStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterBuyBackStateInitial value)? initial,
    TResult Function(_RegisterBuyBackStateLoadFailure value)? loadFailure,
    TResult Function(RegisterBuyBackStateLoading value)? loading,
    TResult Function(_RegisterBuyBackStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegisterBuyBackStateLoading implements RegisterBuyBackState {
  const factory RegisterBuyBackStateLoading() =
      _$RegisterBuyBackStateLoadingImpl;
}

/// @nodoc
abstract class _$$RegisterBuyBackStateLoadSuccessImplCopyWith<$Res> {
  factory _$$RegisterBuyBackStateLoadSuccessImplCopyWith(
          _$RegisterBuyBackStateLoadSuccessImpl value,
          $Res Function(_$RegisterBuyBackStateLoadSuccessImpl) then) =
      __$$RegisterBuyBackStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterBuyBackResponseEntities registerBuyBackResponseEntities});
}

/// @nodoc
class __$$RegisterBuyBackStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$RegisterBuyBackStateCopyWithImpl<$Res,
        _$RegisterBuyBackStateLoadSuccessImpl>
    implements _$$RegisterBuyBackStateLoadSuccessImplCopyWith<$Res> {
  __$$RegisterBuyBackStateLoadSuccessImplCopyWithImpl(
      _$RegisterBuyBackStateLoadSuccessImpl _value,
      $Res Function(_$RegisterBuyBackStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerBuyBackResponseEntities = null,
  }) {
    return _then(_$RegisterBuyBackStateLoadSuccessImpl(
      null == registerBuyBackResponseEntities
          ? _value.registerBuyBackResponseEntities
          : registerBuyBackResponseEntities // ignore: cast_nullable_to_non_nullable
              as RegisterBuyBackResponseEntities,
    ));
  }
}

/// @nodoc

class _$RegisterBuyBackStateLoadSuccessImpl
    implements _RegisterBuyBackStateLoadSuccess {
  const _$RegisterBuyBackStateLoadSuccessImpl(
      this.registerBuyBackResponseEntities);

  @override
  final RegisterBuyBackResponseEntities registerBuyBackResponseEntities;

  @override
  String toString() {
    return 'RegisterBuyBackState.loadSuccess(registerBuyBackResponseEntities: $registerBuyBackResponseEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterBuyBackStateLoadSuccessImpl &&
            (identical(other.registerBuyBackResponseEntities,
                    registerBuyBackResponseEntities) ||
                other.registerBuyBackResponseEntities ==
                    registerBuyBackResponseEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerBuyBackResponseEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterBuyBackStateLoadSuccessImplCopyWith<
          _$RegisterBuyBackStateLoadSuccessImpl>
      get copyWith => __$$RegisterBuyBackStateLoadSuccessImplCopyWithImpl<
          _$RegisterBuyBackStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)
        loadSuccess,
  }) {
    return loadSuccess(registerBuyBackResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(registerBuyBackResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            RegisterBuyBackResponseEntities registerBuyBackResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(registerBuyBackResponseEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterBuyBackStateInitial value) initial,
    required TResult Function(_RegisterBuyBackStateLoadFailure value)
        loadFailure,
    required TResult Function(RegisterBuyBackStateLoading value) loading,
    required TResult Function(_RegisterBuyBackStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterBuyBackStateInitial value)? initial,
    TResult? Function(_RegisterBuyBackStateLoadFailure value)? loadFailure,
    TResult? Function(RegisterBuyBackStateLoading value)? loading,
    TResult? Function(_RegisterBuyBackStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterBuyBackStateInitial value)? initial,
    TResult Function(_RegisterBuyBackStateLoadFailure value)? loadFailure,
    TResult Function(RegisterBuyBackStateLoading value)? loading,
    TResult Function(_RegisterBuyBackStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegisterBuyBackStateLoadSuccess
    implements RegisterBuyBackState {
  const factory _RegisterBuyBackStateLoadSuccess(
          final RegisterBuyBackResponseEntities
              registerBuyBackResponseEntities) =
      _$RegisterBuyBackStateLoadSuccessImpl;

  RegisterBuyBackResponseEntities get registerBuyBackResponseEntities;
  @JsonKey(ignore: true)
  _$$RegisterBuyBackStateLoadSuccessImplCopyWith<
          _$RegisterBuyBackStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
