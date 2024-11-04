// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletCodeEvent {
  WalletCodeParams get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WalletCodeParams param) walletCodeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WalletCodeParams param)? walletCodeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WalletCodeParams param)? walletCodeEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletCodeEventCalled value)
        walletCodeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletCodeEventCalled value)? walletCodeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletCodeEventCalled value)? walletCodeEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletCodeEventCopyWith<WalletCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCodeEventCopyWith<$Res> {
  factory $WalletCodeEventCopyWith(
          WalletCodeEvent value, $Res Function(WalletCodeEvent) then) =
      _$WalletCodeEventCopyWithImpl<$Res, WalletCodeEvent>;
  @useResult
  $Res call({WalletCodeParams param});
}

/// @nodoc
class _$WalletCodeEventCopyWithImpl<$Res, $Val extends WalletCodeEvent>
    implements $WalletCodeEventCopyWith<$Res> {
  _$WalletCodeEventCopyWithImpl(this._value, this._then);

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
              as WalletCodeParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletCodeEventCalledImplCopyWith<$Res>
    implements $WalletCodeEventCopyWith<$Res> {
  factory _$$WalletCodeEventCalledImplCopyWith(
          _$WalletCodeEventCalledImpl value,
          $Res Function(_$WalletCodeEventCalledImpl) then) =
      __$$WalletCodeEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WalletCodeParams param});
}

/// @nodoc
class __$$WalletCodeEventCalledImplCopyWithImpl<$Res>
    extends _$WalletCodeEventCopyWithImpl<$Res, _$WalletCodeEventCalledImpl>
    implements _$$WalletCodeEventCalledImplCopyWith<$Res> {
  __$$WalletCodeEventCalledImplCopyWithImpl(_$WalletCodeEventCalledImpl _value,
      $Res Function(_$WalletCodeEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$WalletCodeEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as WalletCodeParams,
    ));
  }
}

/// @nodoc

class _$WalletCodeEventCalledImpl implements _WalletCodeEventCalled {
  const _$WalletCodeEventCalledImpl(this.param);

  @override
  final WalletCodeParams param;

  @override
  String toString() {
    return 'WalletCodeEvent.walletCodeEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletCodeEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletCodeEventCalledImplCopyWith<_$WalletCodeEventCalledImpl>
      get copyWith => __$$WalletCodeEventCalledImplCopyWithImpl<
          _$WalletCodeEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WalletCodeParams param) walletCodeEventCalled,
  }) {
    return walletCodeEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WalletCodeParams param)? walletCodeEventCalled,
  }) {
    return walletCodeEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WalletCodeParams param)? walletCodeEventCalled,
    required TResult orElse(),
  }) {
    if (walletCodeEventCalled != null) {
      return walletCodeEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletCodeEventCalled value)
        walletCodeEventCalled,
  }) {
    return walletCodeEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletCodeEventCalled value)? walletCodeEventCalled,
  }) {
    return walletCodeEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletCodeEventCalled value)? walletCodeEventCalled,
    required TResult orElse(),
  }) {
    if (walletCodeEventCalled != null) {
      return walletCodeEventCalled(this);
    }
    return orElse();
  }
}

abstract class _WalletCodeEventCalled implements WalletCodeEvent {
  const factory _WalletCodeEventCalled(final WalletCodeParams param) =
      _$WalletCodeEventCalledImpl;

