// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_balance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletBalanceEvent {
  WalletBalanceParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WalletBalanceParams params)
        walletBalanceEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WalletBalanceParams params)? walletBalanceEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WalletBalanceParams params)? walletBalanceEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletBalanceEventCalled value)
        walletBalanceEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletBalanceEventCalled value)?
        walletBalanceEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletBalanceEventCalled value)? walletBalanceEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletBalanceEventCopyWith<WalletBalanceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletBalanceEventCopyWith<$Res> {
  factory $WalletBalanceEventCopyWith(
          WalletBalanceEvent value, $Res Function(WalletBalanceEvent) then) =
      _$WalletBalanceEventCopyWithImpl<$Res, WalletBalanceEvent>;
  @useResult
  $Res call({WalletBalanceParams params});
}

/// @nodoc
class _$WalletBalanceEventCopyWithImpl<$Res, $Val extends WalletBalanceEvent>
    implements $WalletBalanceEventCopyWith<$Res> {
  _$WalletBalanceEventCopyWithImpl(this._value, this._then);

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
              as WalletBalanceParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletBalanceEventCalledImplCopyWith<$Res>
    implements $WalletBalanceEventCopyWith<$Res> {
  factory _$$WalletBalanceEventCalledImplCopyWith(
          _$WalletBalanceEventCalledImpl value,
          $Res Function(_$WalletBalanceEventCalledImpl) then) =
      __$$WalletBalanceEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WalletBalanceParams params});
}

/// @nodoc
class __$$WalletBalanceEventCalledImplCopyWithImpl<$Res>
    extends _$WalletBalanceEventCopyWithImpl<$Res,
        _$WalletBalanceEventCalledImpl>
    implements _$$WalletBalanceEventCalledImplCopyWith<$Res> {
  __$$WalletBalanceEventCalledImplCopyWithImpl(
      _$WalletBalanceEventCalledImpl _value,
      $Res Function(_$WalletBalanceEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$WalletBalanceEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as WalletBalanceParams,
    ));
  }
}

/// @nodoc

class _$WalletBalanceEventCalledImpl implements _WalletBalanceEventCalled {
  const _$WalletBalanceEventCalledImpl(this.params);

  @override
  final WalletBalanceParams params;

  @override
  String toString() {
    return 'WalletBalanceEvent.walletBalanceEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletBalanceEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletBalanceEventCalledImplCopyWith<_$WalletBalanceEventCalledImpl>
      get copyWith => __$$WalletBalanceEventCalledImplCopyWithImpl<
          _$WalletBalanceEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WalletBalanceParams params)
        walletBalanceEventCalled,
  }) {
    return walletBalanceEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WalletBalanceParams params)? walletBalanceEventCalled,
  }) {
    return walletBalanceEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WalletBalanceParams params)? walletBalanceEventCalled,
    required TResult orElse(),
  }) {
    if (walletBalanceEventCalled != null) {
      return walletBalanceEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletBalanceEventCalled value)
        walletBalanceEventCalled,
  }) {
    return walletBalanceEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletBalanceEventCalled value)?
        walletBalanceEventCalled,
  }) {
    return walletBalanceEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletBalanceEventCalled value)? walletBalanceEventCalled,
    required TResult orElse(),
  }) {
    if (walletBalanceEventCalled != null) {
      return walletBalanceEventCalled(this);
    }
    return orElse();
  }
}

abstract class _WalletBalanceEventCalled implements WalletBalanceEvent {
  const factory _WalletBalanceEventCalled(final WalletBalanceParams params) =
      _$WalletBalanceEventCalledImpl;

