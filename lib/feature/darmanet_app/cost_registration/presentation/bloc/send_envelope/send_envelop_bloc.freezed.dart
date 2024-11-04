// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_envelop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendEnvelopeEvent {
  SendEnvelopeParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendEnvelopeParam param) sendEnvelopeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendEnvelopeParam param)? sendEnvelopeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendEnvelopeParam param)? sendEnvelopeEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendEnvelopeEventCalled value)
        sendEnvelopeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendEnvelopeEventCalled value)? sendEnvelopeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendEnvelopeEventCalled value)? sendEnvelopeEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendEnvelopeEventCopyWith<SendEnvelopeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendEnvelopeEventCopyWith<$Res> {
  factory $SendEnvelopeEventCopyWith(
          SendEnvelopeEvent value, $Res Function(SendEnvelopeEvent) then) =
      _$SendEnvelopeEventCopyWithImpl<$Res, SendEnvelopeEvent>;
  @useResult
  $Res call({SendEnvelopeParam param});
}

/// @nodoc
class _$SendEnvelopeEventCopyWithImpl<$Res, $Val extends SendEnvelopeEvent>
    implements $SendEnvelopeEventCopyWith<$Res> {
  _$SendEnvelopeEventCopyWithImpl(this._value, this._then);

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
              as SendEnvelopeParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendEnvelopeEventCalledImplCopyWith<$Res>
    implements $SendEnvelopeEventCopyWith<$Res> {
  factory _$$SendEnvelopeEventCalledImplCopyWith(
          _$SendEnvelopeEventCalledImpl value,
          $Res Function(_$SendEnvelopeEventCalledImpl) then) =
      __$$SendEnvelopeEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SendEnvelopeParam param});
}

/// @nodoc
class __$$SendEnvelopeEventCalledImplCopyWithImpl<$Res>
    extends _$SendEnvelopeEventCopyWithImpl<$Res, _$SendEnvelopeEventCalledImpl>
    implements _$$SendEnvelopeEventCalledImplCopyWith<$Res> {
  __$$SendEnvelopeEventCalledImplCopyWithImpl(
      _$SendEnvelopeEventCalledImpl _value,
      $Res Function(_$SendEnvelopeEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$SendEnvelopeEventCalledImpl(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as SendEnvelopeParam,
    ));
  }
}

/// @nodoc

class _$SendEnvelopeEventCalledImpl implements _SendEnvelopeEventCalled {
  const _$SendEnvelopeEventCalledImpl({required this.param});

  @override
  final SendEnvelopeParam param;

  @override
  String toString() {
    return 'SendEnvelopeEvent.sendEnvelopeEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendEnvelopeEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendEnvelopeEventCalledImplCopyWith<_$SendEnvelopeEventCalledImpl>
      get copyWith => __$$SendEnvelopeEventCalledImplCopyWithImpl<
          _$SendEnvelopeEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendEnvelopeParam param) sendEnvelopeEventCalled,
  }) {
    return sendEnvelopeEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendEnvelopeParam param)? sendEnvelopeEventCalled,
  }) {
    return sendEnvelopeEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendEnvelopeParam param)? sendEnvelopeEventCalled,
    required TResult orElse(),
  }) {
    if (sendEnvelopeEventCalled != null) {
      return sendEnvelopeEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendEnvelopeEventCalled value)
        sendEnvelopeEventCalled,
  }) {
    return sendEnvelopeEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendEnvelopeEventCalled value)? sendEnvelopeEventCalled,
  }) {
    return sendEnvelopeEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendEnvelopeEventCalled value)? sendEnvelopeEventCalled,
    required TResult orElse(),
  }) {
    if (sendEnvelopeEventCalled != null) {
      return sendEnvelopeEventCalled(this);
    }
    return orElse();
  }
}

abstract class _SendEnvelopeEventCalled implements SendEnvelopeEvent {
  const factory _SendEnvelopeEventCalled(
      {required final SendEnvelopeParam param}) = _$SendEnvelopeEventCalledImpl;