  @override
  WalletCodeParams get param;
  @override
  @JsonKey(ignore: true)
  _$$WalletCodeEventCalledImplCopyWith<_$WalletCodeEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletCodeEntities walletCodeEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletCodeEntities walletCodeEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletCodeEntities walletCodeEntities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletCodeState value) initial,
    required TResult Function(WalletCodeStateLoading value) loading,
    required TResult Function(_WalletCodeStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletCodeStateLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletCodeState value)? initial,
    TResult? Function(WalletCodeStateLoading value)? loading,
    TResult? Function(_WalletCodeStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletCodeStateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletCodeState value)? initial,
    TResult Function(WalletCodeStateLoading value)? loading,
    TResult Function(_WalletCodeStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletCodeStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCodeStateCopyWith<$Res> {
  factory $WalletCodeStateCopyWith(
          WalletCodeState value, $Res Function(WalletCodeState) then) =
      _$WalletCodeStateCopyWithImpl<$Res, WalletCodeState>;
}

/// @nodoc
class _$WalletCodeStateCopyWithImpl<$Res, $Val extends WalletCodeState>
    implements $WalletCodeStateCopyWith<$Res> {
  _$WalletCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WalletCodeStateImplCopyWith<$Res> {
  factory _$$WalletCodeStateImplCopyWith(_$WalletCodeStateImpl value,
          $Res Function(_$WalletCodeStateImpl) then) =
      __$$WalletCodeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletCodeStateImplCopyWithImpl<$Res>
    extends _$WalletCodeStateCopyWithImpl<$Res, _$WalletCodeStateImpl>
    implements _$$WalletCodeStateImplCopyWith<$Res> {
  __$$WalletCodeStateImplCopyWithImpl(
      _$WalletCodeStateImpl _value, $Res Function(_$WalletCodeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletCodeStateImpl implements _WalletCodeState {
  const _$WalletCodeStateImpl();

  @override
  String toString() {
    return 'WalletCodeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletCodeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletCodeEntities walletCodeEntities)
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
    TResult? Function(WalletCodeEntities walletCodeEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletCodeEntities walletCodeEntities)? loadSuccess,
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
    required TResult Function(_WalletCodeState value) initial,
    required TResult Function(WalletCodeStateLoading value) loading,
    required TResult Function(_WalletCodeStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletCodeStateLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletCodeState value)? initial,
    TResult? Function(WalletCodeStateLoading value)? loading,
    TResult? Function(_WalletCodeStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletCodeStateLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletCodeState value)? initial,
    TResult Function(WalletCodeStateLoading value)? loading,
    TResult Function(_WalletCodeStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletCodeStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WalletCodeState implements WalletCodeState {
  const factory _WalletCodeState() = _$WalletCodeStateImpl;
}

/// @nodoc
abstract class _$$WalletCodeStateLoadingImplCopyWith<$Res> {
  factory _$$WalletCodeStateLoadingImplCopyWith(
          _$WalletCodeStateLoadingImpl value,
          $Res Function(_$WalletCodeStateLoadingImpl) then) =
      __$$WalletCodeStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletCodeStateLoadingImplCopyWithImpl<$Res>
    extends _$WalletCodeStateCopyWithImpl<$Res, _$WalletCodeStateLoadingImpl>
    implements _$$WalletCodeStateLoadingImplCopyWith<$Res> {
  __$$WalletCodeStateLoadingImplCopyWithImpl(
      _$WalletCodeStateLoadingImpl _value,
      $Res Function(_$WalletCodeStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletCodeStateLoadingImpl implements WalletCodeStateLoading {
  const _$WalletCodeStateLoadingImpl();

  @override
  String toString() {
    return 'WalletCodeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletCodeStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletCodeEntities walletCodeEntities)
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
    TResult? Function(WalletCodeEntities walletCodeEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletCodeEntities walletCodeEntities)? loadSuccess,
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
    required TResult Function(_WalletCodeState value) initial,
    required TResult Function(WalletCodeStateLoading value) loading,
    required TResult Function(_WalletCodeStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletCodeStateLoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletCodeState value)? initial,
    TResult? Function(WalletCodeStateLoading value)? loading,
    TResult? Function(_WalletCodeStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletCodeStateLoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletCodeState value)? initial,
    TResult Function(WalletCodeStateLoading value)? loading,
    TResult Function(_WalletCodeStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletCodeStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WalletCodeStateLoading implements WalletCodeState {
  const factory WalletCodeStateLoading() = _$WalletCodeStateLoadingImpl;
}

/// @nodoc
abstract class _$$WalletCodeStateLoadSuccessImplCopyWith<$Res> {
  factory _$$WalletCodeStateLoadSuccessImplCopyWith(
          _$WalletCodeStateLoadSuccessImpl value,
          $Res Function(_$WalletCodeStateLoadSuccessImpl) then) =
      __$$WalletCodeStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletCodeEntities walletCodeEntities});
}

/// @nodoc
class __$$WalletCodeStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$WalletCodeStateCopyWithImpl<$Res,
        _$WalletCodeStateLoadSuccessImpl>
    implements _$$WalletCodeStateLoadSuccessImplCopyWith<$Res> {
  __$$WalletCodeStateLoadSuccessImplCopyWithImpl(
      _$WalletCodeStateLoadSuccessImpl _value,
      $Res Function(_$WalletCodeStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletCodeEntities = null,
  }) {
    return _then(_$WalletCodeStateLoadSuccessImpl(
      null == walletCodeEntities
          ? _value.walletCodeEntities
          : walletCodeEntities // ignore: cast_nullable_to_non_nullable
              as WalletCodeEntities,
    ));
  }
}

/// @nodoc

class _$WalletCodeStateLoadSuccessImpl implements _WalletCodeStateLoadSuccess {
  const _$WalletCodeStateLoadSuccessImpl(this.walletCodeEntities);

  @override
  final WalletCodeEntities walletCodeEntities;

  @override
  String toString() {
    return 'WalletCodeState.loadSuccess(walletCodeEntities: $walletCodeEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletCodeStateLoadSuccessImpl &&
            (identical(other.walletCodeEntities, walletCodeEntities) ||
                other.walletCodeEntities == walletCodeEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletCodeEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletCodeStateLoadSuccessImplCopyWith<_$WalletCodeStateLoadSuccessImpl>
      get copyWith => __$$WalletCodeStateLoadSuccessImplCopyWithImpl<
          _$WalletCodeStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletCodeEntities walletCodeEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadSuccess(walletCodeEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletCodeEntities walletCodeEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadSuccess?.call(walletCodeEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletCodeEntities walletCodeEntities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(walletCodeEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalletCodeState value) initial,
    required TResult Function(WalletCodeStateLoading value) loading,
    required TResult Function(_WalletCodeStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletCodeStateLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletCodeState value)? initial,
    TResult? Function(WalletCodeStateLoading value)? loading,
    TResult? Function(_WalletCodeStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletCodeStateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletCodeState value)? initial,
    TResult Function(WalletCodeStateLoading value)? loading,
    TResult Function(_WalletCodeStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletCodeStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _WalletCodeStateLoadSuccess implements WalletCodeState {
  const factory _WalletCodeStateLoadSuccess(
          final WalletCodeEntities walletCodeEntities) =
      _$WalletCodeStateLoadSuccessImpl;

  WalletCodeEntities get walletCodeEntities;
  @JsonKey(ignore: true)
  _$$WalletCodeStateLoadSuccessImplCopyWith<_$WalletCodeStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletCodeStateLoadFailureImplCopyWith<$Res> {
  factory _$$WalletCodeStateLoadFailureImplCopyWith(
          _$WalletCodeStateLoadFailureImpl value,
          $Res Function(_$WalletCodeStateLoadFailureImpl) then) =
      __$$WalletCodeStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$WalletCodeStateLoadFailureImplCopyWithImpl<$Res>
    extends _$WalletCodeStateCopyWithImpl<$Res,
        _$WalletCodeStateLoadFailureImpl>
    implements _$$WalletCodeStateLoadFailureImplCopyWith<$Res> {
  __$$WalletCodeStateLoadFailureImplCopyWithImpl(
      _$WalletCodeStateLoadFailureImpl _value,
      $Res Function(_$WalletCodeStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$WalletCodeStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$WalletCodeStateLoadFailureImpl implements _WalletCodeStateLoadFailure {
  const _$WalletCodeStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'WalletCodeState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletCodeStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletCodeStateLoadFailureImplCopyWith<_$WalletCodeStateLoadFailureImpl>
      get copyWith => __$$WalletCodeStateLoadFailureImplCopyWithImpl<
          _$WalletCodeStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletCodeEntities walletCodeEntities)
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
    TResult? Function(WalletCodeEntities walletCodeEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletCodeEntities walletCodeEntities)? loadSuccess,
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
    required TResult Function(_WalletCodeState value) initial,
    required TResult Function(WalletCodeStateLoading value) loading,
    required TResult Function(_WalletCodeStateLoadSuccess value) loadSuccess,
    required TResult Function(_WalletCodeStateLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalletCodeState value)? initial,
    TResult? Function(WalletCodeStateLoading value)? loading,
    TResult? Function(_WalletCodeStateLoadSuccess value)? loadSuccess,
    TResult? Function(_WalletCodeStateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalletCodeState value)? initial,
    TResult Function(WalletCodeStateLoading value)? loading,
    TResult Function(_WalletCodeStateLoadSuccess value)? loadSuccess,
    TResult Function(_WalletCodeStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _WalletCodeStateLoadFailure implements WalletCodeState {
  const factory _WalletCodeStateLoadFailure(final Failure failure) =
      _$WalletCodeStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$WalletCodeStateLoadFailureImplCopyWith<_$WalletCodeStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
