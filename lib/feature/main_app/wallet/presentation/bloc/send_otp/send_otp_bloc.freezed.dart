// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendOtpEvent {
  SendOtpParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendOtpParams params) sendOtpEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendOtpParams params)? sendOtpEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendOtpParams params)? sendOtpEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtpEventCalled value) sendOtpEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpEventCalled value)? sendOtpEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpEventCalled value)? sendOtpEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendOtpEventCopyWith<SendOtpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpEventCopyWith<$Res> {
  factory $SendOtpEventCopyWith(
          SendOtpEvent value, $Res Function(SendOtpEvent) then) =
      _$SendOtpEventCopyWithImpl<$Res, SendOtpEvent>;
  @useResult
  $Res call({SendOtpParams params});
}

/// @nodoc
class _$SendOtpEventCopyWithImpl<$Res, $Val extends SendOtpEvent>
    implements $SendOtpEventCopyWith<$Res> {
  _$SendOtpEventCopyWithImpl(this._value, this._then);

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
              as SendOtpParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendOtpEventCalledImplCopyWith<$Res>
    implements $SendOtpEventCopyWith<$Res> {
  factory _$$SendOtpEventCalledImplCopyWith(_$SendOtpEventCalledImpl value,
          $Res Function(_$SendOtpEventCalledImpl) then) =
      __$$SendOtpEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SendOtpParams params});
}

/// @nodoc
class __$$SendOtpEventCalledImplCopyWithImpl<$Res>
    extends _$SendOtpEventCopyWithImpl<$Res, _$SendOtpEventCalledImpl>
    implements _$$SendOtpEventCalledImplCopyWith<$Res> {
  __$$SendOtpEventCalledImplCopyWithImpl(_$SendOtpEventCalledImpl _value,
      $Res Function(_$SendOtpEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$SendOtpEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as SendOtpParams,
    ));
  }
}

/// @nodoc

class _$SendOtpEventCalledImpl implements _SendOtpEventCalled {
  const _$SendOtpEventCalledImpl(this.params);

  @override
  final SendOtpParams params;

  @override
  String toString() {
    return 'SendOtpEvent.sendOtpEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpEventCalledImplCopyWith<_$SendOtpEventCalledImpl> get copyWith =>
      __$$SendOtpEventCalledImplCopyWithImpl<_$SendOtpEventCalledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendOtpParams params) sendOtpEventCalled,
  }) {
    return sendOtpEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendOtpParams params)? sendOtpEventCalled,
  }) {
    return sendOtpEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendOtpParams params)? sendOtpEventCalled,
    required TResult orElse(),
  }) {
    if (sendOtpEventCalled != null) {
      return sendOtpEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtpEventCalled value) sendOtpEventCalled,
  }) {
    return sendOtpEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpEventCalled value)? sendOtpEventCalled,
  }) {
    return sendOtpEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpEventCalled value)? sendOtpEventCalled,
    required TResult orElse(),
  }) {
    if (sendOtpEventCalled != null) {
      return sendOtpEventCalled(this);
    }
    return orElse();
  }
}

abstract class _SendOtpEventCalled implements SendOtpEvent {
  const factory _SendOtpEventCalled(final SendOtpParams params) =
      _$SendOtpEventCalledImpl;