  @override
  SendEnvelopeParam get param;
  @override
  @JsonKey(ignore: true)
  _$$SendEnvelopeEventCalledImplCopyWith<_$SendEnvelopeEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendEnvelopeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SendEnvelopeEntities sendEnvelopeEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SendEnvelopeEntities sendEnvelopeEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SendEnvelopeEntities sendEnvelopeEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendEnvelopeStateInitial value) initial,
    required TResult Function(_SendEnvelopeStateLoadFailure value) loadFailure,
    required TResult Function(SendEnvelopeStateLoading value) loading,
    required TResult Function(_SendEnvelopeStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendEnvelopeStateInitial value)? initial,
    TResult? Function(_SendEnvelopeStateLoadFailure value)? loadFailure,
    TResult? Function(SendEnvelopeStateLoading value)? loading,
    TResult? Function(_SendEnvelopeStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendEnvelopeStateInitial value)? initial,
    TResult Function(_SendEnvelopeStateLoadFailure value)? loadFailure,
    TResult Function(SendEnvelopeStateLoading value)? loading,
    TResult Function(_SendEnvelopeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendEnvelopeStateCopyWith<$Res> {
  factory $SendEnvelopeStateCopyWith(
          SendEnvelopeState value, $Res Function(SendEnvelopeState) then) =
      _$SendEnvelopeStateCopyWithImpl<$Res, SendEnvelopeState>;
}

/// @nodoc
class _$SendEnvelopeStateCopyWithImpl<$Res, $Val extends SendEnvelopeState>
    implements $SendEnvelopeStateCopyWith<$Res> {
  _$SendEnvelopeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendEnvelopeStateInitialImplCopyWith<$Res> {
  factory _$$SendEnvelopeStateInitialImplCopyWith(
          _$SendEnvelopeStateInitialImpl value,
          $Res Function(_$SendEnvelopeStateInitialImpl) then) =
      __$$SendEnvelopeStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendEnvelopeStateInitialImplCopyWithImpl<$Res>
    extends _$SendEnvelopeStateCopyWithImpl<$Res,
        _$SendEnvelopeStateInitialImpl>
    implements _$$SendEnvelopeStateInitialImplCopyWith<$Res> {
  __$$SendEnvelopeStateInitialImplCopyWithImpl(
      _$SendEnvelopeStateInitialImpl _value,
      $Res Function(_$SendEnvelopeStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendEnvelopeStateInitialImpl implements _SendEnvelopeStateInitial {
  const _$SendEnvelopeStateInitialImpl();

  @override
  String toString() {
    return 'SendEnvelopeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendEnvelopeStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SendEnvelopeEntities sendEnvelopeEntities)
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
    TResult? Function(SendEnvelopeEntities sendEnvelopeEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SendEnvelopeEntities sendEnvelopeEntities)? loadSuccess,
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
    required TResult Function(_SendEnvelopeStateInitial value) initial,
    required TResult Function(_SendEnvelopeStateLoadFailure value) loadFailure,
    required TResult Function(SendEnvelopeStateLoading value) loading,
    required TResult Function(_SendEnvelopeStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendEnvelopeStateInitial value)? initial,
    TResult? Function(_SendEnvelopeStateLoadFailure value)? loadFailure,
    TResult? Function(SendEnvelopeStateLoading value)? loading,
    TResult? Function(_SendEnvelopeStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendEnvelopeStateInitial value)? initial,
    TResult Function(_SendEnvelopeStateLoadFailure value)? loadFailure,
    TResult Function(SendEnvelopeStateLoading value)? loading,
    TResult Function(_SendEnvelopeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SendEnvelopeStateInitial implements SendEnvelopeState {
  const factory _SendEnvelopeStateInitial() = _$SendEnvelopeStateInitialImpl;
}

/// @nodoc
abstract class _$$SendEnvelopeStateLoadFailureImplCopyWith<$Res> {
  factory _$$SendEnvelopeStateLoadFailureImplCopyWith(
          _$SendEnvelopeStateLoadFailureImpl value,
          $Res Function(_$SendEnvelopeStateLoadFailureImpl) then) =
      __$$SendEnvelopeStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$SendEnvelopeStateLoadFailureImplCopyWithImpl<$Res>
    extends _$SendEnvelopeStateCopyWithImpl<$Res,
        _$SendEnvelopeStateLoadFailureImpl>
    implements _$$SendEnvelopeStateLoadFailureImplCopyWith<$Res> {
  __$$SendEnvelopeStateLoadFailureImplCopyWithImpl(
      _$SendEnvelopeStateLoadFailureImpl _value,
      $Res Function(_$SendEnvelopeStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$SendEnvelopeStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$SendEnvelopeStateLoadFailureImpl
    implements _SendEnvelopeStateLoadFailure {
  const _$SendEnvelopeStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SendEnvelopeState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendEnvelopeStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendEnvelopeStateLoadFailureImplCopyWith<
          _$SendEnvelopeStateLoadFailureImpl>
      get copyWith => __$$SendEnvelopeStateLoadFailureImplCopyWithImpl<
          _$SendEnvelopeStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SendEnvelopeEntities sendEnvelopeEntities)
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
    TResult? Function(SendEnvelopeEntities sendEnvelopeEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SendEnvelopeEntities sendEnvelopeEntities)? loadSuccess,
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
    required TResult Function(_SendEnvelopeStateInitial value) initial,
    required TResult Function(_SendEnvelopeStateLoadFailure value) loadFailure,
    required TResult Function(SendEnvelopeStateLoading value) loading,
    required TResult Function(_SendEnvelopeStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendEnvelopeStateInitial value)? initial,
    TResult? Function(_SendEnvelopeStateLoadFailure value)? loadFailure,
    TResult? Function(SendEnvelopeStateLoading value)? loading,
    TResult? Function(_SendEnvelopeStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendEnvelopeStateInitial value)? initial,
    TResult Function(_SendEnvelopeStateLoadFailure value)? loadFailure,
    TResult Function(SendEnvelopeStateLoading value)? loading,
    TResult Function(_SendEnvelopeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _SendEnvelopeStateLoadFailure implements SendEnvelopeState {
  const factory _SendEnvelopeStateLoadFailure(final Failure failure) =
      _$SendEnvelopeStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$SendEnvelopeStateLoadFailureImplCopyWith<
          _$SendEnvelopeStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendEnvelopeStateLoadingImplCopyWith<$Res> {
  factory _$$SendEnvelopeStateLoadingImplCopyWith(
          _$SendEnvelopeStateLoadingImpl value,
          $Res Function(_$SendEnvelopeStateLoadingImpl) then) =
      __$$SendEnvelopeStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendEnvelopeStateLoadingImplCopyWithImpl<$Res>
    extends _$SendEnvelopeStateCopyWithImpl<$Res,
        _$SendEnvelopeStateLoadingImpl>
    implements _$$SendEnvelopeStateLoadingImplCopyWith<$Res> {
  __$$SendEnvelopeStateLoadingImplCopyWithImpl(
      _$SendEnvelopeStateLoadingImpl _value,
      $Res Function(_$SendEnvelopeStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendEnvelopeStateLoadingImpl implements SendEnvelopeStateLoading {
  const _$SendEnvelopeStateLoadingImpl();

  @override
  String toString() {
    return 'SendEnvelopeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendEnvelopeStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SendEnvelopeEntities sendEnvelopeEntities)
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
    TResult? Function(SendEnvelopeEntities sendEnvelopeEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SendEnvelopeEntities sendEnvelopeEntities)? loadSuccess,
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
    required TResult Function(_SendEnvelopeStateInitial value) initial,
    required TResult Function(_SendEnvelopeStateLoadFailure value) loadFailure,
    required TResult Function(SendEnvelopeStateLoading value) loading,
    required TResult Function(_SendEnvelopeStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendEnvelopeStateInitial value)? initial,
    TResult? Function(_SendEnvelopeStateLoadFailure value)? loadFailure,
    TResult? Function(SendEnvelopeStateLoading value)? loading,
    TResult? Function(_SendEnvelopeStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendEnvelopeStateInitial value)? initial,
    TResult Function(_SendEnvelopeStateLoadFailure value)? loadFailure,
    TResult Function(SendEnvelopeStateLoading value)? loading,
    TResult Function(_SendEnvelopeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SendEnvelopeStateLoading implements SendEnvelopeState {
  const factory SendEnvelopeStateLoading() = _$SendEnvelopeStateLoadingImpl;
}

/// @nodoc
abstract class _$$SendEnvelopeStateLoadSuccessImplCopyWith<$Res> {
  factory _$$SendEnvelopeStateLoadSuccessImplCopyWith(
          _$SendEnvelopeStateLoadSuccessImpl value,
          $Res Function(_$SendEnvelopeStateLoadSuccessImpl) then) =
      __$$SendEnvelopeStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SendEnvelopeEntities sendEnvelopeEntities});
}

/// @nodoc
class __$$SendEnvelopeStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$SendEnvelopeStateCopyWithImpl<$Res,
        _$SendEnvelopeStateLoadSuccessImpl>
    implements _$$SendEnvelopeStateLoadSuccessImplCopyWith<$Res> {
  __$$SendEnvelopeStateLoadSuccessImplCopyWithImpl(
      _$SendEnvelopeStateLoadSuccessImpl _value,
      $Res Function(_$SendEnvelopeStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendEnvelopeEntities = null,
  }) {
    return _then(_$SendEnvelopeStateLoadSuccessImpl(
      null == sendEnvelopeEntities
          ? _value.sendEnvelopeEntities
          : sendEnvelopeEntities // ignore: cast_nullable_to_non_nullable
              as SendEnvelopeEntities,
    ));
  }
}

/// @nodoc

class _$SendEnvelopeStateLoadSuccessImpl
    implements _SendEnvelopeStateLoadSuccess {
  const _$SendEnvelopeStateLoadSuccessImpl(this.sendEnvelopeEntities);

  @override
  final SendEnvelopeEntities sendEnvelopeEntities;

  @override
  String toString() {
    return 'SendEnvelopeState.loadSuccess(sendEnvelopeEntities: $sendEnvelopeEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendEnvelopeStateLoadSuccessImpl &&
            (identical(other.sendEnvelopeEntities, sendEnvelopeEntities) ||
                other.sendEnvelopeEntities == sendEnvelopeEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sendEnvelopeEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendEnvelopeStateLoadSuccessImplCopyWith<
          _$SendEnvelopeStateLoadSuccessImpl>
      get copyWith => __$$SendEnvelopeStateLoadSuccessImplCopyWithImpl<
          _$SendEnvelopeStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SendEnvelopeEntities sendEnvelopeEntities)
        loadSuccess,
  }) {
    return loadSuccess(sendEnvelopeEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SendEnvelopeEntities sendEnvelopeEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(sendEnvelopeEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SendEnvelopeEntities sendEnvelopeEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(sendEnvelopeEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendEnvelopeStateInitial value) initial,
    required TResult Function(_SendEnvelopeStateLoadFailure value) loadFailure,
    required TResult Function(SendEnvelopeStateLoading value) loading,
    required TResult Function(_SendEnvelopeStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendEnvelopeStateInitial value)? initial,
    TResult? Function(_SendEnvelopeStateLoadFailure value)? loadFailure,
    TResult? Function(SendEnvelopeStateLoading value)? loading,
    TResult? Function(_SendEnvelopeStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendEnvelopeStateInitial value)? initial,
    TResult Function(_SendEnvelopeStateLoadFailure value)? loadFailure,
    TResult Function(SendEnvelopeStateLoading value)? loading,
    TResult Function(_SendEnvelopeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _SendEnvelopeStateLoadSuccess implements SendEnvelopeState {
  const factory _SendEnvelopeStateLoadSuccess(
          final SendEnvelopeEntities sendEnvelopeEntities) =
      _$SendEnvelopeStateLoadSuccessImpl;

  SendEnvelopeEntities get sendEnvelopeEntities;
  @JsonKey(ignore: true)
  _$$SendEnvelopeStateLoadSuccessImplCopyWith<
          _$SendEnvelopeStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
