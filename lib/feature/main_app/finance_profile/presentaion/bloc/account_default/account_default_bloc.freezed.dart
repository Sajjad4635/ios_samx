// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_default_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountDefaultEvent {
  AccountDefaultParam get accountDefaultParam =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountDefaultParam accountDefaultParam)
        accountDefaultEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountDefaultParam accountDefaultParam)?
        accountDefaultEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountDefaultParam accountDefaultParam)?
        accountDefaultEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountDefaultEventCalled value)
        accountDefaultEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountDefaultEventCalled value)?
        accountDefaultEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountDefaultEventCalled value)?
        accountDefaultEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountDefaultEventCopyWith<AccountDefaultEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDefaultEventCopyWith<$Res> {
  factory $AccountDefaultEventCopyWith(
          AccountDefaultEvent value, $Res Function(AccountDefaultEvent) then) =
      _$AccountDefaultEventCopyWithImpl<$Res, AccountDefaultEvent>;
  @useResult
  $Res call({AccountDefaultParam accountDefaultParam});
}

/// @nodoc
class _$AccountDefaultEventCopyWithImpl<$Res, $Val extends AccountDefaultEvent>
    implements $AccountDefaultEventCopyWith<$Res> {
  _$AccountDefaultEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountDefaultParam = null,
  }) {
    return _then(_value.copyWith(
      accountDefaultParam: null == accountDefaultParam
          ? _value.accountDefaultParam
          : accountDefaultParam // ignore: cast_nullable_to_non_nullable
              as AccountDefaultParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountDefaultEventCalledImplCopyWith<$Res>
    implements $AccountDefaultEventCopyWith<$Res> {
  factory _$$AccountDefaultEventCalledImplCopyWith(
          _$AccountDefaultEventCalledImpl value,
          $Res Function(_$AccountDefaultEventCalledImpl) then) =
      __$$AccountDefaultEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountDefaultParam accountDefaultParam});
}

/// @nodoc
class __$$AccountDefaultEventCalledImplCopyWithImpl<$Res>
    extends _$AccountDefaultEventCopyWithImpl<$Res,
        _$AccountDefaultEventCalledImpl>
    implements _$$AccountDefaultEventCalledImplCopyWith<$Res> {
  __$$AccountDefaultEventCalledImplCopyWithImpl(
      _$AccountDefaultEventCalledImpl _value,
      $Res Function(_$AccountDefaultEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountDefaultParam = null,
  }) {
    return _then(_$AccountDefaultEventCalledImpl(
      accountDefaultParam: null == accountDefaultParam
          ? _value.accountDefaultParam
          : accountDefaultParam // ignore: cast_nullable_to_non_nullable
              as AccountDefaultParam,
    ));
  }
}

/// @nodoc

class _$AccountDefaultEventCalledImpl implements _AccountDefaultEventCalled {
  const _$AccountDefaultEventCalledImpl({required this.accountDefaultParam});

  @override
  final AccountDefaultParam accountDefaultParam;

  @override
  String toString() {
    return 'AccountDefaultEvent.accountDefaultEventCalled(accountDefaultParam: $accountDefaultParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDefaultEventCalledImpl &&
            (identical(other.accountDefaultParam, accountDefaultParam) ||
                other.accountDefaultParam == accountDefaultParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountDefaultParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDefaultEventCalledImplCopyWith<_$AccountDefaultEventCalledImpl>
      get copyWith => __$$AccountDefaultEventCalledImplCopyWithImpl<
          _$AccountDefaultEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountDefaultParam accountDefaultParam)
        accountDefaultEventCalled,
  }) {
    return accountDefaultEventCalled(accountDefaultParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountDefaultParam accountDefaultParam)?
        accountDefaultEventCalled,
  }) {
    return accountDefaultEventCalled?.call(accountDefaultParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountDefaultParam accountDefaultParam)?
        accountDefaultEventCalled,
    required TResult orElse(),
  }) {
    if (accountDefaultEventCalled != null) {
      return accountDefaultEventCalled(accountDefaultParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountDefaultEventCalled value)
        accountDefaultEventCalled,
  }) {
    return accountDefaultEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountDefaultEventCalled value)?
        accountDefaultEventCalled,
  }) {
    return accountDefaultEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountDefaultEventCalled value)?
        accountDefaultEventCalled,
    required TResult orElse(),
  }) {
    if (accountDefaultEventCalled != null) {
      return accountDefaultEventCalled(this);
    }
    return orElse();
  }
}

