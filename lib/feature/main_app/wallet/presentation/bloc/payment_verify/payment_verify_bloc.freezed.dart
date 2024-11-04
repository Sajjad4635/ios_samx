// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_verify_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentVerifyEvent {
  PaymentVerifyParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentVerifyParams params)
        paymentVerifyEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentVerifyParams params)? paymentVerifyEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentVerifyParams params)? paymentVerifyEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentVerifyEventCalled value)
        paymentVerifyEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentVerifyEventCalled value)?
        paymentVerifyEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentVerifyEventCalled value)? paymentVerifyEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentVerifyEventCopyWith<PaymentVerifyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentVerifyEventCopyWith<$Res> {
  factory $PaymentVerifyEventCopyWith(
          PaymentVerifyEvent value, $Res Function(PaymentVerifyEvent) then) =
      _$PaymentVerifyEventCopyWithImpl<$Res, PaymentVerifyEvent>;
  @useResult
  $Res call({PaymentVerifyParams params});
}

/// @nodoc
class _$PaymentVerifyEventCopyWithImpl<$Res, $Val extends PaymentVerifyEvent>
    implements $PaymentVerifyEventCopyWith<$Res> {
  _$PaymentVerifyEventCopyWithImpl(this._value, this._then);

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
              as PaymentVerifyParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentVerifyEventCalledImplCopyWith<$Res>
    implements $PaymentVerifyEventCopyWith<$Res> {
  factory _$$PaymentVerifyEventCalledImplCopyWith(
          _$PaymentVerifyEventCalledImpl value,
          $Res Function(_$PaymentVerifyEventCalledImpl) then) =
      __$$PaymentVerifyEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentVerifyParams params});
}

/// @nodoc
class __$$PaymentVerifyEventCalledImplCopyWithImpl<$Res>
    extends _$PaymentVerifyEventCopyWithImpl<$Res,
        _$PaymentVerifyEventCalledImpl>
    implements _$$PaymentVerifyEventCalledImplCopyWith<$Res> {
  __$$PaymentVerifyEventCalledImplCopyWithImpl(
      _$PaymentVerifyEventCalledImpl _value,
      $Res Function(_$PaymentVerifyEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$PaymentVerifyEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PaymentVerifyParams,
    ));
  }
}

/// @nodoc

class _$PaymentVerifyEventCalledImpl implements _PaymentVerifyEventCalled {
  const _$PaymentVerifyEventCalledImpl(this.params);

  @override
  final PaymentVerifyParams params;

  @override
  String toString() {
    return 'PaymentVerifyEvent.paymentVerifyEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentVerifyEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentVerifyEventCalledImplCopyWith<_$PaymentVerifyEventCalledImpl>
      get copyWith => __$$PaymentVerifyEventCalledImplCopyWithImpl<
          _$PaymentVerifyEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentVerifyParams params)
        paymentVerifyEventCalled,
  }) {
    return paymentVerifyEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentVerifyParams params)? paymentVerifyEventCalled,
  }) {
    return paymentVerifyEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentVerifyParams params)? paymentVerifyEventCalled,
    required TResult orElse(),
  }) {
    if (paymentVerifyEventCalled != null) {
      return paymentVerifyEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentVerifyEventCalled value)
        paymentVerifyEventCalled,
  }) {
    return paymentVerifyEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentVerifyEventCalled value)?
        paymentVerifyEventCalled,
  }) {
    return paymentVerifyEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentVerifyEventCalled value)? paymentVerifyEventCalled,
    required TResult orElse(),
  }) {
    if (paymentVerifyEventCalled != null) {
      return paymentVerifyEventCalled(this);
    }
    return orElse();
  }
}

abstract class _PaymentVerifyEventCalled implements PaymentVerifyEvent {
  const factory _PaymentVerifyEventCalled(final PaymentVerifyParams params) =
      _$PaymentVerifyEventCalledImpl;

