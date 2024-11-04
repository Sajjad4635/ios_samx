// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_to_next_level_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendToNextLevelEvent {
  SendToNextLevelParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendToNextLevelParam param) sendToNextLevelEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendToNextLevelParam param)? sendToNextLevelEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendToNextLevelParam param)? sendToNextLevelEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendToNextLevelEventCalled value)
        sendToNextLevelEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendToNextLevelEventCalled value)? sendToNextLevelEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendToNextLevelEventCalled value)? sendToNextLevelEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendToNextLevelEventCopyWith<SendToNextLevelEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendToNextLevelEventCopyWith<$Res> {
  factory $SendToNextLevelEventCopyWith(SendToNextLevelEvent value,
          $Res Function(SendToNextLevelEvent) then) =
      _$SendToNextLevelEventCopyWithImpl<$Res, SendToNextLevelEvent>;
  @useResult
  $Res call({SendToNextLevelParam param});
}

/// @nodoc
class _$SendToNextLevelEventCopyWithImpl<$Res,
        $Val extends SendToNextLevelEvent>
    implements $SendToNextLevelEventCopyWith<$Res> {
  _$SendToNextLevelEventCopyWithImpl(this._value, this._then);

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
              as SendToNextLevelParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendToNextLevelEventCalledImplCopyWith<$Res>
    implements $SendToNextLevelEventCopyWith<$Res> {
  factory _$$SendToNextLevelEventCalledImplCopyWith(
          _$SendToNextLevelEventCalledImpl value,
          $Res Function(_$SendToNextLevelEventCalledImpl) then) =
      __$$SendToNextLevelEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SendToNextLevelParam param});
}

/// @nodoc
class __$$SendToNextLevelEventCalledImplCopyWithImpl<$Res>
    extends _$SendToNextLevelEventCopyWithImpl<$Res,
        _$SendToNextLevelEventCalledImpl>
    implements _$$SendToNextLevelEventCalledImplCopyWith<$Res> {
  __$$SendToNextLevelEventCalledImplCopyWithImpl(
      _$SendToNextLevelEventCalledImpl _value,
      $Res Function(_$SendToNextLevelEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$SendToNextLevelEventCalledImpl(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as SendToNextLevelParam,
    ));
  }
}

/// @nodoc

class _$SendToNextLevelEventCalledImpl implements _SendToNextLevelEventCalled {
  const _$SendToNextLevelEventCalledImpl({required this.param});

  @override
  final SendToNextLevelParam param;

  @override
  String toString() {
    return 'SendToNextLevelEvent.sendToNextLevelEvent(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendToNextLevelEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendToNextLevelEventCalledImplCopyWith<_$SendToNextLevelEventCalledImpl>
      get copyWith => __$$SendToNextLevelEventCalledImplCopyWithImpl<
          _$SendToNextLevelEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendToNextLevelParam param) sendToNextLevelEvent,
  }) {
    return sendToNextLevelEvent(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendToNextLevelParam param)? sendToNextLevelEvent,
  }) {
    return sendToNextLevelEvent?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendToNextLevelParam param)? sendToNextLevelEvent,
    required TResult orElse(),
  }) {
    if (sendToNextLevelEvent != null) {
      return sendToNextLevelEvent(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendToNextLevelEventCalled value)
        sendToNextLevelEvent,
  }) {
    return sendToNextLevelEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendToNextLevelEventCalled value)? sendToNextLevelEvent,
  }) {
    return sendToNextLevelEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendToNextLevelEventCalled value)? sendToNextLevelEvent,
    required TResult orElse(),
  }) {
    if (sendToNextLevelEvent != null) {
      return sendToNextLevelEvent(this);
    }
    return orElse();
  }
}

abstract class _SendToNextLevelEventCalled implements SendToNextLevelEvent {
  const factory _SendToNextLevelEventCalled(
          {required final SendToNextLevelParam param}) =
      _$SendToNextLevelEventCalledImpl;