abstract class _AccountDefaultEventCalled implements AccountDefaultEvent {
  const factory _AccountDefaultEventCalled(
          {required final AccountDefaultParam accountDefaultParam}) =
      _$AccountDefaultEventCalledImpl;

  @override
  AccountDefaultParam get accountDefaultParam;
  @override
  @JsonKey(ignore: true)
  _$$AccountDefaultEventCalledImplCopyWith<_$AccountDefaultEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountDefaultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AccountDefaultEntities accountDefaultEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(AccountDefaultEntities accountDefaultEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AccountDefaultEntities accountDefaultEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountDefaultStateInitial value) initial,
    required TResult Function(_AccountDefaultStateLoadFailure value)
        loadFailure,
    required TResult Function(AccountDefaultStateLoading value) loading,
    required TResult Function(_AccountDefaultStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountDefaultStateInitial value)? initial,
    TResult? Function(_AccountDefaultStateLoadFailure value)? loadFailure,
    TResult? Function(AccountDefaultStateLoading value)? loading,
    TResult? Function(_AccountDefaultStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountDefaultStateInitial value)? initial,
    TResult Function(_AccountDefaultStateLoadFailure value)? loadFailure,
    TResult Function(AccountDefaultStateLoading value)? loading,
    TResult Function(_AccountDefaultStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDefaultStateCopyWith<$Res> {
  factory $AccountDefaultStateCopyWith(
          AccountDefaultState value, $Res Function(AccountDefaultState) then) =
      _$AccountDefaultStateCopyWithImpl<$Res, AccountDefaultState>;
}

/// @nodoc
class _$AccountDefaultStateCopyWithImpl<$Res, $Val extends AccountDefaultState>
    implements $AccountDefaultStateCopyWith<$Res> {
  _$AccountDefaultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountDefaultStateInitialImplCopyWith<$Res> {
  factory _$$AccountDefaultStateInitialImplCopyWith(
          _$AccountDefaultStateInitialImpl value,
          $Res Function(_$AccountDefaultStateInitialImpl) then) =
      __$$AccountDefaultStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountDefaultStateInitialImplCopyWithImpl<$Res>
    extends _$AccountDefaultStateCopyWithImpl<$Res,
        _$AccountDefaultStateInitialImpl>
    implements _$$AccountDefaultStateInitialImplCopyWith<$Res> {
  __$$AccountDefaultStateInitialImplCopyWithImpl(
      _$AccountDefaultStateInitialImpl _value,
      $Res Function(_$AccountDefaultStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountDefaultStateInitialImpl implements _AccountDefaultStateInitial {
  const _$AccountDefaultStateInitialImpl();

  @override
  String toString() {
    return 'AccountDefaultState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDefaultStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AccountDefaultEntities accountDefaultEntities)
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
    TResult? Function(AccountDefaultEntities accountDefaultEntities)?
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
    TResult Function(AccountDefaultEntities accountDefaultEntities)?
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
    required TResult Function(_AccountDefaultStateInitial value) initial,
    required TResult Function(_AccountDefaultStateLoadFailure value)
        loadFailure,
    required TResult Function(AccountDefaultStateLoading value) loading,
    required TResult Function(_AccountDefaultStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountDefaultStateInitial value)? initial,
    TResult? Function(_AccountDefaultStateLoadFailure value)? loadFailure,
    TResult? Function(AccountDefaultStateLoading value)? loading,
    TResult? Function(_AccountDefaultStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountDefaultStateInitial value)? initial,
    TResult Function(_AccountDefaultStateLoadFailure value)? loadFailure,
    TResult Function(AccountDefaultStateLoading value)? loading,
    TResult Function(_AccountDefaultStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AccountDefaultStateInitial implements AccountDefaultState {
  const factory _AccountDefaultStateInitial() =
      _$AccountDefaultStateInitialImpl;
}

/// @nodoc
abstract class _$$AccountDefaultStateLoadFailureImplCopyWith<$Res> {
  factory _$$AccountDefaultStateLoadFailureImplCopyWith(
          _$AccountDefaultStateLoadFailureImpl value,
          $Res Function(_$AccountDefaultStateLoadFailureImpl) then) =
      __$$AccountDefaultStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$AccountDefaultStateLoadFailureImplCopyWithImpl<$Res>
    extends _$AccountDefaultStateCopyWithImpl<$Res,
        _$AccountDefaultStateLoadFailureImpl>
    implements _$$AccountDefaultStateLoadFailureImplCopyWith<$Res> {
  __$$AccountDefaultStateLoadFailureImplCopyWithImpl(
      _$AccountDefaultStateLoadFailureImpl _value,
      $Res Function(_$AccountDefaultStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$AccountDefaultStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AccountDefaultStateLoadFailureImpl
    implements _AccountDefaultStateLoadFailure {
  const _$AccountDefaultStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AccountDefaultState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDefaultStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDefaultStateLoadFailureImplCopyWith<
          _$AccountDefaultStateLoadFailureImpl>
      get copyWith => __$$AccountDefaultStateLoadFailureImplCopyWithImpl<
          _$AccountDefaultStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AccountDefaultEntities accountDefaultEntities)
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
    TResult? Function(AccountDefaultEntities accountDefaultEntities)?
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
    TResult Function(AccountDefaultEntities accountDefaultEntities)?
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
    required TResult Function(_AccountDefaultStateInitial value) initial,
    required TResult Function(_AccountDefaultStateLoadFailure value)
        loadFailure,
    required TResult Function(AccountDefaultStateLoading value) loading,
    required TResult Function(_AccountDefaultStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountDefaultStateInitial value)? initial,
    TResult? Function(_AccountDefaultStateLoadFailure value)? loadFailure,
    TResult? Function(AccountDefaultStateLoading value)? loading,
    TResult? Function(_AccountDefaultStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountDefaultStateInitial value)? initial,
    TResult Function(_AccountDefaultStateLoadFailure value)? loadFailure,
    TResult Function(AccountDefaultStateLoading value)? loading,
    TResult Function(_AccountDefaultStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _AccountDefaultStateLoadFailure implements AccountDefaultState {
  const factory _AccountDefaultStateLoadFailure(final Failure failure) =
      _$AccountDefaultStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$AccountDefaultStateLoadFailureImplCopyWith<
          _$AccountDefaultStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountDefaultStateLoadingImplCopyWith<$Res> {
  factory _$$AccountDefaultStateLoadingImplCopyWith(
          _$AccountDefaultStateLoadingImpl value,
          $Res Function(_$AccountDefaultStateLoadingImpl) then) =
      __$$AccountDefaultStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountDefaultStateLoadingImplCopyWithImpl<$Res>
    extends _$AccountDefaultStateCopyWithImpl<$Res,
        _$AccountDefaultStateLoadingImpl>
    implements _$$AccountDefaultStateLoadingImplCopyWith<$Res> {
  __$$AccountDefaultStateLoadingImplCopyWithImpl(
      _$AccountDefaultStateLoadingImpl _value,
      $Res Function(_$AccountDefaultStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountDefaultStateLoadingImpl implements AccountDefaultStateLoading {
  const _$AccountDefaultStateLoadingImpl();

  @override
  String toString() {
    return 'AccountDefaultState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDefaultStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AccountDefaultEntities accountDefaultEntities)
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
    TResult? Function(AccountDefaultEntities accountDefaultEntities)?
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
    TResult Function(AccountDefaultEntities accountDefaultEntities)?
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
    required TResult Function(_AccountDefaultStateInitial value) initial,
    required TResult Function(_AccountDefaultStateLoadFailure value)
        loadFailure,
    required TResult Function(AccountDefaultStateLoading value) loading,
    required TResult Function(_AccountDefaultStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountDefaultStateInitial value)? initial,
    TResult? Function(_AccountDefaultStateLoadFailure value)? loadFailure,
    TResult? Function(AccountDefaultStateLoading value)? loading,
    TResult? Function(_AccountDefaultStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountDefaultStateInitial value)? initial,
    TResult Function(_AccountDefaultStateLoadFailure value)? loadFailure,
    TResult Function(AccountDefaultStateLoading value)? loading,
    TResult Function(_AccountDefaultStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AccountDefaultStateLoading implements AccountDefaultState {
  const factory AccountDefaultStateLoading() = _$AccountDefaultStateLoadingImpl;
}

/// @nodoc
abstract class _$$AccountDefaultStateLoadSuccessImplCopyWith<$Res> {
  factory _$$AccountDefaultStateLoadSuccessImplCopyWith(
          _$AccountDefaultStateLoadSuccessImpl value,
          $Res Function(_$AccountDefaultStateLoadSuccessImpl) then) =
      __$$AccountDefaultStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountDefaultEntities accountDefaultEntities});
}

/// @nodoc
class __$$AccountDefaultStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$AccountDefaultStateCopyWithImpl<$Res,
        _$AccountDefaultStateLoadSuccessImpl>
    implements _$$AccountDefaultStateLoadSuccessImplCopyWith<$Res> {
  __$$AccountDefaultStateLoadSuccessImplCopyWithImpl(
      _$AccountDefaultStateLoadSuccessImpl _value,
      $Res Function(_$AccountDefaultStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountDefaultEntities = null,
  }) {
    return _then(_$AccountDefaultStateLoadSuccessImpl(
      null == accountDefaultEntities
          ? _value.accountDefaultEntities
          : accountDefaultEntities // ignore: cast_nullable_to_non_nullable
              as AccountDefaultEntities,
    ));
  }
}

/// @nodoc

class _$AccountDefaultStateLoadSuccessImpl
    implements _AccountDefaultStateLoadSuccess {
  const _$AccountDefaultStateLoadSuccessImpl(this.accountDefaultEntities);

  @override
  final AccountDefaultEntities accountDefaultEntities;

  @override
  String toString() {
    return 'AccountDefaultState.loadSuccess(accountDefaultEntities: $accountDefaultEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDefaultStateLoadSuccessImpl &&
            (identical(other.accountDefaultEntities, accountDefaultEntities) ||
                other.accountDefaultEntities == accountDefaultEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountDefaultEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDefaultStateLoadSuccessImplCopyWith<
          _$AccountDefaultStateLoadSuccessImpl>
      get copyWith => __$$AccountDefaultStateLoadSuccessImplCopyWithImpl<
          _$AccountDefaultStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AccountDefaultEntities accountDefaultEntities)
        loadSuccess,
  }) {
    return loadSuccess(accountDefaultEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(AccountDefaultEntities accountDefaultEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(accountDefaultEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AccountDefaultEntities accountDefaultEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(accountDefaultEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountDefaultStateInitial value) initial,
    required TResult Function(_AccountDefaultStateLoadFailure value)
        loadFailure,
    required TResult Function(AccountDefaultStateLoading value) loading,
    required TResult Function(_AccountDefaultStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountDefaultStateInitial value)? initial,
    TResult? Function(_AccountDefaultStateLoadFailure value)? loadFailure,
    TResult? Function(AccountDefaultStateLoading value)? loading,
    TResult? Function(_AccountDefaultStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountDefaultStateInitial value)? initial,
    TResult Function(_AccountDefaultStateLoadFailure value)? loadFailure,
    TResult Function(AccountDefaultStateLoading value)? loading,
    TResult Function(_AccountDefaultStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _AccountDefaultStateLoadSuccess implements AccountDefaultState {
  const factory _AccountDefaultStateLoadSuccess(
          final AccountDefaultEntities accountDefaultEntities) =
      _$AccountDefaultStateLoadSuccessImpl;

  AccountDefaultEntities get accountDefaultEntities;
  @JsonKey(ignore: true)
  _$$AccountDefaultStateLoadSuccessImplCopyWith<
          _$AccountDefaultStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
