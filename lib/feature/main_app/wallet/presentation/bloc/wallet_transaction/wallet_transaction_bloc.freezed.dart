// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletTransactionEvent {
  WalletTransactionParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WalletTransactionParams params)
        walletTransactionEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WalletTransactionParams params)?
        walletTransactionEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WalletTransactionParams params)?
        walletTransactionEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletTransactionEventCalled value)
        walletTransactionEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletTransactionEventCalled value)?
        walletTransactionEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletTransactionEventCalled value)?
        walletTransactionEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletTransactionEventCopyWith<WalletTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTransactionEventCopyWith<$Res> {
  factory $WalletTransactionEventCopyWith(WalletTransactionEvent value,
          $Res Function(WalletTransactionEvent) then) =
      _$WalletTransactionEventCopyWithImpl<$Res, WalletTransactionEvent>;
  @useResult
  $Res call({WalletTransactionParams params});
}

/// @nodoc
class _$WalletTransactionEventCopyWithImpl<$Res,
        $Val extends WalletTransactionEvent>
    implements $WalletTransactionEventCopyWith<$Res> {
  _$WalletTransactionEventCopyWithImpl(this._value, this._then);

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
              as WalletTransactionParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletTransactionEventCalledImplCopyWith<$Res>
    implements $WalletTransactionEventCopyWith<$Res> {
  factory _$$WalletTransactionEventCalledImplCopyWith(
          _$WalletTransactionEventCalledImpl value,
          $Res Function(_$WalletTransactionEventCalledImpl) then) =
      __$$WalletTransactionEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WalletTransactionParams params});
}

/// @nodoc
class __$$WalletTransactionEventCalledImplCopyWithImpl<$Res>
    extends _$WalletTransactionEventCopyWithImpl<$Res,
        _$WalletTransactionEventCalledImpl>
    implements _$$WalletTransactionEventCalledImplCopyWith<$Res> {
  __$$WalletTransactionEventCalledImplCopyWithImpl(
      _$WalletTransactionEventCalledImpl _value,
      $Res Function(_$WalletTransactionEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$WalletTransactionEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as WalletTransactionParams,
    ));
  }
}

/// @nodoc

class _$WalletTransactionEventCalledImpl
    implements _WalletTransactionEventCalled {
  const _$WalletTransactionEventCalledImpl(this.params);

  @override
  final WalletTransactionParams params;

  @override
  String toString() {
    return 'WalletTransactionEvent.walletTransactionEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTransactionEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletTransactionEventCalledImplCopyWith<
          _$WalletTransactionEventCalledImpl>
      get copyWith => __$$WalletTransactionEventCalledImplCopyWithImpl<
          _$WalletTransactionEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WalletTransactionParams params)
        walletTransactionEventCalled,
  }) {
    return walletTransactionEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WalletTransactionParams params)?
        walletTransactionEventCalled,
  }) {
    return walletTransactionEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WalletTransactionParams params)?
        walletTransactionEventCalled,
    required TResult orElse(),
  }) {
    if (walletTransactionEventCalled != null) {
      return walletTransactionEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletTransactionEventCalled value)
        walletTransactionEventCalled,
  }) {
    return walletTransactionEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletTransactionEventCalled value)?
        walletTransactionEventCalled,
  }) {
    return walletTransactionEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletTransactionEventCalled value)?
        walletTransactionEventCalled,
    required TResult orElse(),
  }) {
    if (walletTransactionEventCalled != null) {
      return walletTransactionEventCalled(this);
    }
    return orElse();
  }
}

abstract class _WalletTransactionEventCalled implements WalletTransactionEvent {
  const factory _WalletTransactionEventCalled(
          final WalletTransactionParams params) =
      _$WalletTransactionEventCalledImpl;

