// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_withdraw_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletWithdrawEvent {
  WalletWithDrawParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WalletWithDrawParams params)
        walletWithdrawEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WalletWithDrawParams params)? walletWithdrawEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WalletWithDrawParams params)? walletWithdrawEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletWithdrawEventCalled value)
        walletWithdrawEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletWithdrawEventCalled value)?
        walletWithdrawEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletWithdrawEventCalled value)?
        walletWithdrawEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletWithdrawEventCopyWith<WalletWithdrawEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletWithdrawEventCopyWith<$Res> {
  factory $WalletWithdrawEventCopyWith(
          WalletWithdrawEvent value, $Res Function(WalletWithdrawEvent) then) =
      _$WalletWithdrawEventCopyWithImpl<$Res, WalletWithdrawEvent>;
  @useResult
  $Res call({WalletWithDrawParams params});
}

/// @nodoc
class _$WalletWithdrawEventCopyWithImpl<$Res, $Val extends WalletWithdrawEvent>
    implements $WalletWithdrawEventCopyWith<$Res> {
  _$WalletWithdrawEventCopyWithImpl(this._value, this._then);

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
              as WalletWithDrawParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletWithdrawEventCalledImplCopyWith<$Res>
    implements $WalletWithdrawEventCopyWith<$Res> {
  factory _$$WalletWithdrawEventCalledImplCopyWith(
          _$WalletWithdrawEventCalledImpl value,
          $Res Function(_$WalletWithdrawEventCalledImpl) then) =
      __$$WalletWithdrawEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WalletWithDrawParams params});
}

/// @nodoc
class __$$WalletWithdrawEventCalledImplCopyWithImpl<$Res>
    extends _$WalletWithdrawEventCopyWithImpl<$Res,
        _$WalletWithdrawEventCalledImpl>
    implements _$$WalletWithdrawEventCalledImplCopyWith<$Res> {
  __$$WalletWithdrawEventCalledImplCopyWithImpl(
      _$WalletWithdrawEventCalledImpl _value,
      $Res Function(_$WalletWithdrawEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$WalletWithdrawEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as WalletWithDrawParams,
    ));
  }
}

/// @nodoc

class _$WalletWithdrawEventCalledImpl implements _WalletWithdrawEventCalled {
  const _$WalletWithdrawEventCalledImpl(this.params);

  @override
  final WalletWithDrawParams params;

  @override
  String toString() {
    return 'WalletWithdrawEvent.walletWithdrawEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletWithdrawEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletWithdrawEventCalledImplCopyWith<_$WalletWithdrawEventCalledImpl>
      get copyWith => __$$WalletWithdrawEventCalledImplCopyWithImpl<
          _$WalletWithdrawEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WalletWithDrawParams params)
        walletWithdrawEventCalled,
  }) {
    return walletWithdrawEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WalletWithDrawParams params)? walletWithdrawEventCalled,
  }) {
    return walletWithdrawEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WalletWithDrawParams params)? walletWithdrawEventCalled,
    required TResult orElse(),
  }) {
    if (walletWithdrawEventCalled != null) {
      return walletWithdrawEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletWithdrawEventCalled value)
        walletWithdrawEventCalled,
  }) {
    return walletWithdrawEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletWithdrawEventCalled value)?
        walletWithdrawEventCalled,
  }) {
    return walletWithdrawEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletWithdrawEventCalled value)?
        walletWithdrawEventCalled,
    required TResult orElse(),
  }) {
    if (walletWithdrawEventCalled != null) {
      return walletWithdrawEventCalled(this);
    }
    return orElse();
  }
}

abstract class _WalletWithdrawEventCalled implements WalletWithdrawEvent {
  const factory _WalletWithdrawEventCalled(final WalletWithDrawParams params) =
      _$WalletWithdrawEventCalledImpl;