  @override
  WalletBalanceParams get params;
  @override
  @JsonKey(ignore: true)
  _$$WalletBalanceEventCalledImplCopyWith<_$WalletBalanceEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletBalanceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)?
        loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)?
        loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletBalanceState value) initial,
    required TResult Function(WalletBalanceStateLoading value) loading,
    required TResult Function(_WalletBalanceStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletBalanceStateLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletBalanceState value)? initial,
    TResult? Function(WalletBalanceStateLoading value)? loading,
    TResult? Function(_WalletBalanceStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletBalanceStateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletBalanceState value)? initial,
    TResult Function(WalletBalanceStateLoading value)? loading,
    TResult Function(_WalletBalanceStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletBalanceStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletBalanceStateCopyWith<$Res> {
  factory $WalletBalanceStateCopyWith(
          WalletBalanceState value, $Res Function(WalletBalanceState) then) =
      _$WalletBalanceStateCopyWithImpl<$Res, WalletBalanceState>;
}

/// @nodoc
class _$WalletBalanceStateCopyWithImpl<$Res, $Val extends WalletBalanceState>
    implements $WalletBalanceStateCopyWith<$Res> {
  _$WalletBalanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WalletBalanceStateImplCopyWith<$Res> {
  factory _$$WalletBalanceStateImplCopyWith(_$WalletBalanceStateImpl value,
          $Res Function(_$WalletBalanceStateImpl) then) =
      __$$WalletBalanceStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletBalanceStateImplCopyWithImpl<$Res>
    extends _$WalletBalanceStateCopyWithImpl<$Res, _$WalletBalanceStateImpl>
    implements _$$WalletBalanceStateImplCopyWith<$Res> {
  __$$WalletBalanceStateImplCopyWithImpl(_$WalletBalanceStateImpl _value,
      $Res Function(_$WalletBalanceStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletBalanceStateImpl implements _WalletBalanceState {
  const _$WalletBalanceStateImpl();

  @override
  String toString() {
    return 'WalletBalanceState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletBalanceStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)
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
    TResult? Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)?
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
    TResult Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)?
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
    required TResult Function(_WalletBalanceState value) initial,
    required TResult Function(WalletBalanceStateLoading value) loading,
    required TResult Function(_WalletBalanceStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletBalanceStateLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletBalanceState value)? initial,
    TResult? Function(WalletBalanceStateLoading value)? loading,
    TResult? Function(_WalletBalanceStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletBalanceStateLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletBalanceState value)? initial,
    TResult Function(WalletBalanceStateLoading value)? loading,
    TResult Function(_WalletBalanceStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletBalanceStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WalletBalanceState implements WalletBalanceState {
  const factory _WalletBalanceState() = _$WalletBalanceStateImpl;
}

/// @nodoc
abstract class _$$WalletBalanceStateLoadingImplCopyWith<$Res> {
  factory _$$WalletBalanceStateLoadingImplCopyWith(
          _$WalletBalanceStateLoadingImpl value,
          $Res Function(_$WalletBalanceStateLoadingImpl) then) =
      __$$WalletBalanceStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletBalanceStateLoadingImplCopyWithImpl<$Res>
    extends _$WalletBalanceStateCopyWithImpl<$Res,
        _$WalletBalanceStateLoadingImpl>
    implements _$$WalletBalanceStateLoadingImplCopyWith<$Res> {
  __$$WalletBalanceStateLoadingImplCopyWithImpl(
      _$WalletBalanceStateLoadingImpl _value,
      $Res Function(_$WalletBalanceStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletBalanceStateLoadingImpl implements WalletBalanceStateLoading {
  const _$WalletBalanceStateLoadingImpl();

  @override
  String toString() {
    return 'WalletBalanceState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletBalanceStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)
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
    TResult? Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)?
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
    TResult Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)?
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
    required TResult Function(_WalletBalanceState value) initial,
    required TResult Function(WalletBalanceStateLoading value) loading,
    required TResult Function(_WalletBalanceStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletBalanceStateLoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletBalanceState value)? initial,
    TResult? Function(WalletBalanceStateLoading value)? loading,
    TResult? Function(_WalletBalanceStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletBalanceStateLoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletBalanceState value)? initial,
    TResult Function(WalletBalanceStateLoading value)? loading,
    TResult Function(_WalletBalanceStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletBalanceStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WalletBalanceStateLoading implements WalletBalanceState {
  const factory WalletBalanceStateLoading() = _$WalletBalanceStateLoadingImpl;
}

/// @nodoc
abstract class _$$WalletBalanceStateLoadSuccessImplCopyWith<$Res> {
  factory _$$WalletBalanceStateLoadSuccessImplCopyWith(
          _$WalletBalanceStateLoadSuccessImpl value,
          $Res Function(_$WalletBalanceStateLoadSuccessImpl) then) =
      __$$WalletBalanceStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletBalanceResponseEntities walletBalanceResponseEntities});
}

/// @nodoc
class __$$WalletBalanceStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$WalletBalanceStateCopyWithImpl<$Res,
        _$WalletBalanceStateLoadSuccessImpl>
    implements _$$WalletBalanceStateLoadSuccessImplCopyWith<$Res> {
  __$$WalletBalanceStateLoadSuccessImplCopyWithImpl(
      _$WalletBalanceStateLoadSuccessImpl _value,
      $Res Function(_$WalletBalanceStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletBalanceResponseEntities = null,
  }) {
    return _then(_$WalletBalanceStateLoadSuccessImpl(
      null == walletBalanceResponseEntities
          ? _value.walletBalanceResponseEntities
          : walletBalanceResponseEntities // ignore: cast_nullable_to_non_nullable
              as WalletBalanceResponseEntities,
    ));
  }
}

/// @nodoc

class _$WalletBalanceStateLoadSuccessImpl
    implements _WalletBalanceStateLoadSuccess {
  const _$WalletBalanceStateLoadSuccessImpl(this.walletBalanceResponseEntities);

  @override
  final WalletBalanceResponseEntities walletBalanceResponseEntities;

  @override
  String toString() {
    return 'WalletBalanceState.loadSuccess(walletBalanceResponseEntities: $walletBalanceResponseEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletBalanceStateLoadSuccessImpl &&
            (identical(other.walletBalanceResponseEntities,
                    walletBalanceResponseEntities) ||
                other.walletBalanceResponseEntities ==
                    walletBalanceResponseEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletBalanceResponseEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletBalanceStateLoadSuccessImplCopyWith<
          _$WalletBalanceStateLoadSuccessImpl>
      get copyWith => __$$WalletBalanceStateLoadSuccessImplCopyWithImpl<
          _$WalletBalanceStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadSuccess(walletBalanceResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)?
        loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadSuccess?.call(walletBalanceResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)?
        loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(walletBalanceResponseEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletBalanceState value) initial,
    required TResult Function(WalletBalanceStateLoading value) loading,
    required TResult Function(_WalletBalanceStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletBalanceStateLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletBalanceState value)? initial,
    TResult? Function(WalletBalanceStateLoading value)? loading,
    TResult? Function(_WalletBalanceStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletBalanceStateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletBalanceState value)? initial,
    TResult Function(WalletBalanceStateLoading value)? loading,
    TResult Function(_WalletBalanceStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletBalanceStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _WalletBalanceStateLoadSuccess implements WalletBalanceState {
  const factory _WalletBalanceStateLoadSuccess(
          final WalletBalanceResponseEntities walletBalanceResponseEntities) =
      _$WalletBalanceStateLoadSuccessImpl;

  WalletBalanceResponseEntities get walletBalanceResponseEntities;
  @JsonKey(ignore: true)
  _$$WalletBalanceStateLoadSuccessImplCopyWith<
          _$WalletBalanceStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletBalanceStateLoadFailureImplCopyWith<$Res> {
  factory _$$WalletBalanceStateLoadFailureImplCopyWith(
          _$WalletBalanceStateLoadFailureImpl value,
          $Res Function(_$WalletBalanceStateLoadFailureImpl) then) =
      __$$WalletBalanceStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$WalletBalanceStateLoadFailureImplCopyWithImpl<$Res>
    extends _$WalletBalanceStateCopyWithImpl<$Res,
        _$WalletBalanceStateLoadFailureImpl>
    implements _$$WalletBalanceStateLoadFailureImplCopyWith<$Res> {
  __$$WalletBalanceStateLoadFailureImplCopyWithImpl(
      _$WalletBalanceStateLoadFailureImpl _value,
      $Res Function(_$WalletBalanceStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$WalletBalanceStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$WalletBalanceStateLoadFailureImpl
    implements _WalletBalanceStateLoadFailure {
  const _$WalletBalanceStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'WalletBalanceState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletBalanceStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletBalanceStateLoadFailureImplCopyWith<
          _$WalletBalanceStateLoadFailureImpl>
      get copyWith => __$$WalletBalanceStateLoadFailureImplCopyWithImpl<
          _$WalletBalanceStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)
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
    TResult? Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)?
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
    TResult Function(
            WalletBalanceResponseEntities walletBalanceResponseEntities)?
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
    required TResult Function(_WalletBalanceState value) initial,
    required TResult Function(WalletBalanceStateLoading value) loading,
    required TResult Function(_WalletBalanceStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletBalanceStateLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletBalanceState value)? initial,
    TResult? Function(WalletBalanceStateLoading value)? loading,
    TResult? Function(_WalletBalanceStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletBalanceStateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletBalanceState value)? initial,
    TResult Function(WalletBalanceStateLoading value)? loading,
    TResult Function(_WalletBalanceStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletBalanceStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _WalletBalanceStateLoadFailure implements WalletBalanceState {
  const factory _WalletBalanceStateLoadFailure(final Failure failure) =
      _$WalletBalanceStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$WalletBalanceStateLoadFailureImplCopyWith<
          _$WalletBalanceStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
