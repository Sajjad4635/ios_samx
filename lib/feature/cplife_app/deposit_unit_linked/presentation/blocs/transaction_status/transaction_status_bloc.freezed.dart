// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionStatusEvent {
  TransactionStatusParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionStatusParam param)
        transactionStatusEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionStatusParam param)?
        transactionStatusEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionStatusParam param)?
        transactionStatusEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransactionStatusEventCalled value)
        transactionStatusEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransactionStatusEventCalled value)?
        transactionStatusEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionStatusEventCalled value)?
        transactionStatusEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionStatusEventCopyWith<TransactionStatusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStatusEventCopyWith<$Res> {
  factory $TransactionStatusEventCopyWith(TransactionStatusEvent value,
          $Res Function(TransactionStatusEvent) then) =
      _$TransactionStatusEventCopyWithImpl<$Res, TransactionStatusEvent>;
  @useResult
  $Res call({TransactionStatusParam param});
}

/// @nodoc
class _$TransactionStatusEventCopyWithImpl<$Res,
        $Val extends TransactionStatusEvent>
    implements $TransactionStatusEventCopyWith<$Res> {
  _$TransactionStatusEventCopyWithImpl(this._value, this._then);

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
              as TransactionStatusParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionStatusEventCalledImplCopyWith<$Res>
    implements $TransactionStatusEventCopyWith<$Res> {
  factory _$$TransactionStatusEventCalledImplCopyWith(
          _$TransactionStatusEventCalledImpl value,
          $Res Function(_$TransactionStatusEventCalledImpl) then) =
      __$$TransactionStatusEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TransactionStatusParam param});
}

/// @nodoc
class __$$TransactionStatusEventCalledImplCopyWithImpl<$Res>
    extends _$TransactionStatusEventCopyWithImpl<$Res,
        _$TransactionStatusEventCalledImpl>
    implements _$$TransactionStatusEventCalledImplCopyWith<$Res> {
  __$$TransactionStatusEventCalledImplCopyWithImpl(
      _$TransactionStatusEventCalledImpl _value,
      $Res Function(_$TransactionStatusEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$TransactionStatusEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as TransactionStatusParam,
    ));
  }
}

/// @nodoc

class _$TransactionStatusEventCalledImpl
    implements _TransactionStatusEventCalled {
  const _$TransactionStatusEventCalledImpl(this.param);

  @override
  final TransactionStatusParam param;

  @override
  String toString() {
    return 'TransactionStatusEvent.transactionStatusEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStatusEventCalledImplCopyWith<
          _$TransactionStatusEventCalledImpl>
      get copyWith => __$$TransactionStatusEventCalledImplCopyWithImpl<
          _$TransactionStatusEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionStatusParam param)
        transactionStatusEventCalled,
  }) {
    return transactionStatusEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionStatusParam param)?
        transactionStatusEventCalled,
  }) {
    return transactionStatusEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionStatusParam param)?
        transactionStatusEventCalled,
    required TResult orElse(),
  }) {
    if (transactionStatusEventCalled != null) {
      return transactionStatusEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransactionStatusEventCalled value)
        transactionStatusEventCalled,
  }) {
    return transactionStatusEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransactionStatusEventCalled value)?
        transactionStatusEventCalled,
  }) {
    return transactionStatusEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionStatusEventCalled value)?
        transactionStatusEventCalled,
    required TResult orElse(),
  }) {
    if (transactionStatusEventCalled != null) {
      return transactionStatusEventCalled(this);
    }
    return orElse();
  }
}

abstract class _TransactionStatusEventCalled implements TransactionStatusEvent {
  const factory _TransactionStatusEventCalled(
      final TransactionStatusParam param) = _$TransactionStatusEventCalledImpl;