  @override
  WalletTransactionParams get params;
  @override
  @JsonKey(ignore: true)
  _$$WalletTransactionEventCalledImplCopyWith<
          _$WalletTransactionEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletTransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletTransactionEntities walletTransactionEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletTransactionEntities walletTransactionEntities)?
        loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletTransactionEntities walletTransactionEntities)?
        loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletTransactionStateInitial value) initial,
    required TResult Function(WalletTransactionStateLoading value) loading,
    required TResult Function(_WalletTransactionStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_WalletTransactionStateLoadFailure value)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletTransactionStateInitial value)? initial,
    TResult? Function(WalletTransactionStateLoading value)? loading,
    TResult? Function(_WalletTransactionStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletTransactionStateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletTransactionStateInitial value)? initial,
    TResult Function(WalletTransactionStateLoading value)? loading,
    TResult Function(_WalletTransactionStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletTransactionStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTransactionStateCopyWith<$Res> {
  factory $WalletTransactionStateCopyWith(WalletTransactionState value,
          $Res Function(WalletTransactionState) then) =
      _$WalletTransactionStateCopyWithImpl<$Res, WalletTransactionState>;
}

/// @nodoc
class _$WalletTransactionStateCopyWithImpl<$Res,
        $Val extends WalletTransactionState>
    implements $WalletTransactionStateCopyWith<$Res> {
  _$WalletTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WalletTransactionStateInitialImplCopyWith<$Res> {
  factory _$$WalletTransactionStateInitialImplCopyWith(
          _$WalletTransactionStateInitialImpl value,
          $Res Function(_$WalletTransactionStateInitialImpl) then) =
      __$$WalletTransactionStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletTransactionStateInitialImplCopyWithImpl<$Res>
    extends _$WalletTransactionStateCopyWithImpl<$Res,
        _$WalletTransactionStateInitialImpl>
    implements _$$WalletTransactionStateInitialImplCopyWith<$Res> {
  __$$WalletTransactionStateInitialImplCopyWithImpl(
      _$WalletTransactionStateInitialImpl _value,
      $Res Function(_$WalletTransactionStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletTransactionStateInitialImpl
    implements _WalletTransactionStateInitial {
  const _$WalletTransactionStateInitialImpl();

  @override
  String toString() {
    return 'WalletTransactionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTransactionStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletTransactionEntities walletTransactionEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletTransactionEntities walletTransactionEntities)?
        loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletTransactionEntities walletTransactionEntities)?
        loadSuccess,
    TResult Function(Failure failure)? loadFailure,
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
    required TResult Function(_WalletTransactionStateInitial value) initial,
    required TResult Function(WalletTransactionStateLoading value) loading,
    required TResult Function(_WalletTransactionStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_WalletTransactionStateLoadFailure value)
        loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletTransactionStateInitial value)? initial,
    TResult? Function(WalletTransactionStateLoading value)? loading,
    TResult? Function(_WalletTransactionStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletTransactionStateLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletTransactionStateInitial value)? initial,
    TResult Function(WalletTransactionStateLoading value)? loading,
    TResult Function(_WalletTransactionStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletTransactionStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WalletTransactionStateInitial
    implements WalletTransactionState {
  const factory _WalletTransactionStateInitial() =
      _$WalletTransactionStateInitialImpl;
}

/// @nodoc
abstract class _$$WalletTransactionStateLoadingImplCopyWith<$Res> {
  factory _$$WalletTransactionStateLoadingImplCopyWith(
          _$WalletTransactionStateLoadingImpl value,
          $Res Function(_$WalletTransactionStateLoadingImpl) then) =
      __$$WalletTransactionStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletTransactionStateLoadingImplCopyWithImpl<$Res>
    extends _$WalletTransactionStateCopyWithImpl<$Res,
        _$WalletTransactionStateLoadingImpl>
    implements _$$WalletTransactionStateLoadingImplCopyWith<$Res> {
  __$$WalletTransactionStateLoadingImplCopyWithImpl(
      _$WalletTransactionStateLoadingImpl _value,
      $Res Function(_$WalletTransactionStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletTransactionStateLoadingImpl
    implements WalletTransactionStateLoading {
  const _$WalletTransactionStateLoadingImpl();

  @override
  String toString() {
    return 'WalletTransactionState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTransactionStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletTransactionEntities walletTransactionEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletTransactionEntities walletTransactionEntities)?
        loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletTransactionEntities walletTransactionEntities)?
        loadSuccess,
    TResult Function(Failure failure)? loadFailure,
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
    required TResult Function(_WalletTransactionStateInitial value) initial,
    required TResult Function(WalletTransactionStateLoading value) loading,
    required TResult Function(_WalletTransactionStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_WalletTransactionStateLoadFailure value)
        loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletTransactionStateInitial value)? initial,
    TResult? Function(WalletTransactionStateLoading value)? loading,
    TResult? Function(_WalletTransactionStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletTransactionStateLoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletTransactionStateInitial value)? initial,
    TResult Function(WalletTransactionStateLoading value)? loading,
    TResult Function(_WalletTransactionStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletTransactionStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WalletTransactionStateLoading implements WalletTransactionState {
  const factory WalletTransactionStateLoading() =
      _$WalletTransactionStateLoadingImpl;
}

/// @nodoc
abstract class _$$WalletTransactionStateLoadSuccessImplCopyWith<$Res> {
  factory _$$WalletTransactionStateLoadSuccessImplCopyWith(
          _$WalletTransactionStateLoadSuccessImpl value,
          $Res Function(_$WalletTransactionStateLoadSuccessImpl) then) =
      __$$WalletTransactionStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletTransactionEntities walletTransactionEntities});
}

/// @nodoc
class __$$WalletTransactionStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$WalletTransactionStateCopyWithImpl<$Res,
        _$WalletTransactionStateLoadSuccessImpl>
    implements _$$WalletTransactionStateLoadSuccessImplCopyWith<$Res> {
  __$$WalletTransactionStateLoadSuccessImplCopyWithImpl(
      _$WalletTransactionStateLoadSuccessImpl _value,
      $Res Function(_$WalletTransactionStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletTransactionEntities = null,
  }) {
    return _then(_$WalletTransactionStateLoadSuccessImpl(
      null == walletTransactionEntities
          ? _value.walletTransactionEntities
          : walletTransactionEntities // ignore: cast_nullable_to_non_nullable
              as WalletTransactionEntities,
    ));
  }
}

/// @nodoc

class _$WalletTransactionStateLoadSuccessImpl
    implements _WalletTransactionStateLoadSuccess {
  const _$WalletTransactionStateLoadSuccessImpl(this.walletTransactionEntities);

  @override
  final WalletTransactionEntities walletTransactionEntities;

  @override
  String toString() {
    return 'WalletTransactionState.loadSuccess(walletTransactionEntities: $walletTransactionEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTransactionStateLoadSuccessImpl &&
            (identical(other.walletTransactionEntities,
                    walletTransactionEntities) ||
                other.walletTransactionEntities == walletTransactionEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletTransactionEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletTransactionStateLoadSuccessImplCopyWith<
          _$WalletTransactionStateLoadSuccessImpl>
      get copyWith => __$$WalletTransactionStateLoadSuccessImplCopyWithImpl<
          _$WalletTransactionStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletTransactionEntities walletTransactionEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadSuccess(walletTransactionEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletTransactionEntities walletTransactionEntities)?
        loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadSuccess?.call(walletTransactionEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletTransactionEntities walletTransactionEntities)?
        loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(walletTransactionEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletTransactionStateInitial value) initial,
    required TResult Function(WalletTransactionStateLoading value) loading,
    required TResult Function(_WalletTransactionStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_WalletTransactionStateLoadFailure value)
        loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletTransactionStateInitial value)? initial,
    TResult? Function(WalletTransactionStateLoading value)? loading,
    TResult? Function(_WalletTransactionStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletTransactionStateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletTransactionStateInitial value)? initial,
    TResult Function(WalletTransactionStateLoading value)? loading,
    TResult Function(_WalletTransactionStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletTransactionStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _WalletTransactionStateLoadSuccess
    implements WalletTransactionState {
  const factory _WalletTransactionStateLoadSuccess(
          final WalletTransactionEntities walletTransactionEntities) =
      _$WalletTransactionStateLoadSuccessImpl;

  WalletTransactionEntities get walletTransactionEntities;
  @JsonKey(ignore: true)
  _$$WalletTransactionStateLoadSuccessImplCopyWith<
          _$WalletTransactionStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletTransactionStateLoadFailureImplCopyWith<$Res> {
  factory _$$WalletTransactionStateLoadFailureImplCopyWith(
          _$WalletTransactionStateLoadFailureImpl value,
          $Res Function(_$WalletTransactionStateLoadFailureImpl) then) =
      __$$WalletTransactionStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$WalletTransactionStateLoadFailureImplCopyWithImpl<$Res>
    extends _$WalletTransactionStateCopyWithImpl<$Res,
        _$WalletTransactionStateLoadFailureImpl>
    implements _$$WalletTransactionStateLoadFailureImplCopyWith<$Res> {
  __$$WalletTransactionStateLoadFailureImplCopyWithImpl(
      _$WalletTransactionStateLoadFailureImpl _value,
      $Res Function(_$WalletTransactionStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$WalletTransactionStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$WalletTransactionStateLoadFailureImpl
    implements _WalletTransactionStateLoadFailure {
  const _$WalletTransactionStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'WalletTransactionState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTransactionStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletTransactionStateLoadFailureImplCopyWith<
          _$WalletTransactionStateLoadFailureImpl>
      get copyWith => __$$WalletTransactionStateLoadFailureImplCopyWithImpl<
          _$WalletTransactionStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletTransactionEntities walletTransactionEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletTransactionEntities walletTransactionEntities)?
        loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletTransactionEntities walletTransactionEntities)?
        loadSuccess,
    TResult Function(Failure failure)? loadFailure,
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
    required TResult Function(_WalletTransactionStateInitial value) initial,
    required TResult Function(WalletTransactionStateLoading value) loading,
    required TResult Function(_WalletTransactionStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_WalletTransactionStateLoadFailure value)
        loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletTransactionStateInitial value)? initial,
    TResult? Function(WalletTransactionStateLoading value)? loading,
    TResult? Function(_WalletTransactionStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletTransactionStateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletTransactionStateInitial value)? initial,
    TResult Function(WalletTransactionStateLoading value)? loading,
    TResult Function(_WalletTransactionStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletTransactionStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _WalletTransactionStateLoadFailure
    implements WalletTransactionState {
  const factory _WalletTransactionStateLoadFailure(final Failure failure) =
      _$WalletTransactionStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$WalletTransactionStateLoadFailureImplCopyWith<
          _$WalletTransactionStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
