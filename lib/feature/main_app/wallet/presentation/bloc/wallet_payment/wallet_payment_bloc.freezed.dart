// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletPaymentEvent {
  WalletPaymentParams get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WalletPaymentParams param)
        walletPaymentEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WalletPaymentParams param)? walletPaymentEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WalletPaymentParams param)? walletPaymentEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_walletPaymentEventCalled value)
        walletPaymentEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_walletPaymentEventCalled value)?
        walletPaymentEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_walletPaymentEventCalled value)? walletPaymentEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletPaymentEventCopyWith<WalletPaymentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletPaymentEventCopyWith<$Res> {
  factory $WalletPaymentEventCopyWith(
          WalletPaymentEvent value, $Res Function(WalletPaymentEvent) then) =
      _$WalletPaymentEventCopyWithImpl<$Res, WalletPaymentEvent>;
  @useResult
  $Res call({WalletPaymentParams param});
}

/// @nodoc
class _$WalletPaymentEventCopyWithImpl<$Res, $Val extends WalletPaymentEvent>
    implements $WalletPaymentEventCopyWith<$Res> {
  _$WalletPaymentEventCopyWithImpl(this._value, this._then);

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
              as WalletPaymentParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$walletPaymentEventCalledImplCopyWith<$Res>
    implements $WalletPaymentEventCopyWith<$Res> {
  factory _$$walletPaymentEventCalledImplCopyWith(
          _$walletPaymentEventCalledImpl value,
          $Res Function(_$walletPaymentEventCalledImpl) then) =
      __$$walletPaymentEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WalletPaymentParams param});
}

/// @nodoc
class __$$walletPaymentEventCalledImplCopyWithImpl<$Res>
    extends _$WalletPaymentEventCopyWithImpl<$Res,
        _$walletPaymentEventCalledImpl>
    implements _$$walletPaymentEventCalledImplCopyWith<$Res> {
  __$$walletPaymentEventCalledImplCopyWithImpl(
      _$walletPaymentEventCalledImpl _value,
      $Res Function(_$walletPaymentEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$walletPaymentEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as WalletPaymentParams,
    ));
  }
}

/// @nodoc

class _$walletPaymentEventCalledImpl implements _walletPaymentEventCalled {
  const _$walletPaymentEventCalledImpl(this.param);

  @override
  final WalletPaymentParams param;

  @override
  String toString() {
    return 'WalletPaymentEvent.walletPaymentEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$walletPaymentEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$walletPaymentEventCalledImplCopyWith<_$walletPaymentEventCalledImpl>
      get copyWith => __$$walletPaymentEventCalledImplCopyWithImpl<
          _$walletPaymentEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WalletPaymentParams param)
        walletPaymentEventCalled,
  }) {
    return walletPaymentEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WalletPaymentParams param)? walletPaymentEventCalled,
  }) {
    return walletPaymentEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WalletPaymentParams param)? walletPaymentEventCalled,
    required TResult orElse(),
  }) {
    if (walletPaymentEventCalled != null) {
      return walletPaymentEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_walletPaymentEventCalled value)
        walletPaymentEventCalled,
  }) {
    return walletPaymentEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_walletPaymentEventCalled value)?
        walletPaymentEventCalled,
  }) {
    return walletPaymentEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_walletPaymentEventCalled value)? walletPaymentEventCalled,
    required TResult orElse(),
  }) {
    if (walletPaymentEventCalled != null) {
      return walletPaymentEventCalled(this);
    }
    return orElse();
  }
}

abstract class _walletPaymentEventCalled implements WalletPaymentEvent {
  const factory _walletPaymentEventCalled(final WalletPaymentParams param) =
      _$walletPaymentEventCalledImpl;

