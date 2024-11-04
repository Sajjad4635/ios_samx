// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_enable_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountEnableEvent {
  AccountEnableParam get accountEnableParam =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEnableParam accountEnableParam)
        accountEnableEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEnableParam accountEnableParam)?
        accountEnableEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEnableParam accountEnableParam)?
        accountEnableEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEnableEventCalled value)
        accountEnableEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEnableEventCalled value)?
        accountEnableEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEnableEventCalled value)? accountEnableEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountEnableEventCopyWith<AccountEnableEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEnableEventCopyWith<$Res> {
  factory $AccountEnableEventCopyWith(
          AccountEnableEvent value, $Res Function(AccountEnableEvent) then) =
      _$AccountEnableEventCopyWithImpl<$Res, AccountEnableEvent>;
  @useResult
  $Res call({AccountEnableParam accountEnableParam});
}

/// @nodoc
class _$AccountEnableEventCopyWithImpl<$Res, $Val extends AccountEnableEvent>
    implements $AccountEnableEventCopyWith<$Res> {
  _$AccountEnableEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountEnableParam = null,
  }) {
    return _then(_value.copyWith(
      accountEnableParam: null == accountEnableParam
          ? _value.accountEnableParam
          : accountEnableParam // ignore: cast_nullable_to_non_nullable
              as AccountEnableParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountEnableEventCalledImplCopyWith<$Res>
    implements $AccountEnableEventCopyWith<$Res> {
  factory _$$AccountEnableEventCalledImplCopyWith(
          _$AccountEnableEventCalledImpl value,
          $Res Function(_$AccountEnableEventCalledImpl) then) =
      __$$AccountEnableEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountEnableParam accountEnableParam});
}

/// @nodoc
class __$$AccountEnableEventCalledImplCopyWithImpl<$Res>
    extends _$AccountEnableEventCopyWithImpl<$Res,
        _$AccountEnableEventCalledImpl>
    implements _$$AccountEnableEventCalledImplCopyWith<$Res> {
  __$$AccountEnableEventCalledImplCopyWithImpl(
      _$AccountEnableEventCalledImpl _value,
      $Res Function(_$AccountEnableEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountEnableParam = null,
  }) {
    return _then(_$AccountEnableEventCalledImpl(
      accountEnableParam: null == accountEnableParam
          ? _value.accountEnableParam
          : accountEnableParam // ignore: cast_nullable_to_non_nullable
              as AccountEnableParam,
    ));
  }
}

/// @nodoc

class _$AccountEnableEventCalledImpl implements _AccountEnableEventCalled {
  const _$AccountEnableEventCalledImpl({required this.accountEnableParam});

  @override
  final AccountEnableParam accountEnableParam;

  @override
  String toString() {
    return 'AccountEnableEvent.accountEnableEventCalled(accountEnableParam: $accountEnableParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountEnableEventCalledImpl &&
            (identical(other.accountEnableParam, accountEnableParam) ||
                other.accountEnableParam == accountEnableParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountEnableParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountEnableEventCalledImplCopyWith<_$AccountEnableEventCalledImpl>
      get copyWith => __$$AccountEnableEventCalledImplCopyWithImpl<
          _$AccountEnableEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountEnableParam accountEnableParam)
        accountEnableEventCalled,
  }) {
    return accountEnableEventCalled(accountEnableParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountEnableParam accountEnableParam)?
        accountEnableEventCalled,
  }) {
    return accountEnableEventCalled?.call(accountEnableParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountEnableParam accountEnableParam)?
        accountEnableEventCalled,
    required TResult orElse(),
  }) {
    if (accountEnableEventCalled != null) {
      return accountEnableEventCalled(accountEnableParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEnableEventCalled value)
        accountEnableEventCalled,
  }) {
    return accountEnableEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEnableEventCalled value)?
        accountEnableEventCalled,
  }) {
    return accountEnableEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEnableEventCalled value)? accountEnableEventCalled,
    required TResult orElse(),
  }) {
    if (accountEnableEventCalled != null) {
      return accountEnableEventCalled(this);
    }
    return orElse();
  }
}

abstract class _AccountEnableEventCalled implements AccountEnableEvent {
  const factory _AccountEnableEventCalled(
          {required final AccountEnableParam accountEnableParam}) =
      _$AccountEnableEventCalledImpl;