  @override
  PaymentVerifyParams get params;
  @override
  @JsonKey(ignore: true)
  _$$PaymentVerifyEventCalledImplCopyWith<_$PaymentVerifyEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentVerifyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentVerifyResponseEntities entities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentVerifyResponseEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentVerifyResponseEntities entities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentVerifyStateInitial value) initial,
    required TResult Function(PaymentVerifyStateLoading value) loading,
    required TResult Function(_PaymentVerifyStateLoadSuccess value) loadSuccess,
    required TResult Function(_PaymentVerifyStateLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentVerifyStateInitial value)? initial,
    TResult? Function(PaymentVerifyStateLoading value)? loading,
    TResult? Function(_PaymentVerifyStateLoadSuccess value)? loadSuccess,
    TResult? Function(_PaymentVerifyStateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentVerifyStateInitial value)? initial,
    TResult Function(PaymentVerifyStateLoading value)? loading,
    TResult Function(_PaymentVerifyStateLoadSuccess value)? loadSuccess,
    TResult Function(_PaymentVerifyStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentVerifyStateCopyWith<$Res> {
  factory $PaymentVerifyStateCopyWith(
          PaymentVerifyState value, $Res Function(PaymentVerifyState) then) =
      _$PaymentVerifyStateCopyWithImpl<$Res, PaymentVerifyState>;
}

/// @nodoc
class _$PaymentVerifyStateCopyWithImpl<$Res, $Val extends PaymentVerifyState>
    implements $PaymentVerifyStateCopyWith<$Res> {
  _$PaymentVerifyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaymentVerifyStateInitialImplCopyWith<$Res> {
  factory _$$PaymentVerifyStateInitialImplCopyWith(
          _$PaymentVerifyStateInitialImpl value,
          $Res Function(_$PaymentVerifyStateInitialImpl) then) =
      __$$PaymentVerifyStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentVerifyStateInitialImplCopyWithImpl<$Res>
    extends _$PaymentVerifyStateCopyWithImpl<$Res,
        _$PaymentVerifyStateInitialImpl>
    implements _$$PaymentVerifyStateInitialImplCopyWith<$Res> {
  __$$PaymentVerifyStateInitialImplCopyWithImpl(
      _$PaymentVerifyStateInitialImpl _value,
      $Res Function(_$PaymentVerifyStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentVerifyStateInitialImpl implements _PaymentVerifyStateInitial {
  const _$PaymentVerifyStateInitialImpl();

  @override
  String toString() {
    return 'PaymentVerifyState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentVerifyStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentVerifyResponseEntities entities)
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
    TResult? Function(PaymentVerifyResponseEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentVerifyResponseEntities entities)? loadSuccess,
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
    required TResult Function(_PaymentVerifyStateInitial value) initial,
    required TResult Function(PaymentVerifyStateLoading value) loading,
    required TResult Function(_PaymentVerifyStateLoadSuccess value) loadSuccess,
    required TResult Function(_PaymentVerifyStateLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentVerifyStateInitial value)? initial,
    TResult? Function(PaymentVerifyStateLoading value)? loading,
    TResult? Function(_PaymentVerifyStateLoadSuccess value)? loadSuccess,
    TResult? Function(_PaymentVerifyStateLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentVerifyStateInitial value)? initial,
    TResult Function(PaymentVerifyStateLoading value)? loading,
    TResult Function(_PaymentVerifyStateLoadSuccess value)? loadSuccess,
    TResult Function(_PaymentVerifyStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PaymentVerifyStateInitial implements PaymentVerifyState {
  const factory _PaymentVerifyStateInitial() = _$PaymentVerifyStateInitialImpl;
}

/// @nodoc
abstract class _$$PaymentVerifyStateLoadingImplCopyWith<$Res> {
  factory _$$PaymentVerifyStateLoadingImplCopyWith(
          _$PaymentVerifyStateLoadingImpl value,
          $Res Function(_$PaymentVerifyStateLoadingImpl) then) =
      __$$PaymentVerifyStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentVerifyStateLoadingImplCopyWithImpl<$Res>
    extends _$PaymentVerifyStateCopyWithImpl<$Res,
        _$PaymentVerifyStateLoadingImpl>
    implements _$$PaymentVerifyStateLoadingImplCopyWith<$Res> {
  __$$PaymentVerifyStateLoadingImplCopyWithImpl(
      _$PaymentVerifyStateLoadingImpl _value,
      $Res Function(_$PaymentVerifyStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentVerifyStateLoadingImpl implements PaymentVerifyStateLoading {
  const _$PaymentVerifyStateLoadingImpl();

  @override
  String toString() {
    return 'PaymentVerifyState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentVerifyStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentVerifyResponseEntities entities)
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
    TResult? Function(PaymentVerifyResponseEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentVerifyResponseEntities entities)? loadSuccess,
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
    required TResult Function(_PaymentVerifyStateInitial value) initial,
    required TResult Function(PaymentVerifyStateLoading value) loading,
    required TResult Function(_PaymentVerifyStateLoadSuccess value) loadSuccess,
    required TResult Function(_PaymentVerifyStateLoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentVerifyStateInitial value)? initial,
    TResult? Function(PaymentVerifyStateLoading value)? loading,
    TResult? Function(_PaymentVerifyStateLoadSuccess value)? loadSuccess,
    TResult? Function(_PaymentVerifyStateLoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentVerifyStateInitial value)? initial,
    TResult Function(PaymentVerifyStateLoading value)? loading,
    TResult Function(_PaymentVerifyStateLoadSuccess value)? loadSuccess,
    TResult Function(_PaymentVerifyStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PaymentVerifyStateLoading implements PaymentVerifyState {
  const factory PaymentVerifyStateLoading() = _$PaymentVerifyStateLoadingImpl;
}

/// @nodoc
abstract class _$$PaymentVerifyStateLoadSuccessImplCopyWith<$Res> {
  factory _$$PaymentVerifyStateLoadSuccessImplCopyWith(
          _$PaymentVerifyStateLoadSuccessImpl value,
          $Res Function(_$PaymentVerifyStateLoadSuccessImpl) then) =
      __$$PaymentVerifyStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentVerifyResponseEntities entities});
}

/// @nodoc
class __$$PaymentVerifyStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$PaymentVerifyStateCopyWithImpl<$Res,
        _$PaymentVerifyStateLoadSuccessImpl>
    implements _$$PaymentVerifyStateLoadSuccessImplCopyWith<$Res> {
  __$$PaymentVerifyStateLoadSuccessImplCopyWithImpl(
      _$PaymentVerifyStateLoadSuccessImpl _value,
      $Res Function(_$PaymentVerifyStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
  }) {
    return _then(_$PaymentVerifyStateLoadSuccessImpl(
      null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as PaymentVerifyResponseEntities,
    ));
  }
}

/// @nodoc

class _$PaymentVerifyStateLoadSuccessImpl
    implements _PaymentVerifyStateLoadSuccess {
  const _$PaymentVerifyStateLoadSuccessImpl(this.entities);

  @override
  final PaymentVerifyResponseEntities entities;

  @override
  String toString() {
    return 'PaymentVerifyState.loadSuccess(entities: $entities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentVerifyStateLoadSuccessImpl &&
            (identical(other.entities, entities) ||
                other.entities == entities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentVerifyStateLoadSuccessImplCopyWith<
          _$PaymentVerifyStateLoadSuccessImpl>
      get copyWith => __$$PaymentVerifyStateLoadSuccessImplCopyWithImpl<
          _$PaymentVerifyStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentVerifyResponseEntities entities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadSuccess(entities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PaymentVerifyResponseEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadSuccess?.call(entities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentVerifyResponseEntities entities)? loadSuccess,
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
    required TResult Function(_PaymentVerifyStateInitial value) initial,
    required TResult Function(PaymentVerifyStateLoading value) loading,
    required TResult Function(_PaymentVerifyStateLoadSuccess value) loadSuccess,
    required TResult Function(_PaymentVerifyStateLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentVerifyStateInitial value)? initial,
    TResult? Function(PaymentVerifyStateLoading value)? loading,
    TResult? Function(_PaymentVerifyStateLoadSuccess value)? loadSuccess,
    TResult? Function(_PaymentVerifyStateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentVerifyStateInitial value)? initial,
    TResult Function(PaymentVerifyStateLoading value)? loading,
    TResult Function(_PaymentVerifyStateLoadSuccess value)? loadSuccess,
    TResult Function(_PaymentVerifyStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _PaymentVerifyStateLoadSuccess implements PaymentVerifyState {
  const factory _PaymentVerifyStateLoadSuccess(
          final PaymentVerifyResponseEntities entities) =
      _$PaymentVerifyStateLoadSuccessImpl;

  PaymentVerifyResponseEntities get entities;
  @JsonKey(ignore: true)
  _$$PaymentVerifyStateLoadSuccessImplCopyWith<
          _$PaymentVerifyStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentVerifyStateLoadFailureImplCopyWith<$Res> {
  factory _$$PaymentVerifyStateLoadFailureImplCopyWith(
          _$PaymentVerifyStateLoadFailureImpl value,
          $Res Function(_$PaymentVerifyStateLoadFailureImpl) then) =
      __$$PaymentVerifyStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$PaymentVerifyStateLoadFailureImplCopyWithImpl<$Res>
    extends _$PaymentVerifyStateCopyWithImpl<$Res,
        _$PaymentVerifyStateLoadFailureImpl>
    implements _$$PaymentVerifyStateLoadFailureImplCopyWith<$Res> {
  __$$PaymentVerifyStateLoadFailureImplCopyWithImpl(
      _$PaymentVerifyStateLoadFailureImpl _value,
      $Res Function(_$PaymentVerifyStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$PaymentVerifyStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$PaymentVerifyStateLoadFailureImpl
    implements _PaymentVerifyStateLoadFailure {
  const _$PaymentVerifyStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PaymentVerifyState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentVerifyStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentVerifyStateLoadFailureImplCopyWith<
          _$PaymentVerifyStateLoadFailureImpl>
      get copyWith => __$$PaymentVerifyStateLoadFailureImplCopyWithImpl<
          _$PaymentVerifyStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PaymentVerifyResponseEntities entities)
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
    TResult? Function(PaymentVerifyResponseEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PaymentVerifyResponseEntities entities)? loadSuccess,
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
    required TResult Function(_PaymentVerifyStateInitial value) initial,
    required TResult Function(PaymentVerifyStateLoading value) loading,
    required TResult Function(_PaymentVerifyStateLoadSuccess value) loadSuccess,
    required TResult Function(_PaymentVerifyStateLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentVerifyStateInitial value)? initial,
    TResult? Function(PaymentVerifyStateLoading value)? loading,
    TResult? Function(_PaymentVerifyStateLoadSuccess value)? loadSuccess,
    TResult? Function(_PaymentVerifyStateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentVerifyStateInitial value)? initial,
    TResult Function(PaymentVerifyStateLoading value)? loading,
    TResult Function(_PaymentVerifyStateLoadSuccess value)? loadSuccess,
    TResult Function(_PaymentVerifyStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _PaymentVerifyStateLoadFailure implements PaymentVerifyState {
  const factory _PaymentVerifyStateLoadFailure(final Failure failure) =
      _$PaymentVerifyStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$PaymentVerifyStateLoadFailureImplCopyWith<
          _$PaymentVerifyStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