  @override
  SendOtpParams get params;
  @override
  @JsonKey(ignore: true)
  _$$SendOtpEventCalledImplCopyWith<_$SendOtpEventCalledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendOtpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SendOtpResponseEntities entities) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SendOtpResponseEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SendOtpResponseEntities entities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtpStateInitial value) initial,
    required TResult Function(SendOtpStateLoading value) loading,
    required TResult Function(_SendOtpStateLoadSuccess value) loadSuccess,
    required TResult Function(_SendOtpStateLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpStateInitial value)? initial,
    TResult? Function(SendOtpStateLoading value)? loading,
    TResult? Function(_SendOtpStateLoadSuccess value)? loadSuccess,
    TResult? Function(_SendOtpStateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpStateInitial value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoadSuccess value)? loadSuccess,
    TResult Function(_SendOtpStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpStateCopyWith<$Res> {
  factory $SendOtpStateCopyWith(
          SendOtpState value, $Res Function(SendOtpState) then) =
      _$SendOtpStateCopyWithImpl<$Res, SendOtpState>;
}

/// @nodoc
class _$SendOtpStateCopyWithImpl<$Res, $Val extends SendOtpState>
    implements $SendOtpStateCopyWith<$Res> {
  _$SendOtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendOtpStateInitialImplCopyWith<$Res> {
  factory _$$SendOtpStateInitialImplCopyWith(_$SendOtpStateInitialImpl value,
          $Res Function(_$SendOtpStateInitialImpl) then) =
      __$$SendOtpStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendOtpStateInitialImplCopyWithImpl<$Res>
    extends _$SendOtpStateCopyWithImpl<$Res, _$SendOtpStateInitialImpl>
    implements _$$SendOtpStateInitialImplCopyWith<$Res> {
  __$$SendOtpStateInitialImplCopyWithImpl(_$SendOtpStateInitialImpl _value,
      $Res Function(_$SendOtpStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendOtpStateInitialImpl implements _SendOtpStateInitial {
  const _$SendOtpStateInitialImpl();

  @override
  String toString() {
    return 'SendOtpState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SendOtpResponseEntities entities) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SendOtpResponseEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SendOtpResponseEntities entities)? loadSuccess,
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
    required TResult Function(_SendOtpStateInitial value) initial,
    required TResult Function(SendOtpStateLoading value) loading,
    required TResult Function(_SendOtpStateLoadSuccess value) loadSuccess,
    required TResult Function(_SendOtpStateLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpStateInitial value)? initial,
    TResult? Function(SendOtpStateLoading value)? loading,
    TResult? Function(_SendOtpStateLoadSuccess value)? loadSuccess,
    TResult? Function(_SendOtpStateLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpStateInitial value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoadSuccess value)? loadSuccess,
    TResult Function(_SendOtpStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SendOtpStateInitial implements SendOtpState {
  const factory _SendOtpStateInitial() = _$SendOtpStateInitialImpl;
}

/// @nodoc
abstract class _$$SendOtpStateLoadingImplCopyWith<$Res> {
  factory _$$SendOtpStateLoadingImplCopyWith(_$SendOtpStateLoadingImpl value,
          $Res Function(_$SendOtpStateLoadingImpl) then) =
      __$$SendOtpStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendOtpStateLoadingImplCopyWithImpl<$Res>
    extends _$SendOtpStateCopyWithImpl<$Res, _$SendOtpStateLoadingImpl>
    implements _$$SendOtpStateLoadingImplCopyWith<$Res> {
  __$$SendOtpStateLoadingImplCopyWithImpl(_$SendOtpStateLoadingImpl _value,
      $Res Function(_$SendOtpStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendOtpStateLoadingImpl implements SendOtpStateLoading {
  const _$SendOtpStateLoadingImpl();

  @override
  String toString() {
    return 'SendOtpState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SendOtpResponseEntities entities) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SendOtpResponseEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SendOtpResponseEntities entities)? loadSuccess,
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
    required TResult Function(_SendOtpStateInitial value) initial,
    required TResult Function(SendOtpStateLoading value) loading,
    required TResult Function(_SendOtpStateLoadSuccess value) loadSuccess,
    required TResult Function(_SendOtpStateLoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpStateInitial value)? initial,
    TResult? Function(SendOtpStateLoading value)? loading,
    TResult? Function(_SendOtpStateLoadSuccess value)? loadSuccess,
    TResult? Function(_SendOtpStateLoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpStateInitial value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoadSuccess value)? loadSuccess,
    TResult Function(_SendOtpStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SendOtpStateLoading implements SendOtpState {
  const factory SendOtpStateLoading() = _$SendOtpStateLoadingImpl;
}

/// @nodoc
abstract class _$$SendOtpStateLoadSuccessImplCopyWith<$Res> {
  factory _$$SendOtpStateLoadSuccessImplCopyWith(
          _$SendOtpStateLoadSuccessImpl value,
          $Res Function(_$SendOtpStateLoadSuccessImpl) then) =
      __$$SendOtpStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SendOtpResponseEntities entities});
}

/// @nodoc
class __$$SendOtpStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$SendOtpStateCopyWithImpl<$Res, _$SendOtpStateLoadSuccessImpl>
    implements _$$SendOtpStateLoadSuccessImplCopyWith<$Res> {
  __$$SendOtpStateLoadSuccessImplCopyWithImpl(
      _$SendOtpStateLoadSuccessImpl _value,
      $Res Function(_$SendOtpStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entities = null,
  }) {
    return _then(_$SendOtpStateLoadSuccessImpl(
      null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as SendOtpResponseEntities,
    ));
  }
}

/// @nodoc

class _$SendOtpStateLoadSuccessImpl implements _SendOtpStateLoadSuccess {
  const _$SendOtpStateLoadSuccessImpl(this.entities);

  @override
  final SendOtpResponseEntities entities;

  @override
  String toString() {
    return 'SendOtpState.loadSuccess(entities: $entities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpStateLoadSuccessImpl &&
            (identical(other.entities, entities) ||
                other.entities == entities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpStateLoadSuccessImplCopyWith<_$SendOtpStateLoadSuccessImpl>
      get copyWith => __$$SendOtpStateLoadSuccessImplCopyWithImpl<
          _$SendOtpStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SendOtpResponseEntities entities) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadSuccess(entities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SendOtpResponseEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadSuccess?.call(entities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SendOtpResponseEntities entities)? loadSuccess,
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
    required TResult Function(_SendOtpStateInitial value) initial,
    required TResult Function(SendOtpStateLoading value) loading,
    required TResult Function(_SendOtpStateLoadSuccess value) loadSuccess,
    required TResult Function(_SendOtpStateLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpStateInitial value)? initial,
    TResult? Function(SendOtpStateLoading value)? loading,
    TResult? Function(_SendOtpStateLoadSuccess value)? loadSuccess,
    TResult? Function(_SendOtpStateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpStateInitial value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoadSuccess value)? loadSuccess,
    TResult Function(_SendOtpStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _SendOtpStateLoadSuccess implements SendOtpState {
  const factory _SendOtpStateLoadSuccess(
      final SendOtpResponseEntities entities) = _$SendOtpStateLoadSuccessImpl;

  SendOtpResponseEntities get entities;
  @JsonKey(ignore: true)
  _$$SendOtpStateLoadSuccessImplCopyWith<_$SendOtpStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendOtpStateLoadFailureImplCopyWith<$Res> {
  factory _$$SendOtpStateLoadFailureImplCopyWith(
          _$SendOtpStateLoadFailureImpl value,
          $Res Function(_$SendOtpStateLoadFailureImpl) then) =
      __$$SendOtpStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$SendOtpStateLoadFailureImplCopyWithImpl<$Res>
    extends _$SendOtpStateCopyWithImpl<$Res, _$SendOtpStateLoadFailureImpl>
    implements _$$SendOtpStateLoadFailureImplCopyWith<$Res> {
  __$$SendOtpStateLoadFailureImplCopyWithImpl(
      _$SendOtpStateLoadFailureImpl _value,
      $Res Function(_$SendOtpStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$SendOtpStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$SendOtpStateLoadFailureImpl implements _SendOtpStateLoadFailure {
  const _$SendOtpStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SendOtpState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpStateLoadFailureImplCopyWith<_$SendOtpStateLoadFailureImpl>
      get copyWith => __$$SendOtpStateLoadFailureImplCopyWithImpl<
          _$SendOtpStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SendOtpResponseEntities entities) loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SendOtpResponseEntities entities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SendOtpResponseEntities entities)? loadSuccess,
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
    required TResult Function(_SendOtpStateInitial value) initial,
    required TResult Function(SendOtpStateLoading value) loading,
    required TResult Function(_SendOtpStateLoadSuccess value) loadSuccess,
    required TResult Function(_SendOtpStateLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtpStateInitial value)? initial,
    TResult? Function(SendOtpStateLoading value)? loading,
    TResult? Function(_SendOtpStateLoadSuccess value)? loadSuccess,
    TResult? Function(_SendOtpStateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpStateInitial value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoadSuccess value)? loadSuccess,
    TResult Function(_SendOtpStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _SendOtpStateLoadFailure implements SendOtpState {
  const factory _SendOtpStateLoadFailure(final Failure failure) =
      _$SendOtpStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$SendOtpStateLoadFailureImplCopyWith<_$SendOtpStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