  @override
  AccountEnableParam get accountEnableParam;
  @override
  @JsonKey(ignore: true)
  _$$AccountEnableEventCalledImplCopyWith<_$AccountEnableEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountEnableState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AccountEnableEntities accountEnableEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(AccountEnableEntities accountEnableEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AccountEnableEntities accountEnableEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEnableStateInitial value) initial,
    required TResult Function(_AccountEnableStateLoadFailure value) loadFailure,
    required TResult Function(AccountEnableStateLoading value) loading,
    required TResult Function(_AccountEnableStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEnableStateInitial value)? initial,
    TResult? Function(_AccountEnableStateLoadFailure value)? loadFailure,
    TResult? Function(AccountEnableStateLoading value)? loading,
    TResult? Function(_AccountEnableStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEnableStateInitial value)? initial,
    TResult Function(_AccountEnableStateLoadFailure value)? loadFailure,
    TResult Function(AccountEnableStateLoading value)? loading,
    TResult Function(_AccountEnableStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEnableStateCopyWith<$Res> {
  factory $AccountEnableStateCopyWith(
          AccountEnableState value, $Res Function(AccountEnableState) then) =
      _$AccountEnableStateCopyWithImpl<$Res, AccountEnableState>;
}

/// @nodoc
class _$AccountEnableStateCopyWithImpl<$Res, $Val extends AccountEnableState>
    implements $AccountEnableStateCopyWith<$Res> {
  _$AccountEnableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountEnableStateInitialImplCopyWith<$Res> {
  factory _$$AccountEnableStateInitialImplCopyWith(
          _$AccountEnableStateInitialImpl value,
          $Res Function(_$AccountEnableStateInitialImpl) then) =
      __$$AccountEnableStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountEnableStateInitialImplCopyWithImpl<$Res>
    extends _$AccountEnableStateCopyWithImpl<$Res,
        _$AccountEnableStateInitialImpl>
    implements _$$AccountEnableStateInitialImplCopyWith<$Res> {
  __$$AccountEnableStateInitialImplCopyWithImpl(
      _$AccountEnableStateInitialImpl _value,
      $Res Function(_$AccountEnableStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountEnableStateInitialImpl implements _AccountEnableStateInitial {
  const _$AccountEnableStateInitialImpl();

  @override
  String toString() {
    return 'AccountEnableState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountEnableStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AccountEnableEntities accountEnableEntities)
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
    TResult? Function(AccountEnableEntities accountEnableEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AccountEnableEntities accountEnableEntities)? loadSuccess,
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
    required TResult Function(_AccountEnableStateInitial value) initial,
    required TResult Function(_AccountEnableStateLoadFailure value) loadFailure,
    required TResult Function(AccountEnableStateLoading value) loading,
    required TResult Function(_AccountEnableStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEnableStateInitial value)? initial,
    TResult? Function(_AccountEnableStateLoadFailure value)? loadFailure,
    TResult? Function(AccountEnableStateLoading value)? loading,
    TResult? Function(_AccountEnableStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEnableStateInitial value)? initial,
    TResult Function(_AccountEnableStateLoadFailure value)? loadFailure,
    TResult Function(AccountEnableStateLoading value)? loading,
    TResult Function(_AccountEnableStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AccountEnableStateInitial implements AccountEnableState {
  const factory _AccountEnableStateInitial() = _$AccountEnableStateInitialImpl;
}

/// @nodoc
abstract class _$$AccountEnableStateLoadFailureImplCopyWith<$Res> {
  factory _$$AccountEnableStateLoadFailureImplCopyWith(
          _$AccountEnableStateLoadFailureImpl value,
          $Res Function(_$AccountEnableStateLoadFailureImpl) then) =
      __$$AccountEnableStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$AccountEnableStateLoadFailureImplCopyWithImpl<$Res>
    extends _$AccountEnableStateCopyWithImpl<$Res,
        _$AccountEnableStateLoadFailureImpl>
    implements _$$AccountEnableStateLoadFailureImplCopyWith<$Res> {
  __$$AccountEnableStateLoadFailureImplCopyWithImpl(
      _$AccountEnableStateLoadFailureImpl _value,
      $Res Function(_$AccountEnableStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$AccountEnableStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AccountEnableStateLoadFailureImpl
    implements _AccountEnableStateLoadFailure {
  const _$AccountEnableStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AccountEnableState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountEnableStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountEnableStateLoadFailureImplCopyWith<
          _$AccountEnableStateLoadFailureImpl>
      get copyWith => __$$AccountEnableStateLoadFailureImplCopyWithImpl<
          _$AccountEnableStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AccountEnableEntities accountEnableEntities)
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
    TResult? Function(AccountEnableEntities accountEnableEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AccountEnableEntities accountEnableEntities)? loadSuccess,
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
    required TResult Function(_AccountEnableStateInitial value) initial,
    required TResult Function(_AccountEnableStateLoadFailure value) loadFailure,
    required TResult Function(AccountEnableStateLoading value) loading,
    required TResult Function(_AccountEnableStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEnableStateInitial value)? initial,
    TResult? Function(_AccountEnableStateLoadFailure value)? loadFailure,
    TResult? Function(AccountEnableStateLoading value)? loading,
    TResult? Function(_AccountEnableStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEnableStateInitial value)? initial,
    TResult Function(_AccountEnableStateLoadFailure value)? loadFailure,
    TResult Function(AccountEnableStateLoading value)? loading,
    TResult Function(_AccountEnableStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _AccountEnableStateLoadFailure implements AccountEnableState {
  const factory _AccountEnableStateLoadFailure(final Failure failure) =
      _$AccountEnableStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$AccountEnableStateLoadFailureImplCopyWith<
          _$AccountEnableStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountEnableStateLoadingImplCopyWith<$Res> {
  factory _$$AccountEnableStateLoadingImplCopyWith(
          _$AccountEnableStateLoadingImpl value,
          $Res Function(_$AccountEnableStateLoadingImpl) then) =
      __$$AccountEnableStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountEnableStateLoadingImplCopyWithImpl<$Res>
    extends _$AccountEnableStateCopyWithImpl<$Res,
        _$AccountEnableStateLoadingImpl>
    implements _$$AccountEnableStateLoadingImplCopyWith<$Res> {
  __$$AccountEnableStateLoadingImplCopyWithImpl(
      _$AccountEnableStateLoadingImpl _value,
      $Res Function(_$AccountEnableStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountEnableStateLoadingImpl implements AccountEnableStateLoading {
  const _$AccountEnableStateLoadingImpl();

  @override
  String toString() {
    return 'AccountEnableState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountEnableStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AccountEnableEntities accountEnableEntities)
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
    TResult? Function(AccountEnableEntities accountEnableEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AccountEnableEntities accountEnableEntities)? loadSuccess,
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
    required TResult Function(_AccountEnableStateInitial value) initial,
    required TResult Function(_AccountEnableStateLoadFailure value) loadFailure,
    required TResult Function(AccountEnableStateLoading value) loading,
    required TResult Function(_AccountEnableStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEnableStateInitial value)? initial,
    TResult? Function(_AccountEnableStateLoadFailure value)? loadFailure,
    TResult? Function(AccountEnableStateLoading value)? loading,
    TResult? Function(_AccountEnableStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEnableStateInitial value)? initial,
    TResult Function(_AccountEnableStateLoadFailure value)? loadFailure,
    TResult Function(AccountEnableStateLoading value)? loading,
    TResult Function(_AccountEnableStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AccountEnableStateLoading implements AccountEnableState {
  const factory AccountEnableStateLoading() = _$AccountEnableStateLoadingImpl;
}

/// @nodoc
abstract class _$$AccountEnableStateLoadSuccessImplCopyWith<$Res> {
  factory _$$AccountEnableStateLoadSuccessImplCopyWith(
          _$AccountEnableStateLoadSuccessImpl value,
          $Res Function(_$AccountEnableStateLoadSuccessImpl) then) =
      __$$AccountEnableStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountEnableEntities accountEnableEntities});
}

/// @nodoc
class __$$AccountEnableStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$AccountEnableStateCopyWithImpl<$Res,
        _$AccountEnableStateLoadSuccessImpl>
    implements _$$AccountEnableStateLoadSuccessImplCopyWith<$Res> {
  __$$AccountEnableStateLoadSuccessImplCopyWithImpl(
      _$AccountEnableStateLoadSuccessImpl _value,
      $Res Function(_$AccountEnableStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountEnableEntities = null,
  }) {
    return _then(_$AccountEnableStateLoadSuccessImpl(
      null == accountEnableEntities
          ? _value.accountEnableEntities
          : accountEnableEntities // ignore: cast_nullable_to_non_nullable
              as AccountEnableEntities,
    ));
  }
}

/// @nodoc

class _$AccountEnableStateLoadSuccessImpl
    implements _AccountEnableStateLoadSuccess {
  const _$AccountEnableStateLoadSuccessImpl(this.accountEnableEntities);

  @override
  final AccountEnableEntities accountEnableEntities;

  @override
  String toString() {
    return 'AccountEnableState.loadSuccess(accountEnableEntities: $accountEnableEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountEnableStateLoadSuccessImpl &&
            (identical(other.accountEnableEntities, accountEnableEntities) ||
                other.accountEnableEntities == accountEnableEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountEnableEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountEnableStateLoadSuccessImplCopyWith<
          _$AccountEnableStateLoadSuccessImpl>
      get copyWith => __$$AccountEnableStateLoadSuccessImplCopyWithImpl<
          _$AccountEnableStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AccountEnableEntities accountEnableEntities)
        loadSuccess,
  }) {
    return loadSuccess(accountEnableEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(AccountEnableEntities accountEnableEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(accountEnableEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AccountEnableEntities accountEnableEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(accountEnableEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountEnableStateInitial value) initial,
    required TResult Function(_AccountEnableStateLoadFailure value) loadFailure,
    required TResult Function(AccountEnableStateLoading value) loading,
    required TResult Function(_AccountEnableStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountEnableStateInitial value)? initial,
    TResult? Function(_AccountEnableStateLoadFailure value)? loadFailure,
    TResult? Function(AccountEnableStateLoading value)? loading,
    TResult? Function(_AccountEnableStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountEnableStateInitial value)? initial,
    TResult Function(_AccountEnableStateLoadFailure value)? loadFailure,
    TResult Function(AccountEnableStateLoading value)? loading,
    TResult Function(_AccountEnableStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _AccountEnableStateLoadSuccess implements AccountEnableState {
  const factory _AccountEnableStateLoadSuccess(
          final AccountEnableEntities accountEnableEntities) =
      _$AccountEnableStateLoadSuccessImpl;

  AccountEnableEntities get accountEnableEntities;
  @JsonKey(ignore: true)
  _$$AccountEnableStateLoadSuccessImplCopyWith<
          _$AccountEnableStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