  @override
  WalletPaymentParams get param;
  @override
  @JsonKey(ignore: true)
  _$$walletPaymentEventCalledImplCopyWith<_$walletPaymentEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletPaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletPaymentResponseEntities walletPaymentResponseEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            WalletPaymentResponseEntities walletPaymentResponseEntities)?
        loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            WalletPaymentResponseEntities walletPaymentResponseEntities)?
        loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletPaymentStateInitial value) initial,
    required TResult Function(WalletPaymentStateLoading value) loading,
    required TResult Function(_WalletPaymentStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletPaymentStateLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletPaymentStateInitial value)? initial,
    TResult? Function(WalletPaymentStateLoading value)? loading,
    TResult? Function(_WalletPaymentStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletPaymentStateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletPaymentStateInitial value)? initial,
    TResult Function(WalletPaymentStateLoading value)? loading,
    TResult Function(_WalletPaymentStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletPaymentStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletPaymentStateCopyWith<$Res> {
  factory $WalletPaymentStateCopyWith(
          WalletPaymentState value, $Res Function(WalletPaymentState) then) =
      _$WalletPaymentStateCopyWithImpl<$Res, WalletPaymentState>;
}

/// @nodoc
class _$WalletPaymentStateCopyWithImpl<$Res, $Val extends WalletPaymentState>
    implements $WalletPaymentStateCopyWith<$Res> {
  _$WalletPaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WalletPaymentStateInitialImplCopyWith<$Res> {
  factory _$$WalletPaymentStateInitialImplCopyWith(
          _$WalletPaymentStateInitialImpl value,
          $Res Function(_$WalletPaymentStateInitialImpl) then) =
      __$$WalletPaymentStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletPaymentStateInitialImplCopyWithImpl<$Res>
    extends _$WalletPaymentStateCopyWithImpl<$Res,
        _$WalletPaymentStateInitialImpl>
    implements _$$WalletPaymentStateInitialImplCopyWith<$Res> {
  __$$WalletPaymentStateInitialImplCopyWithImpl(
      _$WalletPaymentStateInitialImpl _value,
      $Res Function(_$WalletPaymentStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletPaymentStateInitialImpl implements _WalletPaymentStateInitial {
  const _$WalletPaymentStateInitialImpl();

  @override
  String toString() {
    return 'WalletPaymentState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletPaymentStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletPaymentResponseEntities walletPaymentResponseEntities)
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
            WalletPaymentResponseEntities walletPaymentResponseEntities)?
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
            WalletPaymentResponseEntities walletPaymentResponseEntities)?
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
    required TResult Function(_WalletPaymentStateInitial value) initial,
    required TResult Function(WalletPaymentStateLoading value) loading,
    required TResult Function(_WalletPaymentStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletPaymentStateLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletPaymentStateInitial value)? initial,
    TResult? Function(WalletPaymentStateLoading value)? loading,
    TResult? Function(_WalletPaymentStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletPaymentStateLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletPaymentStateInitial value)? initial,
    TResult Function(WalletPaymentStateLoading value)? loading,
    TResult Function(_WalletPaymentStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletPaymentStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WalletPaymentStateInitial implements WalletPaymentState {
  const factory _WalletPaymentStateInitial() = _$WalletPaymentStateInitialImpl;
}

/// @nodoc
abstract class _$$WalletPaymentStateLoadingImplCopyWith<$Res> {
  factory _$$WalletPaymentStateLoadingImplCopyWith(
          _$WalletPaymentStateLoadingImpl value,
          $Res Function(_$WalletPaymentStateLoadingImpl) then) =
      __$$WalletPaymentStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletPaymentStateLoadingImplCopyWithImpl<$Res>
    extends _$WalletPaymentStateCopyWithImpl<$Res,
        _$WalletPaymentStateLoadingImpl>
    implements _$$WalletPaymentStateLoadingImplCopyWith<$Res> {
  __$$WalletPaymentStateLoadingImplCopyWithImpl(
      _$WalletPaymentStateLoadingImpl _value,
      $Res Function(_$WalletPaymentStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletPaymentStateLoadingImpl implements WalletPaymentStateLoading {
  const _$WalletPaymentStateLoadingImpl();

  @override
  String toString() {
    return 'WalletPaymentState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletPaymentStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletPaymentResponseEntities walletPaymentResponseEntities)
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
            WalletPaymentResponseEntities walletPaymentResponseEntities)?
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
            WalletPaymentResponseEntities walletPaymentResponseEntities)?
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
    required TResult Function(_WalletPaymentStateInitial value) initial,
    required TResult Function(WalletPaymentStateLoading value) loading,
    required TResult Function(_WalletPaymentStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletPaymentStateLoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletPaymentStateInitial value)? initial,
    TResult? Function(WalletPaymentStateLoading value)? loading,
    TResult? Function(_WalletPaymentStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletPaymentStateLoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletPaymentStateInitial value)? initial,
    TResult Function(WalletPaymentStateLoading value)? loading,
    TResult Function(_WalletPaymentStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletPaymentStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WalletPaymentStateLoading implements WalletPaymentState {
  const factory WalletPaymentStateLoading() = _$WalletPaymentStateLoadingImpl;
}

/// @nodoc
abstract class _$$WalletPaymentStateLoadSuccessImplCopyWith<$Res> {
  factory _$$WalletPaymentStateLoadSuccessImplCopyWith(
          _$WalletPaymentStateLoadSuccessImpl value,
          $Res Function(_$WalletPaymentStateLoadSuccessImpl) then) =
      __$$WalletPaymentStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletPaymentResponseEntities walletPaymentResponseEntities});
}

/// @nodoc
class __$$WalletPaymentStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$WalletPaymentStateCopyWithImpl<$Res,
        _$WalletPaymentStateLoadSuccessImpl>
    implements _$$WalletPaymentStateLoadSuccessImplCopyWith<$Res> {
  __$$WalletPaymentStateLoadSuccessImplCopyWithImpl(
      _$WalletPaymentStateLoadSuccessImpl _value,
      $Res Function(_$WalletPaymentStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletPaymentResponseEntities = null,
  }) {
    return _then(_$WalletPaymentStateLoadSuccessImpl(
      null == walletPaymentResponseEntities
          ? _value.walletPaymentResponseEntities
          : walletPaymentResponseEntities // ignore: cast_nullable_to_non_nullable
              as WalletPaymentResponseEntities,
    ));
  }
}

/// @nodoc

class _$WalletPaymentStateLoadSuccessImpl
    implements _WalletPaymentStateLoadSuccess {
  const _$WalletPaymentStateLoadSuccessImpl(this.walletPaymentResponseEntities);

  @override
  final WalletPaymentResponseEntities walletPaymentResponseEntities;

  @override
  String toString() {
    return 'WalletPaymentState.loadSuccess(walletPaymentResponseEntities: $walletPaymentResponseEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletPaymentStateLoadSuccessImpl &&
            (identical(other.walletPaymentResponseEntities,
                    walletPaymentResponseEntities) ||
                other.walletPaymentResponseEntities ==
                    walletPaymentResponseEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletPaymentResponseEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletPaymentStateLoadSuccessImplCopyWith<
          _$WalletPaymentStateLoadSuccessImpl>
      get copyWith => __$$WalletPaymentStateLoadSuccessImplCopyWithImpl<
          _$WalletPaymentStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletPaymentResponseEntities walletPaymentResponseEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadSuccess(walletPaymentResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            WalletPaymentResponseEntities walletPaymentResponseEntities)?
        loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadSuccess?.call(walletPaymentResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            WalletPaymentResponseEntities walletPaymentResponseEntities)?
        loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(walletPaymentResponseEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletPaymentStateInitial value) initial,
    required TResult Function(WalletPaymentStateLoading value) loading,
    required TResult Function(_WalletPaymentStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletPaymentStateLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletPaymentStateInitial value)? initial,
    TResult? Function(WalletPaymentStateLoading value)? loading,
    TResult? Function(_WalletPaymentStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletPaymentStateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletPaymentStateInitial value)? initial,
    TResult Function(WalletPaymentStateLoading value)? loading,
    TResult Function(_WalletPaymentStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletPaymentStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _WalletPaymentStateLoadSuccess implements WalletPaymentState {
  const factory _WalletPaymentStateLoadSuccess(
          final WalletPaymentResponseEntities walletPaymentResponseEntities) =
      _$WalletPaymentStateLoadSuccessImpl;

  WalletPaymentResponseEntities get walletPaymentResponseEntities;
  @JsonKey(ignore: true)
  _$$WalletPaymentStateLoadSuccessImplCopyWith<
          _$WalletPaymentStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletPaymentStateLoadFailureImplCopyWith<$Res> {
  factory _$$WalletPaymentStateLoadFailureImplCopyWith(
          _$WalletPaymentStateLoadFailureImpl value,
          $Res Function(_$WalletPaymentStateLoadFailureImpl) then) =
      __$$WalletPaymentStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$WalletPaymentStateLoadFailureImplCopyWithImpl<$Res>
    extends _$WalletPaymentStateCopyWithImpl<$Res,
        _$WalletPaymentStateLoadFailureImpl>
    implements _$$WalletPaymentStateLoadFailureImplCopyWith<$Res> {
  __$$WalletPaymentStateLoadFailureImplCopyWithImpl(
      _$WalletPaymentStateLoadFailureImpl _value,
      $Res Function(_$WalletPaymentStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$WalletPaymentStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$WalletPaymentStateLoadFailureImpl
    implements _WalletPaymentStateLoadFailure {
  const _$WalletPaymentStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'WalletPaymentState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletPaymentStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletPaymentStateLoadFailureImplCopyWith<
          _$WalletPaymentStateLoadFailureImpl>
      get copyWith => __$$WalletPaymentStateLoadFailureImplCopyWithImpl<
          _$WalletPaymentStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            WalletPaymentResponseEntities walletPaymentResponseEntities)
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
            WalletPaymentResponseEntities walletPaymentResponseEntities)?
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
            WalletPaymentResponseEntities walletPaymentResponseEntities)?
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
    required TResult Function(_WalletPaymentStateInitial value) initial,
    required TResult Function(WalletPaymentStateLoading value) loading,
    required TResult Function(_WalletPaymentStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletPaymentStateLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletPaymentStateInitial value)? initial,
    TResult? Function(WalletPaymentStateLoading value)? loading,
    TResult? Function(_WalletPaymentStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletPaymentStateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletPaymentStateInitial value)? initial,
    TResult Function(WalletPaymentStateLoading value)? loading,
    TResult Function(_WalletPaymentStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletPaymentStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _WalletPaymentStateLoadFailure implements WalletPaymentState {
  const factory _WalletPaymentStateLoadFailure(final Failure failure) =
      _$WalletPaymentStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$WalletPaymentStateLoadFailureImplCopyWith<
          _$WalletPaymentStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
