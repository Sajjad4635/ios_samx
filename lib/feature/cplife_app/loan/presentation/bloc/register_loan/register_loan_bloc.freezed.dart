// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_loan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterLoanEvent {
  RegisterLoanParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterLoanParam param) registerLoanEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterLoanParam param)? registerLoanEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterLoanParam param)? registerLoanEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterLoanEventCalled value)
        registerLoanEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterLoanEventCalled value)? registerLoanEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterLoanEventCalled value)? registerLoanEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterLoanEventCopyWith<RegisterLoanEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterLoanEventCopyWith<$Res> {
  factory $RegisterLoanEventCopyWith(
          RegisterLoanEvent value, $Res Function(RegisterLoanEvent) then) =
      _$RegisterLoanEventCopyWithImpl<$Res, RegisterLoanEvent>;
  @useResult
  $Res call({RegisterLoanParam param});
}

/// @nodoc
class _$RegisterLoanEventCopyWithImpl<$Res, $Val extends RegisterLoanEvent>
    implements $RegisterLoanEventCopyWith<$Res> {
  _$RegisterLoanEventCopyWithImpl(this._value, this._then);

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
              as RegisterLoanParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterLoanEventCalledImplCopyWith<$Res>
    implements $RegisterLoanEventCopyWith<$Res> {
  factory _$$RegisterLoanEventCalledImplCopyWith(
          _$RegisterLoanEventCalledImpl value,
          $Res Function(_$RegisterLoanEventCalledImpl) then) =
      __$$RegisterLoanEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterLoanParam param});
}

/// @nodoc
class __$$RegisterLoanEventCalledImplCopyWithImpl<$Res>
    extends _$RegisterLoanEventCopyWithImpl<$Res, _$RegisterLoanEventCalledImpl>
    implements _$$RegisterLoanEventCalledImplCopyWith<$Res> {
  __$$RegisterLoanEventCalledImplCopyWithImpl(
      _$RegisterLoanEventCalledImpl _value,
      $Res Function(_$RegisterLoanEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$RegisterLoanEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as RegisterLoanParam,
    ));
  }
}

/// @nodoc

class _$RegisterLoanEventCalledImpl implements _RegisterLoanEventCalled {
  const _$RegisterLoanEventCalledImpl(this.param);

  @override
  final RegisterLoanParam param;

  @override
  String toString() {
    return 'RegisterLoanEvent.registerLoanEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterLoanEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterLoanEventCalledImplCopyWith<_$RegisterLoanEventCalledImpl>
      get copyWith => __$$RegisterLoanEventCalledImplCopyWithImpl<
          _$RegisterLoanEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterLoanParam param) registerLoanEventCalled,
  }) {
    return registerLoanEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterLoanParam param)? registerLoanEventCalled,
  }) {
    return registerLoanEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterLoanParam param)? registerLoanEventCalled,
    required TResult orElse(),
  }) {
    if (registerLoanEventCalled != null) {
      return registerLoanEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterLoanEventCalled value)
        registerLoanEventCalled,
  }) {
    return registerLoanEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterLoanEventCalled value)? registerLoanEventCalled,
  }) {
    return registerLoanEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterLoanEventCalled value)? registerLoanEventCalled,
    required TResult orElse(),
  }) {
    if (registerLoanEventCalled != null) {
      return registerLoanEventCalled(this);
    }
    return orElse();
  }
}

abstract class _RegisterLoanEventCalled implements RegisterLoanEvent {
  const factory _RegisterLoanEventCalled(final RegisterLoanParam param) =
      _$RegisterLoanEventCalledImpl;