  @override
  WalletWithDrawParams get params;
  @override
  @JsonKey(ignore: true)
  _$$WalletWithdrawEventCalledImplCopyWith<_$WalletWithdrawEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletWithdrawState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletWithdrawEntities withdrawEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletWithdrawEntities withdrawEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletWithdrawEntities withdrawEntities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletWithdrawStateInitial value) initial,
    required TResult Function(WalletWithdrawStateLoading value) loading,
    required TResult Function(_WalletWithdrawStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_WalletWithdrawStateLoadFailure value)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletWithdrawStateInitial value)? initial,
    TResult? Function(WalletWithdrawStateLoading value)? loading,
    TResult? Function(_WalletWithdrawStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletWithdrawStateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletWithdrawStateInitial value)? initial,
    TResult Function(WalletWithdrawStateLoading value)? loading,
    TResult Function(_WalletWithdrawStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletWithdrawStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletWithdrawStateCopyWith<$Res> {
  factory $WalletWithdrawStateCopyWith(
          WalletWithdrawState value, $Res Function(WalletWithdrawState) then) =
      _$WalletWithdrawStateCopyWithImpl<$Res, WalletWithdrawState>;
}

/// @nodoc
class _$WalletWithdrawStateCopyWithImpl<$Res, $Val extends WalletWithdrawState>
    implements $WalletWithdrawStateCopyWith<$Res> {
  _$WalletWithdrawStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WalletWithdrawStateInitialImplCopyWith<$Res> {
  factory _$$WalletWithdrawStateInitialImplCopyWith(
          _$WalletWithdrawStateInitialImpl value,
          $Res Function(_$WalletWithdrawStateInitialImpl) then) =
      __$$WalletWithdrawStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletWithdrawStateInitialImplCopyWithImpl<$Res>
    extends _$WalletWithdrawStateCopyWithImpl<$Res,
        _$WalletWithdrawStateInitialImpl>
    implements _$$WalletWithdrawStateInitialImplCopyWith<$Res> {
  __$$WalletWithdrawStateInitialImplCopyWithImpl(
      _$WalletWithdrawStateInitialImpl _value,
      $Res Function(_$WalletWithdrawStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletWithdrawStateInitialImpl implements _WalletWithdrawStateInitial {
  const _$WalletWithdrawStateInitialImpl();

  @override
  String toString() {
    return 'WalletWithdrawState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletWithdrawStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletWithdrawEntities withdrawEntities)
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
    TResult? Function(WalletWithdrawEntities withdrawEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletWithdrawEntities withdrawEntities)? loadSuccess,
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
    required TResult Function(_WalletWithdrawStateInitial value) initial,
    required TResult Function(WalletWithdrawStateLoading value) loading,
    required TResult Function(_WalletWithdrawStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_WalletWithdrawStateLoadFailure value)
        loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletWithdrawStateInitial value)? initial,
    TResult? Function(WalletWithdrawStateLoading value)? loading,
    TResult? Function(_WalletWithdrawStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletWithdrawStateLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletWithdrawStateInitial value)? initial,
    TResult Function(WalletWithdrawStateLoading value)? loading,
    TResult Function(_WalletWithdrawStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletWithdrawStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WalletWithdrawStateInitial implements WalletWithdrawState {
  const factory _WalletWithdrawStateInitial() =
      _$WalletWithdrawStateInitialImpl;
}

/// @nodoc
abstract class _$$WalletWithdrawStateLoadingImplCopyWith<$Res> {
  factory _$$WalletWithdrawStateLoadingImplCopyWith(
          _$WalletWithdrawStateLoadingImpl value,
          $Res Function(_$WalletWithdrawStateLoadingImpl) then) =
      __$$WalletWithdrawStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletWithdrawStateLoadingImplCopyWithImpl<$Res>
    extends _$WalletWithdrawStateCopyWithImpl<$Res,
        _$WalletWithdrawStateLoadingImpl>
    implements _$$WalletWithdrawStateLoadingImplCopyWith<$Res> {
  __$$WalletWithdrawStateLoadingImplCopyWithImpl(
      _$WalletWithdrawStateLoadingImpl _value,
      $Res Function(_$WalletWithdrawStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletWithdrawStateLoadingImpl implements WalletWithdrawStateLoading {
  const _$WalletWithdrawStateLoadingImpl();

  @override
  String toString() {
    return 'WalletWithdrawState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletWithdrawStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletWithdrawEntities withdrawEntities)
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
    TResult? Function(WalletWithdrawEntities withdrawEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletWithdrawEntities withdrawEntities)? loadSuccess,
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
    required TResult Function(_WalletWithdrawStateInitial value) initial,
    required TResult Function(WalletWithdrawStateLoading value) loading,
    required TResult Function(_WalletWithdrawStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_WalletWithdrawStateLoadFailure value)
        loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletWithdrawStateInitial value)? initial,
    TResult? Function(WalletWithdrawStateLoading value)? loading,
    TResult? Function(_WalletWithdrawStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletWithdrawStateLoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletWithdrawStateInitial value)? initial,
    TResult Function(WalletWithdrawStateLoading value)? loading,
    TResult Function(_WalletWithdrawStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletWithdrawStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WalletWithdrawStateLoading implements WalletWithdrawState {
  const factory WalletWithdrawStateLoading() = _$WalletWithdrawStateLoadingImpl;
}

/// @nodoc
abstract class _$$WalletWithdrawStateLoadSuccessImplCopyWith<$Res> {
  factory _$$WalletWithdrawStateLoadSuccessImplCopyWith(
          _$WalletWithdrawStateLoadSuccessImpl value,
          $Res Function(_$WalletWithdrawStateLoadSuccessImpl) then) =
      __$$WalletWithdrawStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletWithdrawEntities withdrawEntities});
}

/// @nodoc
class __$$WalletWithdrawStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$WalletWithdrawStateCopyWithImpl<$Res,
        _$WalletWithdrawStateLoadSuccessImpl>
    implements _$$WalletWithdrawStateLoadSuccessImplCopyWith<$Res> {
  __$$WalletWithdrawStateLoadSuccessImplCopyWithImpl(
      _$WalletWithdrawStateLoadSuccessImpl _value,
      $Res Function(_$WalletWithdrawStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withdrawEntities = null,
  }) {
    return _then(_$WalletWithdrawStateLoadSuccessImpl(
      null == withdrawEntities
          ? _value.withdrawEntities
          : withdrawEntities // ignore: cast_nullable_to_non_nullable
              as WalletWithdrawEntities,
    ));
  }
}

/// @nodoc

class _$WalletWithdrawStateLoadSuccessImpl
    implements _WalletWithdrawStateLoadSuccess {
  const _$WalletWithdrawStateLoadSuccessImpl(this.withdrawEntities);

  @override
  final WalletWithdrawEntities withdrawEntities;

  @override
  String toString() {
    return 'WalletWithdrawState.loadSuccess(withdrawEntities: $withdrawEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletWithdrawStateLoadSuccessImpl &&
            (identical(other.withdrawEntities, withdrawEntities) ||
                other.withdrawEntities == withdrawEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, withdrawEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletWithdrawStateLoadSuccessImplCopyWith<
          _$WalletWithdrawStateLoadSuccessImpl>
      get copyWith => __$$WalletWithdrawStateLoadSuccessImplCopyWithImpl<
          _$WalletWithdrawStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletWithdrawEntities withdrawEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadSuccess(withdrawEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletWithdrawEntities withdrawEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadSuccess?.call(withdrawEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletWithdrawEntities withdrawEntities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(withdrawEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletWithdrawStateInitial value) initial,
    required TResult Function(WalletWithdrawStateLoading value) loading,
    required TResult Function(_WalletWithdrawStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_WalletWithdrawStateLoadFailure value)
        loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletWithdrawStateInitial value)? initial,
    TResult? Function(WalletWithdrawStateLoading value)? loading,
    TResult? Function(_WalletWithdrawStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletWithdrawStateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletWithdrawStateInitial value)? initial,
    TResult Function(WalletWithdrawStateLoading value)? loading,
    TResult Function(_WalletWithdrawStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletWithdrawStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _WalletWithdrawStateLoadSuccess implements WalletWithdrawState {
  const factory _WalletWithdrawStateLoadSuccess(
          final WalletWithdrawEntities withdrawEntities) =
      _$WalletWithdrawStateLoadSuccessImpl;

  WalletWithdrawEntities get withdrawEntities;
  @JsonKey(ignore: true)
  _$$WalletWithdrawStateLoadSuccessImplCopyWith<
          _$WalletWithdrawStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletWithdrawStateLoadFailureImplCopyWith<$Res> {
  factory _$$WalletWithdrawStateLoadFailureImplCopyWith(
          _$WalletWithdrawStateLoadFailureImpl value,
          $Res Function(_$WalletWithdrawStateLoadFailureImpl) then) =
      __$$WalletWithdrawStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$WalletWithdrawStateLoadFailureImplCopyWithImpl<$Res>
    extends _$WalletWithdrawStateCopyWithImpl<$Res,
        _$WalletWithdrawStateLoadFailureImpl>
    implements _$$WalletWithdrawStateLoadFailureImplCopyWith<$Res> {
  __$$WalletWithdrawStateLoadFailureImplCopyWithImpl(
      _$WalletWithdrawStateLoadFailureImpl _value,
      $Res Function(_$WalletWithdrawStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$WalletWithdrawStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$WalletWithdrawStateLoadFailureImpl
    implements _WalletWithdrawStateLoadFailure {
  const _$WalletWithdrawStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'WalletWithdrawState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletWithdrawStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletWithdrawStateLoadFailureImplCopyWith<
          _$WalletWithdrawStateLoadFailureImpl>
      get copyWith => __$$WalletWithdrawStateLoadFailureImplCopyWithImpl<
          _$WalletWithdrawStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletWithdrawEntities withdrawEntities)
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
    TResult? Function(WalletWithdrawEntities withdrawEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletWithdrawEntities withdrawEntities)? loadSuccess,
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
    required TResult Function(_WalletWithdrawStateInitial value) initial,
    required TResult Function(WalletWithdrawStateLoading value) loading,
    required TResult Function(_WalletWithdrawStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_WalletWithdrawStateLoadFailure value)
        loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletWithdrawStateInitial value)? initial,
    TResult? Function(WalletWithdrawStateLoading value)? loading,
    TResult? Function(_WalletWithdrawStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletWithdrawStateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletWithdrawStateInitial value)? initial,
    TResult Function(WalletWithdrawStateLoading value)? loading,
    TResult Function(_WalletWithdrawStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletWithdrawStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _WalletWithdrawStateLoadFailure implements WalletWithdrawState {
  const factory _WalletWithdrawStateLoadFailure(final Failure failure) =
      _$WalletWithdrawStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$WalletWithdrawStateLoadFailureImplCopyWith<
          _$WalletWithdrawStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