  @override
  SendToNextLevelParam get param;
  @override
  @JsonKey(ignore: true)
  _$$SendToNextLevelEventCalledImplCopyWith<_$SendToNextLevelEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendToNextLevelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SendToNextLevelEntities sendToNextLevelEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SendToNextLevelEntities sendToNextLevelEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SendToNextLevelEntities sendToNextLevelEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendToNextLevelStateInitial value) initial,
    required TResult Function(_SendToNextLevelStateLoadFailure value)
        loadFailure,
    required TResult Function(SendToNextLevelStateLoading value) loading,
    required TResult Function(_SendToNextLevelStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendToNextLevelStateInitial value)? initial,
    TResult? Function(_SendToNextLevelStateLoadFailure value)? loadFailure,
    TResult? Function(SendToNextLevelStateLoading value)? loading,
    TResult? Function(_SendToNextLevelStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendToNextLevelStateInitial value)? initial,
    TResult Function(_SendToNextLevelStateLoadFailure value)? loadFailure,
    TResult Function(SendToNextLevelStateLoading value)? loading,
    TResult Function(_SendToNextLevelStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendToNextLevelStateCopyWith<$Res> {
  factory $SendToNextLevelStateCopyWith(SendToNextLevelState value,
          $Res Function(SendToNextLevelState) then) =
      _$SendToNextLevelStateCopyWithImpl<$Res, SendToNextLevelState>;
}

/// @nodoc
class _$SendToNextLevelStateCopyWithImpl<$Res,
        $Val extends SendToNextLevelState>
    implements $SendToNextLevelStateCopyWith<$Res> {
  _$SendToNextLevelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendToNextLevelStateInitialImplCopyWith<$Res> {
  factory _$$SendToNextLevelStateInitialImplCopyWith(
          _$SendToNextLevelStateInitialImpl value,
          $Res Function(_$SendToNextLevelStateInitialImpl) then) =
      __$$SendToNextLevelStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendToNextLevelStateInitialImplCopyWithImpl<$Res>
    extends _$SendToNextLevelStateCopyWithImpl<$Res,
        _$SendToNextLevelStateInitialImpl>
    implements _$$SendToNextLevelStateInitialImplCopyWith<$Res> {
  __$$SendToNextLevelStateInitialImplCopyWithImpl(
      _$SendToNextLevelStateInitialImpl _value,
      $Res Function(_$SendToNextLevelStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendToNextLevelStateInitialImpl
    implements _SendToNextLevelStateInitial {
  const _$SendToNextLevelStateInitialImpl();

  @override
  String toString() {
    return 'SendToNextLevelState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendToNextLevelStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SendToNextLevelEntities sendToNextLevelEntities)
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
    TResult? Function(SendToNextLevelEntities sendToNextLevelEntities)?
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
    TResult Function(SendToNextLevelEntities sendToNextLevelEntities)?
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
    required TResult Function(_SendToNextLevelStateInitial value) initial,
    required TResult Function(_SendToNextLevelStateLoadFailure value)
        loadFailure,
    required TResult Function(SendToNextLevelStateLoading value) loading,
    required TResult Function(_SendToNextLevelStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendToNextLevelStateInitial value)? initial,
    TResult? Function(_SendToNextLevelStateLoadFailure value)? loadFailure,
    TResult? Function(SendToNextLevelStateLoading value)? loading,
    TResult? Function(_SendToNextLevelStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendToNextLevelStateInitial value)? initial,
    TResult Function(_SendToNextLevelStateLoadFailure value)? loadFailure,
    TResult Function(SendToNextLevelStateLoading value)? loading,
    TResult Function(_SendToNextLevelStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SendToNextLevelStateInitial implements SendToNextLevelState {
  const factory _SendToNextLevelStateInitial() =
      _$SendToNextLevelStateInitialImpl;
}

/// @nodoc
abstract class _$$SendToNextLevelStateLoadFailureImplCopyWith<$Res> {
  factory _$$SendToNextLevelStateLoadFailureImplCopyWith(
          _$SendToNextLevelStateLoadFailureImpl value,
          $Res Function(_$SendToNextLevelStateLoadFailureImpl) then) =
      __$$SendToNextLevelStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$SendToNextLevelStateLoadFailureImplCopyWithImpl<$Res>
    extends _$SendToNextLevelStateCopyWithImpl<$Res,
        _$SendToNextLevelStateLoadFailureImpl>
    implements _$$SendToNextLevelStateLoadFailureImplCopyWith<$Res> {
  __$$SendToNextLevelStateLoadFailureImplCopyWithImpl(
      _$SendToNextLevelStateLoadFailureImpl _value,
      $Res Function(_$SendToNextLevelStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$SendToNextLevelStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$SendToNextLevelStateLoadFailureImpl
    implements _SendToNextLevelStateLoadFailure {
  const _$SendToNextLevelStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SendToNextLevelState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendToNextLevelStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendToNextLevelStateLoadFailureImplCopyWith<
          _$SendToNextLevelStateLoadFailureImpl>
      get copyWith => __$$SendToNextLevelStateLoadFailureImplCopyWithImpl<
          _$SendToNextLevelStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SendToNextLevelEntities sendToNextLevelEntities)
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
    TResult? Function(SendToNextLevelEntities sendToNextLevelEntities)?
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
    TResult Function(SendToNextLevelEntities sendToNextLevelEntities)?
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
    required TResult Function(_SendToNextLevelStateInitial value) initial,
    required TResult Function(_SendToNextLevelStateLoadFailure value)
        loadFailure,
    required TResult Function(SendToNextLevelStateLoading value) loading,
    required TResult Function(_SendToNextLevelStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendToNextLevelStateInitial value)? initial,
    TResult? Function(_SendToNextLevelStateLoadFailure value)? loadFailure,
    TResult? Function(SendToNextLevelStateLoading value)? loading,
    TResult? Function(_SendToNextLevelStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendToNextLevelStateInitial value)? initial,
    TResult Function(_SendToNextLevelStateLoadFailure value)? loadFailure,
    TResult Function(SendToNextLevelStateLoading value)? loading,
    TResult Function(_SendToNextLevelStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _SendToNextLevelStateLoadFailure
    implements SendToNextLevelState {
  const factory _SendToNextLevelStateLoadFailure(final Failure failure) =
      _$SendToNextLevelStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$SendToNextLevelStateLoadFailureImplCopyWith<
          _$SendToNextLevelStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendToNextLevelStateLoadingImplCopyWith<$Res> {
  factory _$$SendToNextLevelStateLoadingImplCopyWith(
          _$SendToNextLevelStateLoadingImpl value,
          $Res Function(_$SendToNextLevelStateLoadingImpl) then) =
      __$$SendToNextLevelStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendToNextLevelStateLoadingImplCopyWithImpl<$Res>
    extends _$SendToNextLevelStateCopyWithImpl<$Res,
        _$SendToNextLevelStateLoadingImpl>
    implements _$$SendToNextLevelStateLoadingImplCopyWith<$Res> {
  __$$SendToNextLevelStateLoadingImplCopyWithImpl(
      _$SendToNextLevelStateLoadingImpl _value,
      $Res Function(_$SendToNextLevelStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendToNextLevelStateLoadingImpl implements SendToNextLevelStateLoading {
  const _$SendToNextLevelStateLoadingImpl();

  @override
  String toString() {
    return 'SendToNextLevelState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendToNextLevelStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SendToNextLevelEntities sendToNextLevelEntities)
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
    TResult? Function(SendToNextLevelEntities sendToNextLevelEntities)?
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
    TResult Function(SendToNextLevelEntities sendToNextLevelEntities)?
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
    required TResult Function(_SendToNextLevelStateInitial value) initial,
    required TResult Function(_SendToNextLevelStateLoadFailure value)
        loadFailure,
    required TResult Function(SendToNextLevelStateLoading value) loading,
    required TResult Function(_SendToNextLevelStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendToNextLevelStateInitial value)? initial,
    TResult? Function(_SendToNextLevelStateLoadFailure value)? loadFailure,
    TResult? Function(SendToNextLevelStateLoading value)? loading,
    TResult? Function(_SendToNextLevelStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendToNextLevelStateInitial value)? initial,
    TResult Function(_SendToNextLevelStateLoadFailure value)? loadFailure,
    TResult Function(SendToNextLevelStateLoading value)? loading,
    TResult Function(_SendToNextLevelStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SendToNextLevelStateLoading implements SendToNextLevelState {
  const factory SendToNextLevelStateLoading() =
      _$SendToNextLevelStateLoadingImpl;
}

/// @nodoc
abstract class _$$SendToNextLevelStateLoadSuccessImplCopyWith<$Res> {
  factory _$$SendToNextLevelStateLoadSuccessImplCopyWith(
          _$SendToNextLevelStateLoadSuccessImpl value,
          $Res Function(_$SendToNextLevelStateLoadSuccessImpl) then) =
      __$$SendToNextLevelStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SendToNextLevelEntities sendToNextLevelEntities});
}

/// @nodoc
class __$$SendToNextLevelStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$SendToNextLevelStateCopyWithImpl<$Res,
        _$SendToNextLevelStateLoadSuccessImpl>
    implements _$$SendToNextLevelStateLoadSuccessImplCopyWith<$Res> {
  __$$SendToNextLevelStateLoadSuccessImplCopyWithImpl(
      _$SendToNextLevelStateLoadSuccessImpl _value,
      $Res Function(_$SendToNextLevelStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendToNextLevelEntities = null,
  }) {
    return _then(_$SendToNextLevelStateLoadSuccessImpl(
      null == sendToNextLevelEntities
          ? _value.sendToNextLevelEntities
          : sendToNextLevelEntities // ignore: cast_nullable_to_non_nullable
              as SendToNextLevelEntities,
    ));
  }
}

/// @nodoc

class _$SendToNextLevelStateLoadSuccessImpl
    implements _SendToNextLevelStateLoadSuccess {
  const _$SendToNextLevelStateLoadSuccessImpl(this.sendToNextLevelEntities);

  @override
  final SendToNextLevelEntities sendToNextLevelEntities;

  @override
  String toString() {
    return 'SendToNextLevelState.loadSuccess(sendToNextLevelEntities: $sendToNextLevelEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendToNextLevelStateLoadSuccessImpl &&
            (identical(
                    other.sendToNextLevelEntities, sendToNextLevelEntities) ||
                other.sendToNextLevelEntities == sendToNextLevelEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sendToNextLevelEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendToNextLevelStateLoadSuccessImplCopyWith<
          _$SendToNextLevelStateLoadSuccessImpl>
      get copyWith => __$$SendToNextLevelStateLoadSuccessImplCopyWithImpl<
          _$SendToNextLevelStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SendToNextLevelEntities sendToNextLevelEntities)
        loadSuccess,
  }) {
    return loadSuccess(sendToNextLevelEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SendToNextLevelEntities sendToNextLevelEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(sendToNextLevelEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SendToNextLevelEntities sendToNextLevelEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(sendToNextLevelEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendToNextLevelStateInitial value) initial,
    required TResult Function(_SendToNextLevelStateLoadFailure value)
        loadFailure,
    required TResult Function(SendToNextLevelStateLoading value) loading,
    required TResult Function(_SendToNextLevelStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendToNextLevelStateInitial value)? initial,
    TResult? Function(_SendToNextLevelStateLoadFailure value)? loadFailure,
    TResult? Function(SendToNextLevelStateLoading value)? loading,
    TResult? Function(_SendToNextLevelStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendToNextLevelStateInitial value)? initial,
    TResult Function(_SendToNextLevelStateLoadFailure value)? loadFailure,
    TResult Function(SendToNextLevelStateLoading value)? loading,
    TResult Function(_SendToNextLevelStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _SendToNextLevelStateLoadSuccess
    implements SendToNextLevelState {
  const factory _SendToNextLevelStateLoadSuccess(
          final SendToNextLevelEntities sendToNextLevelEntities) =
      _$SendToNextLevelStateLoadSuccessImpl;

  SendToNextLevelEntities get sendToNextLevelEntities;
  @JsonKey(ignore: true)
  _$$SendToNextLevelStateLoadSuccessImplCopyWith<
          _$SendToNextLevelStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
