// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deposit_result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DepositResultEvent {
  DepositResultParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepositResultParam param)
        depositResultEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepositResultParam param)? depositResultEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepositResultParam param)? depositResultEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DepositResultEventCalled value)
        depositResultEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DepositResultEventCalled value)?
        depositResultEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepositResultEventCalled value)? depositResultEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DepositResultEventCopyWith<DepositResultEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositResultEventCopyWith<$Res> {
  factory $DepositResultEventCopyWith(
          DepositResultEvent value, $Res Function(DepositResultEvent) then) =
      _$DepositResultEventCopyWithImpl<$Res, DepositResultEvent>;
  @useResult
  $Res call({DepositResultParam param});
}

/// @nodoc
class _$DepositResultEventCopyWithImpl<$Res, $Val extends DepositResultEvent>
    implements $DepositResultEventCopyWith<$Res> {
  _$DepositResultEventCopyWithImpl(this._value, this._then);

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
              as DepositResultParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepositResultEventCalledImplCopyWith<$Res>
    implements $DepositResultEventCopyWith<$Res> {
  factory _$$DepositResultEventCalledImplCopyWith(
          _$DepositResultEventCalledImpl value,
          $Res Function(_$DepositResultEventCalledImpl) then) =
      __$$DepositResultEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DepositResultParam param});
}

/// @nodoc
class __$$DepositResultEventCalledImplCopyWithImpl<$Res>
    extends _$DepositResultEventCopyWithImpl<$Res,
        _$DepositResultEventCalledImpl>
    implements _$$DepositResultEventCalledImplCopyWith<$Res> {
  __$$DepositResultEventCalledImplCopyWithImpl(
      _$DepositResultEventCalledImpl _value,
      $Res Function(_$DepositResultEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$DepositResultEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as DepositResultParam,
    ));
  }
}

/// @nodoc

class _$DepositResultEventCalledImpl implements _DepositResultEventCalled {
  const _$DepositResultEventCalledImpl(this.param);

  @override
  final DepositResultParam param;

  @override
  String toString() {
    return 'DepositResultEvent.depositResultEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepositResultEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepositResultEventCalledImplCopyWith<_$DepositResultEventCalledImpl>
      get copyWith => __$$DepositResultEventCalledImplCopyWithImpl<
          _$DepositResultEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepositResultParam param)
        depositResultEventCalled,
  }) {
    return depositResultEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepositResultParam param)? depositResultEventCalled,
  }) {
    return depositResultEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepositResultParam param)? depositResultEventCalled,
    required TResult orElse(),
  }) {
    if (depositResultEventCalled != null) {
      return depositResultEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DepositResultEventCalled value)
        depositResultEventCalled,
  }) {
    return depositResultEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DepositResultEventCalled value)?
        depositResultEventCalled,
  }) {
    return depositResultEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepositResultEventCalled value)? depositResultEventCalled,
    required TResult orElse(),
  }) {
    if (depositResultEventCalled != null) {
      return depositResultEventCalled(this);
    }
    return orElse();
  }
}

abstract class _DepositResultEventCalled implements DepositResultEvent {
  const factory _DepositResultEventCalled(final DepositResultParam param) =
      _$DepositResultEventCalledImpl;