  @override
  TransactionStatusParam get param;
  @override
  @JsonKey(ignore: true)
  _$$TransactionStatusEventCalledImplCopyWith<
          _$TransactionStatusEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            TransactionStatusResponseEntity transactionStatusResponseEntity)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            TransactionStatusResponseEntity transactionStatusResponseEntity)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            TransactionStatusResponseEntity transactionStatusResponseEntity)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransactionStatusInitial value) initial,
    required TResult Function(_TransactionStatusLoadFailure value) loadFailure,
    required TResult Function(TransactionStatusLoading value) loading,
    required TResult Function(_TransactionStatusLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransactionStatusInitial value)? initial,
    TResult? Function(_TransactionStatusLoadFailure value)? loadFailure,
    TResult? Function(TransactionStatusLoading value)? loading,
    TResult? Function(_TransactionStatusLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionStatusInitial value)? initial,
    TResult Function(_TransactionStatusLoadFailure value)? loadFailure,
    TResult Function(TransactionStatusLoading value)? loading,
    TResult Function(_TransactionStatusLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStatusStateCopyWith<$Res> {
  factory $TransactionStatusStateCopyWith(TransactionStatusState value,
          $Res Function(TransactionStatusState) then) =
      _$TransactionStatusStateCopyWithImpl<$Res, TransactionStatusState>;
}

/// @nodoc
class _$TransactionStatusStateCopyWithImpl<$Res,
        $Val extends TransactionStatusState>
    implements $TransactionStatusStateCopyWith<$Res> {
  _$TransactionStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TransactionStatusInitialImplCopyWith<$Res> {
  factory _$$TransactionStatusInitialImplCopyWith(
          _$TransactionStatusInitialImpl value,
          $Res Function(_$TransactionStatusInitialImpl) then) =
      __$$TransactionStatusInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionStatusInitialImplCopyWithImpl<$Res>
    extends _$TransactionStatusStateCopyWithImpl<$Res,
        _$TransactionStatusInitialImpl>
    implements _$$TransactionStatusInitialImplCopyWith<$Res> {
  __$$TransactionStatusInitialImplCopyWithImpl(
      _$TransactionStatusInitialImpl _value,
      $Res Function(_$TransactionStatusInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionStatusInitialImpl implements _TransactionStatusInitial {
  const _$TransactionStatusInitialImpl();

  @override
  String toString() {
    return 'TransactionStatusState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusInitialImpl);
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
            TransactionStatusResponseEntity transactionStatusResponseEntity)
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
            TransactionStatusResponseEntity transactionStatusResponseEntity)?
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
            TransactionStatusResponseEntity transactionStatusResponseEntity)?
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
    required TResult Function(_TransactionStatusInitial value) initial,
    required TResult Function(_TransactionStatusLoadFailure value) loadFailure,
    required TResult Function(TransactionStatusLoading value) loading,
    required TResult Function(_TransactionStatusLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransactionStatusInitial value)? initial,
    TResult? Function(_TransactionStatusLoadFailure value)? loadFailure,
    TResult? Function(TransactionStatusLoading value)? loading,
    TResult? Function(_TransactionStatusLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionStatusInitial value)? initial,
    TResult Function(_TransactionStatusLoadFailure value)? loadFailure,
    TResult Function(TransactionStatusLoading value)? loading,
    TResult Function(_TransactionStatusLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TransactionStatusInitial implements TransactionStatusState {
  const factory _TransactionStatusInitial() = _$TransactionStatusInitialImpl;
}

/// @nodoc
abstract class _$$TransactionStatusLoadFailureImplCopyWith<$Res> {
  factory _$$TransactionStatusLoadFailureImplCopyWith(
          _$TransactionStatusLoadFailureImpl value,
          $Res Function(_$TransactionStatusLoadFailureImpl) then) =
      __$$TransactionStatusLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$TransactionStatusLoadFailureImplCopyWithImpl<$Res>
    extends _$TransactionStatusStateCopyWithImpl<$Res,
        _$TransactionStatusLoadFailureImpl>
    implements _$$TransactionStatusLoadFailureImplCopyWith<$Res> {
  __$$TransactionStatusLoadFailureImplCopyWithImpl(
      _$TransactionStatusLoadFailureImpl _value,
      $Res Function(_$TransactionStatusLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$TransactionStatusLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$TransactionStatusLoadFailureImpl
    implements _TransactionStatusLoadFailure {
  const _$TransactionStatusLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'TransactionStatusState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStatusLoadFailureImplCopyWith<
          _$TransactionStatusLoadFailureImpl>
      get copyWith => __$$TransactionStatusLoadFailureImplCopyWithImpl<
          _$TransactionStatusLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            TransactionStatusResponseEntity transactionStatusResponseEntity)
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
            TransactionStatusResponseEntity transactionStatusResponseEntity)?
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
            TransactionStatusResponseEntity transactionStatusResponseEntity)?
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
    required TResult Function(_TransactionStatusInitial value) initial,
    required TResult Function(_TransactionStatusLoadFailure value) loadFailure,
    required TResult Function(TransactionStatusLoading value) loading,
    required TResult Function(_TransactionStatusLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransactionStatusInitial value)? initial,
    TResult? Function(_TransactionStatusLoadFailure value)? loadFailure,
    TResult? Function(TransactionStatusLoading value)? loading,
    TResult? Function(_TransactionStatusLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionStatusInitial value)? initial,
    TResult Function(_TransactionStatusLoadFailure value)? loadFailure,
    TResult Function(TransactionStatusLoading value)? loading,
    TResult Function(_TransactionStatusLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _TransactionStatusLoadFailure implements TransactionStatusState {
  const factory _TransactionStatusLoadFailure(final Failure failure) =
      _$TransactionStatusLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$TransactionStatusLoadFailureImplCopyWith<
          _$TransactionStatusLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionStatusLoadingImplCopyWith<$Res> {
  factory _$$TransactionStatusLoadingImplCopyWith(
          _$TransactionStatusLoadingImpl value,
          $Res Function(_$TransactionStatusLoadingImpl) then) =
      __$$TransactionStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionStatusLoadingImplCopyWithImpl<$Res>
    extends _$TransactionStatusStateCopyWithImpl<$Res,
        _$TransactionStatusLoadingImpl>
    implements _$$TransactionStatusLoadingImplCopyWith<$Res> {
  __$$TransactionStatusLoadingImplCopyWithImpl(
      _$TransactionStatusLoadingImpl _value,
      $Res Function(_$TransactionStatusLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionStatusLoadingImpl implements TransactionStatusLoading {
  const _$TransactionStatusLoadingImpl();

  @override
  String toString() {
    return 'TransactionStatusState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusLoadingImpl);
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
            TransactionStatusResponseEntity transactionStatusResponseEntity)
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
            TransactionStatusResponseEntity transactionStatusResponseEntity)?
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
            TransactionStatusResponseEntity transactionStatusResponseEntity)?
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
    required TResult Function(_TransactionStatusInitial value) initial,
    required TResult Function(_TransactionStatusLoadFailure value) loadFailure,
    required TResult Function(TransactionStatusLoading value) loading,
    required TResult Function(_TransactionStatusLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransactionStatusInitial value)? initial,
    TResult? Function(_TransactionStatusLoadFailure value)? loadFailure,
    TResult? Function(TransactionStatusLoading value)? loading,
    TResult? Function(_TransactionStatusLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionStatusInitial value)? initial,
    TResult Function(_TransactionStatusLoadFailure value)? loadFailure,
    TResult Function(TransactionStatusLoading value)? loading,
    TResult Function(_TransactionStatusLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TransactionStatusLoading implements TransactionStatusState {
  const factory TransactionStatusLoading() = _$TransactionStatusLoadingImpl;
}

/// @nodoc
abstract class _$$TransactionStatusLoadSuccessImplCopyWith<$Res> {
  factory _$$TransactionStatusLoadSuccessImplCopyWith(
          _$TransactionStatusLoadSuccessImpl value,
          $Res Function(_$TransactionStatusLoadSuccessImpl) then) =
      __$$TransactionStatusLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionStatusResponseEntity transactionStatusResponseEntity});
}

/// @nodoc
class __$$TransactionStatusLoadSuccessImplCopyWithImpl<$Res>
    extends _$TransactionStatusStateCopyWithImpl<$Res,
        _$TransactionStatusLoadSuccessImpl>
    implements _$$TransactionStatusLoadSuccessImplCopyWith<$Res> {
  __$$TransactionStatusLoadSuccessImplCopyWithImpl(
      _$TransactionStatusLoadSuccessImpl _value,
      $Res Function(_$TransactionStatusLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionStatusResponseEntity = null,
  }) {
    return _then(_$TransactionStatusLoadSuccessImpl(
      null == transactionStatusResponseEntity
          ? _value.transactionStatusResponseEntity
          : transactionStatusResponseEntity // ignore: cast_nullable_to_non_nullable
              as TransactionStatusResponseEntity,
    ));
  }
}

/// @nodoc

class _$TransactionStatusLoadSuccessImpl
    implements _TransactionStatusLoadSuccess {
  const _$TransactionStatusLoadSuccessImpl(
      this.transactionStatusResponseEntity);

  @override
  final TransactionStatusResponseEntity transactionStatusResponseEntity;

  @override
  String toString() {
    return 'TransactionStatusState.loadSuccess(transactionStatusResponseEntity: $transactionStatusResponseEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStatusLoadSuccessImpl &&
            (identical(other.transactionStatusResponseEntity,
                    transactionStatusResponseEntity) ||
                other.transactionStatusResponseEntity ==
                    transactionStatusResponseEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionStatusResponseEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStatusLoadSuccessImplCopyWith<
          _$TransactionStatusLoadSuccessImpl>
      get copyWith => __$$TransactionStatusLoadSuccessImplCopyWithImpl<
          _$TransactionStatusLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            TransactionStatusResponseEntity transactionStatusResponseEntity)
        loadSuccess,
  }) {
    return loadSuccess(transactionStatusResponseEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            TransactionStatusResponseEntity transactionStatusResponseEntity)?
        loadSuccess,
  }) {
    return loadSuccess?.call(transactionStatusResponseEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            TransactionStatusResponseEntity transactionStatusResponseEntity)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(transactionStatusResponseEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransactionStatusInitial value) initial,
    required TResult Function(_TransactionStatusLoadFailure value) loadFailure,
    required TResult Function(TransactionStatusLoading value) loading,
    required TResult Function(_TransactionStatusLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TransactionStatusInitial value)? initial,
    TResult? Function(_TransactionStatusLoadFailure value)? loadFailure,
    TResult? Function(TransactionStatusLoading value)? loading,
    TResult? Function(_TransactionStatusLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionStatusInitial value)? initial,
    TResult Function(_TransactionStatusLoadFailure value)? loadFailure,
    TResult Function(TransactionStatusLoading value)? loading,
    TResult Function(_TransactionStatusLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _TransactionStatusLoadSuccess implements TransactionStatusState {
  const factory _TransactionStatusLoadSuccess(
      final TransactionStatusResponseEntity
          transactionStatusResponseEntity) = _$TransactionStatusLoadSuccessImpl;

  TransactionStatusResponseEntity get transactionStatusResponseEntity;
  @JsonKey(ignore: true)
  _$$TransactionStatusLoadSuccessImplCopyWith<
          _$TransactionStatusLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