  @override
  RegisterLoanParam get param;
  @override
  @JsonKey(ignore: true)
  _$$RegisterLoanEventCalledImplCopyWith<_$RegisterLoanEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterLoanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            RegisterLoanResponseEntities registerLoanResponseEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            RegisterLoanResponseEntities registerLoanResponseEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(RegisterLoanResponseEntities registerLoanResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterLoanInitial value) initial,
    required TResult Function(_RegisterLoanStateLoadFailure value) loadFailure,
    required TResult Function(RegisterLoanStateLoading value) loading,
    required TResult Function(_RegisterLoanStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterLoanInitial value)? initial,
    TResult? Function(_RegisterLoanStateLoadFailure value)? loadFailure,
    TResult? Function(RegisterLoanStateLoading value)? loading,
    TResult? Function(_RegisterLoanStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterLoanInitial value)? initial,
    TResult Function(_RegisterLoanStateLoadFailure value)? loadFailure,
    TResult Function(RegisterLoanStateLoading value)? loading,
    TResult Function(_RegisterLoanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterLoanStateCopyWith<$Res> {
  factory $RegisterLoanStateCopyWith(
          RegisterLoanState value, $Res Function(RegisterLoanState) then) =
      _$RegisterLoanStateCopyWithImpl<$Res, RegisterLoanState>;
}

/// @nodoc
class _$RegisterLoanStateCopyWithImpl<$Res, $Val extends RegisterLoanState>
    implements $RegisterLoanStateCopyWith<$Res> {
  _$RegisterLoanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterLoanInitialImplCopyWith<$Res> {
  factory _$$RegisterLoanInitialImplCopyWith(_$RegisterLoanInitialImpl value,
          $Res Function(_$RegisterLoanInitialImpl) then) =
      __$$RegisterLoanInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterLoanInitialImplCopyWithImpl<$Res>
    extends _$RegisterLoanStateCopyWithImpl<$Res, _$RegisterLoanInitialImpl>
    implements _$$RegisterLoanInitialImplCopyWith<$Res> {
  __$$RegisterLoanInitialImplCopyWithImpl(_$RegisterLoanInitialImpl _value,
      $Res Function(_$RegisterLoanInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterLoanInitialImpl implements _RegisterLoanInitial {
  const _$RegisterLoanInitialImpl();

  @override
  String toString() {
    return 'RegisterLoanState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterLoanInitialImpl);
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
            RegisterLoanResponseEntities registerLoanResponseEntities)
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
            RegisterLoanResponseEntities registerLoanResponseEntities)?
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
    TResult Function(RegisterLoanResponseEntities registerLoanResponseEntities)?
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
    required TResult Function(_RegisterLoanInitial value) initial,
    required TResult Function(_RegisterLoanStateLoadFailure value) loadFailure,
    required TResult Function(RegisterLoanStateLoading value) loading,
    required TResult Function(_RegisterLoanStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterLoanInitial value)? initial,
    TResult? Function(_RegisterLoanStateLoadFailure value)? loadFailure,
    TResult? Function(RegisterLoanStateLoading value)? loading,
    TResult? Function(_RegisterLoanStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterLoanInitial value)? initial,
    TResult Function(_RegisterLoanStateLoadFailure value)? loadFailure,
    TResult Function(RegisterLoanStateLoading value)? loading,
    TResult Function(_RegisterLoanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RegisterLoanInitial implements RegisterLoanState {
  const factory _RegisterLoanInitial() = _$RegisterLoanInitialImpl;
}

/// @nodoc
abstract class _$$RegisterLoanStateLoadFailureImplCopyWith<$Res> {
  factory _$$RegisterLoanStateLoadFailureImplCopyWith(
          _$RegisterLoanStateLoadFailureImpl value,
          $Res Function(_$RegisterLoanStateLoadFailureImpl) then) =
      __$$RegisterLoanStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$RegisterLoanStateLoadFailureImplCopyWithImpl<$Res>
    extends _$RegisterLoanStateCopyWithImpl<$Res,
        _$RegisterLoanStateLoadFailureImpl>
    implements _$$RegisterLoanStateLoadFailureImplCopyWith<$Res> {
  __$$RegisterLoanStateLoadFailureImplCopyWithImpl(
      _$RegisterLoanStateLoadFailureImpl _value,
      $Res Function(_$RegisterLoanStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$RegisterLoanStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$RegisterLoanStateLoadFailureImpl
    implements _RegisterLoanStateLoadFailure {
  const _$RegisterLoanStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'RegisterLoanState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterLoanStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterLoanStateLoadFailureImplCopyWith<
          _$RegisterLoanStateLoadFailureImpl>
      get copyWith => __$$RegisterLoanStateLoadFailureImplCopyWithImpl<
          _$RegisterLoanStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            RegisterLoanResponseEntities registerLoanResponseEntities)
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
            RegisterLoanResponseEntities registerLoanResponseEntities)?
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
    TResult Function(RegisterLoanResponseEntities registerLoanResponseEntities)?
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
    required TResult Function(_RegisterLoanInitial value) initial,
    required TResult Function(_RegisterLoanStateLoadFailure value) loadFailure,
    required TResult Function(RegisterLoanStateLoading value) loading,
    required TResult Function(_RegisterLoanStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterLoanInitial value)? initial,
    TResult? Function(_RegisterLoanStateLoadFailure value)? loadFailure,
    TResult? Function(RegisterLoanStateLoading value)? loading,
    TResult? Function(_RegisterLoanStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterLoanInitial value)? initial,
    TResult Function(_RegisterLoanStateLoadFailure value)? loadFailure,
    TResult Function(RegisterLoanStateLoading value)? loading,
    TResult Function(_RegisterLoanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _RegisterLoanStateLoadFailure implements RegisterLoanState {
  const factory _RegisterLoanStateLoadFailure(final Failure failure) =
      _$RegisterLoanStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$RegisterLoanStateLoadFailureImplCopyWith<
          _$RegisterLoanStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterLoanStateLoadingImplCopyWith<$Res> {
  factory _$$RegisterLoanStateLoadingImplCopyWith(
          _$RegisterLoanStateLoadingImpl value,
          $Res Function(_$RegisterLoanStateLoadingImpl) then) =
      __$$RegisterLoanStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterLoanStateLoadingImplCopyWithImpl<$Res>
    extends _$RegisterLoanStateCopyWithImpl<$Res,
        _$RegisterLoanStateLoadingImpl>
    implements _$$RegisterLoanStateLoadingImplCopyWith<$Res> {
  __$$RegisterLoanStateLoadingImplCopyWithImpl(
      _$RegisterLoanStateLoadingImpl _value,
      $Res Function(_$RegisterLoanStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterLoanStateLoadingImpl implements RegisterLoanStateLoading {
  const _$RegisterLoanStateLoadingImpl();

  @override
  String toString() {
    return 'RegisterLoanState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterLoanStateLoadingImpl);
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
            RegisterLoanResponseEntities registerLoanResponseEntities)
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
            RegisterLoanResponseEntities registerLoanResponseEntities)?
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
    TResult Function(RegisterLoanResponseEntities registerLoanResponseEntities)?
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
    required TResult Function(_RegisterLoanInitial value) initial,
    required TResult Function(_RegisterLoanStateLoadFailure value) loadFailure,
    required TResult Function(RegisterLoanStateLoading value) loading,
    required TResult Function(_RegisterLoanStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterLoanInitial value)? initial,
    TResult? Function(_RegisterLoanStateLoadFailure value)? loadFailure,
    TResult? Function(RegisterLoanStateLoading value)? loading,
    TResult? Function(_RegisterLoanStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterLoanInitial value)? initial,
    TResult Function(_RegisterLoanStateLoadFailure value)? loadFailure,
    TResult Function(RegisterLoanStateLoading value)? loading,
    TResult Function(_RegisterLoanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegisterLoanStateLoading implements RegisterLoanState {
  const factory RegisterLoanStateLoading() = _$RegisterLoanStateLoadingImpl;
}

/// @nodoc
abstract class _$$RegisterLoanStateLoadSuccessImplCopyWith<$Res> {
  factory _$$RegisterLoanStateLoadSuccessImplCopyWith(
          _$RegisterLoanStateLoadSuccessImpl value,
          $Res Function(_$RegisterLoanStateLoadSuccessImpl) then) =
      __$$RegisterLoanStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterLoanResponseEntities registerLoanResponseEntities});
}

/// @nodoc
class __$$RegisterLoanStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$RegisterLoanStateCopyWithImpl<$Res,
        _$RegisterLoanStateLoadSuccessImpl>
    implements _$$RegisterLoanStateLoadSuccessImplCopyWith<$Res> {
  __$$RegisterLoanStateLoadSuccessImplCopyWithImpl(
      _$RegisterLoanStateLoadSuccessImpl _value,
      $Res Function(_$RegisterLoanStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerLoanResponseEntities = null,
  }) {
    return _then(_$RegisterLoanStateLoadSuccessImpl(
      null == registerLoanResponseEntities
          ? _value.registerLoanResponseEntities
          : registerLoanResponseEntities // ignore: cast_nullable_to_non_nullable
              as RegisterLoanResponseEntities,
    ));
  }
}

/// @nodoc

class _$RegisterLoanStateLoadSuccessImpl
    implements _RegisterLoanStateLoadSuccess {
  const _$RegisterLoanStateLoadSuccessImpl(this.registerLoanResponseEntities);

  @override
  final RegisterLoanResponseEntities registerLoanResponseEntities;

  @override
  String toString() {
    return 'RegisterLoanState.loadSuccess(registerLoanResponseEntities: $registerLoanResponseEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterLoanStateLoadSuccessImpl &&
            (identical(other.registerLoanResponseEntities,
                    registerLoanResponseEntities) ||
                other.registerLoanResponseEntities ==
                    registerLoanResponseEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerLoanResponseEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterLoanStateLoadSuccessImplCopyWith<
          _$RegisterLoanStateLoadSuccessImpl>
      get copyWith => __$$RegisterLoanStateLoadSuccessImplCopyWithImpl<
          _$RegisterLoanStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            RegisterLoanResponseEntities registerLoanResponseEntities)
        loadSuccess,
  }) {
    return loadSuccess(registerLoanResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            RegisterLoanResponseEntities registerLoanResponseEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(registerLoanResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(RegisterLoanResponseEntities registerLoanResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(registerLoanResponseEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterLoanInitial value) initial,
    required TResult Function(_RegisterLoanStateLoadFailure value) loadFailure,
    required TResult Function(RegisterLoanStateLoading value) loading,
    required TResult Function(_RegisterLoanStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterLoanInitial value)? initial,
    TResult? Function(_RegisterLoanStateLoadFailure value)? loadFailure,
    TResult? Function(RegisterLoanStateLoading value)? loading,
    TResult? Function(_RegisterLoanStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterLoanInitial value)? initial,
    TResult Function(_RegisterLoanStateLoadFailure value)? loadFailure,
    TResult Function(RegisterLoanStateLoading value)? loading,
    TResult Function(_RegisterLoanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegisterLoanStateLoadSuccess implements RegisterLoanState {
  const factory _RegisterLoanStateLoadSuccess(
          final RegisterLoanResponseEntities registerLoanResponseEntities) =
      _$RegisterLoanStateLoadSuccessImpl;

  RegisterLoanResponseEntities get registerLoanResponseEntities;
  @JsonKey(ignore: true)
  _$$RegisterLoanStateLoadSuccessImplCopyWith<
          _$RegisterLoanStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