  @override
  DepositResultParam get param;
  @override
  @JsonKey(ignore: true)
  _$$DepositResultEventCalledImplCopyWith<_$DepositResultEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DepositResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletDepositResultEntities entities) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletDepositResultEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletDepositResultEntities entities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DepositResultStateInitial value) initial,
    required TResult Function(DepositResultStateLoading value) loading,
    required TResult Function(_DepositResultStateLoadSuccess value) loadSuccess,
    required TResult Function(_DepositResultStateLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DepositResultStateInitial value)? initial,
    TResult? Function(DepositResultStateLoading value)? loading,
    TResult? Function(_DepositResultStateLoadSuccess value)? loadSuccess,
    TResult? Function(_DepositResultStateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepositResultStateInitial value)? initial,
    TResult Function(DepositResultStateLoading value)? loading,
    TResult Function(_DepositResultStateLoadSuccess value)? loadSuccess,
    TResult Function(_DepositResultStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositResultStateCopyWith<$Res> {
  factory $DepositResultStateCopyWith(
          DepositResultState value, $Res Function(DepositResultState) then) =
      _$DepositResultStateCopyWithImpl<$Res, DepositResultState>;
}

/// @nodoc
class _$DepositResultStateCopyWithImpl<$Res, $Val extends DepositResultState>
    implements $DepositResultStateCopyWith<$Res> {
  _$DepositResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DepositResultStateInitialImplCopyWith<$Res> {
  factory _$$DepositResultStateInitialImplCopyWith(
          _$DepositResultStateInitialImpl value,
          $Res Function(_$DepositResultStateInitialImpl) then) =
      __$$DepositResultStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DepositResultStateInitialImplCopyWithImpl<$Res>
    extends _$DepositResultStateCopyWithImpl<$Res,
        _$DepositResultStateInitialImpl>
    implements _$$DepositResultStateInitialImplCopyWith<$Res> {
  __$$DepositResultStateInitialImplCopyWithImpl(
      _$DepositResultStateInitialImpl _value,
      $Res Function(_$DepositResultStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DepositResultStateInitialImpl implements _DepositResultStateInitial {
  const _$DepositResultStateInitialImpl();

  @override
  String toString() {
    return 'DepositResultState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepositResultStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletDepositResultEntities entities) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletDepositResultEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletDepositResultEntities entities)? loadSuccess,
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
    required TResult Function(_DepositResultStateInitial value) initial,
    required TResult Function(DepositResultStateLoading value) loading,
    required TResult Function(_DepositResultStateLoadSuccess value) loadSuccess,
    required TResult Function(_DepositResultStateLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DepositResultStateInitial value)? initial,
    TResult? Function(DepositResultStateLoading value)? loading,
    TResult? Function(_DepositResultStateLoadSuccess value)? loadSuccess,
    TResult? Function(_DepositResultStateLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepositResultStateInitial value)? initial,
    TResult Function(DepositResultStateLoading value)? loading,
    TResult Function(_DepositResultStateLoadSuccess value)? loadSuccess,
    TResult Function(_DepositResultStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DepositResultStateInitial implements DepositResultState {
  const factory _DepositResultStateInitial() = _$DepositResultStateInitialImpl;
}

/// @nodoc
abstract class _$$DepositResultStateLoadingImplCopyWith<$Res> {
  factory _$$DepositResultStateLoadingImplCopyWith(
          _$DepositResultStateLoadingImpl value,
          $Res Function(_$DepositResultStateLoadingImpl) then) =
      __$$DepositResultStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DepositResultStateLoadingImplCopyWithImpl<$Res>
    extends _$DepositResultStateCopyWithImpl<$Res,
        _$DepositResultStateLoadingImpl>
    implements _$$DepositResultStateLoadingImplCopyWith<$Res> {
  __$$DepositResultStateLoadingImplCopyWithImpl(
      _$DepositResultStateLoadingImpl _value,
      $Res Function(_$DepositResultStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DepositResultStateLoadingImpl implements DepositResultStateLoading {
  const _$DepositResultStateLoadingImpl();

  @override
  String toString() {
    return 'DepositResultState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepositResultStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletDepositResultEntities entities) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletDepositResultEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletDepositResultEntities entities)? loadSuccess,
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
    required TResult Function(_DepositResultStateInitial value) initial,
    required TResult Function(DepositResultStateLoading value) loading,
    required TResult Function(_DepositResultStateLoadSuccess value) loadSuccess,
    required TResult Function(_DepositResultStateLoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DepositResultStateInitial value)? initial,
    TResult? Function(DepositResultStateLoading value)? loading,
    TResult? Function(_DepositResultStateLoadSuccess value)? loadSuccess,
    TResult? Function(_DepositResultStateLoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepositResultStateInitial value)? initial,
    TResult Function(DepositResultStateLoading value)? loading,
    TResult Function(_DepositResultStateLoadSuccess value)? loadSuccess,
    TResult Function(_DepositResultStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DepositResultStateLoading implements DepositResultState {
  const factory DepositResultStateLoading() = _$DepositResultStateLoadingImpl;
}

/// @nodoc
abstract class _$$DepositResultStateLoadSuccessImplCopyWith<$Res> {
  factory _$$DepositResultStateLoadSuccessImplCopyWith(
          _$DepositResultStateLoadSuccessImpl value,
          $Res Function(_$DepositResultStateLoadSuccessImpl) then) =
      __$$DepositResultStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletDepositResultEntities entities});
}

/// @nodoc
class __$$DepositResultStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$DepositResultStateCopyWithImpl<$Res,
        _$DepositResultStateLoadSuccessImpl>
    implements _$$DepositResultStateLoadSuccessImplCopyWith<$Res> {
  __$$DepositResultStateLoadSuccessImplCopyWithImpl(
      _$DepositResultStateLoadSuccessImpl _value,
      $Res Function(_$DepositResultStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
  }) {
    return _then(_$DepositResultStateLoadSuccessImpl(
      null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as WalletDepositResultEntities,
    ));
  }
}

/// @nodoc

class _$DepositResultStateLoadSuccessImpl
    implements _DepositResultStateLoadSuccess {
  const _$DepositResultStateLoadSuccessImpl(this.entities);

  @override
  final WalletDepositResultEntities entities;

  @override
  String toString() {
    return 'DepositResultState.loadSuccess(entities: $entities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepositResultStateLoadSuccessImpl &&
            (identical(other.entities, entities) ||
                other.entities == entities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepositResultStateLoadSuccessImplCopyWith<
          _$DepositResultStateLoadSuccessImpl>
      get copyWith => __$$DepositResultStateLoadSuccessImplCopyWithImpl<
          _$DepositResultStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletDepositResultEntities entities) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadSuccess(entities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletDepositResultEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadSuccess?.call(entities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletDepositResultEntities entities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(entities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DepositResultStateInitial value) initial,
    required TResult Function(DepositResultStateLoading value) loading,
    required TResult Function(_DepositResultStateLoadSuccess value) loadSuccess,
    required TResult Function(_DepositResultStateLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DepositResultStateInitial value)? initial,
    TResult? Function(DepositResultStateLoading value)? loading,
    TResult? Function(_DepositResultStateLoadSuccess value)? loadSuccess,
    TResult? Function(_DepositResultStateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepositResultStateInitial value)? initial,
    TResult Function(DepositResultStateLoading value)? loading,
    TResult Function(_DepositResultStateLoadSuccess value)? loadSuccess,
    TResult Function(_DepositResultStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _DepositResultStateLoadSuccess implements DepositResultState {
  const factory _DepositResultStateLoadSuccess(
          final WalletDepositResultEntities entities) =
      _$DepositResultStateLoadSuccessImpl;

  WalletDepositResultEntities get entities;
  @JsonKey(ignore: true)
  _$$DepositResultStateLoadSuccessImplCopyWith<
          _$DepositResultStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DepositResultStateLoadFailureImplCopyWith<$Res> {
  factory _$$DepositResultStateLoadFailureImplCopyWith(
          _$DepositResultStateLoadFailureImpl value,
          $Res Function(_$DepositResultStateLoadFailureImpl) then) =
      __$$DepositResultStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$DepositResultStateLoadFailureImplCopyWithImpl<$Res>
    extends _$DepositResultStateCopyWithImpl<$Res,
        _$DepositResultStateLoadFailureImpl>
    implements _$$DepositResultStateLoadFailureImplCopyWith<$Res> {
  __$$DepositResultStateLoadFailureImplCopyWithImpl(
      _$DepositResultStateLoadFailureImpl _value,
      $Res Function(_$DepositResultStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$DepositResultStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$DepositResultStateLoadFailureImpl
    implements _DepositResultStateLoadFailure {
  const _$DepositResultStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'DepositResultState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepositResultStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepositResultStateLoadFailureImplCopyWith<
          _$DepositResultStateLoadFailureImpl>
      get copyWith => __$$DepositResultStateLoadFailureImplCopyWithImpl<
          _$DepositResultStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WalletDepositResultEntities entities) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WalletDepositResultEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WalletDepositResultEntities entities)? loadSuccess,
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
    required TResult Function(_DepositResultStateInitial value) initial,
    required TResult Function(DepositResultStateLoading value) loading,
    required TResult Function(_DepositResultStateLoadSuccess value) loadSuccess,
    required TResult Function(_DepositResultStateLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DepositResultStateInitial value)? initial,
    TResult? Function(DepositResultStateLoading value)? loading,
    TResult? Function(_DepositResultStateLoadSuccess value)? loadSuccess,
    TResult? Function(_DepositResultStateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepositResultStateInitial value)? initial,
    TResult Function(DepositResultStateLoading value)? loading,
    TResult Function(_DepositResultStateLoadSuccess value)? loadSuccess,
    TResult Function(_DepositResultStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _DepositResultStateLoadFailure implements DepositResultState {
  const factory _DepositResultStateLoadFailure(final Failure failure) =
      _$DepositResultStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$DepositResultStateLoadFailureImplCopyWith<
          _$DepositResultStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
