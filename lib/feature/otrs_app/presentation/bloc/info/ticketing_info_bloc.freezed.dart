// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticketing_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketingInfoEvent {
  TicketingInfoParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketingInfoParams params)
        ticketingInfoEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketingInfoParams params)? ticketingInfoEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketingInfoParams params)? ticketingInfoEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ticketingInfoEventCalled value)
        ticketingInfoEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ticketingInfoEventCalled value)?
        ticketingInfoEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ticketingInfoEventCalled value)? ticketingInfoEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketingInfoEventCopyWith<TicketingInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketingInfoEventCopyWith<$Res> {
  factory $TicketingInfoEventCopyWith(
          TicketingInfoEvent value, $Res Function(TicketingInfoEvent) then) =
      _$TicketingInfoEventCopyWithImpl<$Res, TicketingInfoEvent>;
  @useResult
  $Res call({TicketingInfoParams params});
}

/// @nodoc
class _$TicketingInfoEventCopyWithImpl<$Res, $Val extends TicketingInfoEvent>
    implements $TicketingInfoEventCopyWith<$Res> {
  _$TicketingInfoEventCopyWithImpl(this._value, this._then);

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
              as TicketingInfoParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ticketingInfoEventCalledImplCopyWith<$Res>
    implements $TicketingInfoEventCopyWith<$Res> {
  factory _$$ticketingInfoEventCalledImplCopyWith(
          _$ticketingInfoEventCalledImpl value,
          $Res Function(_$ticketingInfoEventCalledImpl) then) =
      __$$ticketingInfoEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TicketingInfoParams params});
}

/// @nodoc
class __$$ticketingInfoEventCalledImplCopyWithImpl<$Res>
    extends _$TicketingInfoEventCopyWithImpl<$Res,
        _$ticketingInfoEventCalledImpl>
    implements _$$ticketingInfoEventCalledImplCopyWith<$Res> {
  __$$ticketingInfoEventCalledImplCopyWithImpl(
      _$ticketingInfoEventCalledImpl _value,
      $Res Function(_$ticketingInfoEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ticketingInfoEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as TicketingInfoParams,
    ));
  }
}

/// @nodoc

class _$ticketingInfoEventCalledImpl implements _ticketingInfoEventCalled {
  const _$ticketingInfoEventCalledImpl(this.params);

  @override
  final TicketingInfoParams params;

  @override
  String toString() {
    return 'TicketingInfoEvent.ticketingInfoEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ticketingInfoEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ticketingInfoEventCalledImplCopyWith<_$ticketingInfoEventCalledImpl>
      get copyWith => __$$ticketingInfoEventCalledImplCopyWithImpl<
          _$ticketingInfoEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketingInfoParams params)
        ticketingInfoEventCalled,
  }) {
    return ticketingInfoEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketingInfoParams params)? ticketingInfoEventCalled,
  }) {
    return ticketingInfoEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketingInfoParams params)? ticketingInfoEventCalled,
    required TResult orElse(),
  }) {
    if (ticketingInfoEventCalled != null) {
      return ticketingInfoEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ticketingInfoEventCalled value)
        ticketingInfoEventCalled,
  }) {
    return ticketingInfoEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ticketingInfoEventCalled value)?
        ticketingInfoEventCalled,
  }) {
    return ticketingInfoEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ticketingInfoEventCalled value)? ticketingInfoEventCalled,
    required TResult orElse(),
  }) {
    if (ticketingInfoEventCalled != null) {
      return ticketingInfoEventCalled(this);
    }
    return orElse();
  }
}

abstract class _ticketingInfoEventCalled implements TicketingInfoEvent {
  const factory _ticketingInfoEventCalled(final TicketingInfoParams params) =
      _$ticketingInfoEventCalledImpl;

  @override
  TicketingInfoParams get params;
  @override
  @JsonKey(ignore: true)
  _$$ticketingInfoEventCalledImplCopyWith<_$ticketingInfoEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketingInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            TicketingInfoResponseEntity ticketingInfoResponseEntity)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(TicketingInfoResponseEntity ticketingInfoResponseEntity)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(TicketingInfoResponseEntity ticketingInfoResponseEntity)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketingInfoStateInitial value) initial,
    required TResult Function(_TicketingInfoStateLoadFailure value) loadFailure,
    required TResult Function(TicketingInfoStateLoading value) loading,
    required TResult Function(_TicketingInfoStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingInfoStateInitial value)? initial,
    TResult? Function(_TicketingInfoStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingInfoStateLoading value)? loading,
    TResult? Function(_TicketingInfoStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingInfoStateInitial value)? initial,
    TResult Function(_TicketingInfoStateLoadFailure value)? loadFailure,
    TResult Function(TicketingInfoStateLoading value)? loading,
    TResult Function(_TicketingInfoStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketingInfoStateCopyWith<$Res> {
  factory $TicketingInfoStateCopyWith(
          TicketingInfoState value, $Res Function(TicketingInfoState) then) =
      _$TicketingInfoStateCopyWithImpl<$Res, TicketingInfoState>;
}

/// @nodoc
class _$TicketingInfoStateCopyWithImpl<$Res, $Val extends TicketingInfoState>
    implements $TicketingInfoStateCopyWith<$Res> {
  _$TicketingInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TicketingInfoStateInitialImplCopyWith<$Res> {
  factory _$$TicketingInfoStateInitialImplCopyWith(
          _$TicketingInfoStateInitialImpl value,
          $Res Function(_$TicketingInfoStateInitialImpl) then) =
      __$$TicketingInfoStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketingInfoStateInitialImplCopyWithImpl<$Res>
    extends _$TicketingInfoStateCopyWithImpl<$Res,
        _$TicketingInfoStateInitialImpl>
    implements _$$TicketingInfoStateInitialImplCopyWith<$Res> {
  __$$TicketingInfoStateInitialImplCopyWithImpl(
      _$TicketingInfoStateInitialImpl _value,
      $Res Function(_$TicketingInfoStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketingInfoStateInitialImpl implements _TicketingInfoStateInitial {
  const _$TicketingInfoStateInitialImpl();

  @override
  String toString() {
    return 'TicketingInfoState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingInfoStateInitialImpl);
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
            TicketingInfoResponseEntity ticketingInfoResponseEntity)
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
    TResult? Function(TicketingInfoResponseEntity ticketingInfoResponseEntity)?
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
    TResult Function(TicketingInfoResponseEntity ticketingInfoResponseEntity)?
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
    required TResult Function(_TicketingInfoStateInitial value) initial,
    required TResult Function(_TicketingInfoStateLoadFailure value) loadFailure,
    required TResult Function(TicketingInfoStateLoading value) loading,
    required TResult Function(_TicketingInfoStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingInfoStateInitial value)? initial,
    TResult? Function(_TicketingInfoStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingInfoStateLoading value)? loading,
    TResult? Function(_TicketingInfoStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingInfoStateInitial value)? initial,
    TResult Function(_TicketingInfoStateLoadFailure value)? loadFailure,
    TResult Function(TicketingInfoStateLoading value)? loading,
    TResult Function(_TicketingInfoStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TicketingInfoStateInitial implements TicketingInfoState {
  const factory _TicketingInfoStateInitial() = _$TicketingInfoStateInitialImpl;
}

/// @nodoc
abstract class _$$TicketingInfoStateLoadFailureImplCopyWith<$Res> {
  factory _$$TicketingInfoStateLoadFailureImplCopyWith(
          _$TicketingInfoStateLoadFailureImpl value,
          $Res Function(_$TicketingInfoStateLoadFailureImpl) then) =
      __$$TicketingInfoStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$TicketingInfoStateLoadFailureImplCopyWithImpl<$Res>
    extends _$TicketingInfoStateCopyWithImpl<$Res,
        _$TicketingInfoStateLoadFailureImpl>
    implements _$$TicketingInfoStateLoadFailureImplCopyWith<$Res> {
  __$$TicketingInfoStateLoadFailureImplCopyWithImpl(
      _$TicketingInfoStateLoadFailureImpl _value,
      $Res Function(_$TicketingInfoStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$TicketingInfoStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$TicketingInfoStateLoadFailureImpl
    implements _TicketingInfoStateLoadFailure {
  const _$TicketingInfoStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'TicketingInfoState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingInfoStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketingInfoStateLoadFailureImplCopyWith<
          _$TicketingInfoStateLoadFailureImpl>
      get copyWith => __$$TicketingInfoStateLoadFailureImplCopyWithImpl<
          _$TicketingInfoStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            TicketingInfoResponseEntity ticketingInfoResponseEntity)
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
    TResult? Function(TicketingInfoResponseEntity ticketingInfoResponseEntity)?
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
    TResult Function(TicketingInfoResponseEntity ticketingInfoResponseEntity)?
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
    required TResult Function(_TicketingInfoStateInitial value) initial,
    required TResult Function(_TicketingInfoStateLoadFailure value) loadFailure,
    required TResult Function(TicketingInfoStateLoading value) loading,
    required TResult Function(_TicketingInfoStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingInfoStateInitial value)? initial,
    TResult? Function(_TicketingInfoStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingInfoStateLoading value)? loading,
    TResult? Function(_TicketingInfoStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingInfoStateInitial value)? initial,
    TResult Function(_TicketingInfoStateLoadFailure value)? loadFailure,
    TResult Function(TicketingInfoStateLoading value)? loading,
    TResult Function(_TicketingInfoStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _TicketingInfoStateLoadFailure implements TicketingInfoState {
  const factory _TicketingInfoStateLoadFailure(final Failure failure) =
      _$TicketingInfoStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$TicketingInfoStateLoadFailureImplCopyWith<
          _$TicketingInfoStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketingInfoStateLoadingImplCopyWith<$Res> {
  factory _$$TicketingInfoStateLoadingImplCopyWith(
          _$TicketingInfoStateLoadingImpl value,
          $Res Function(_$TicketingInfoStateLoadingImpl) then) =
      __$$TicketingInfoStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketingInfoStateLoadingImplCopyWithImpl<$Res>
    extends _$TicketingInfoStateCopyWithImpl<$Res,
        _$TicketingInfoStateLoadingImpl>
    implements _$$TicketingInfoStateLoadingImplCopyWith<$Res> {
  __$$TicketingInfoStateLoadingImplCopyWithImpl(
      _$TicketingInfoStateLoadingImpl _value,
      $Res Function(_$TicketingInfoStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketingInfoStateLoadingImpl implements TicketingInfoStateLoading {
  const _$TicketingInfoStateLoadingImpl();

  @override
  String toString() {
    return 'TicketingInfoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingInfoStateLoadingImpl);
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
            TicketingInfoResponseEntity ticketingInfoResponseEntity)
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
    TResult? Function(TicketingInfoResponseEntity ticketingInfoResponseEntity)?
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
    TResult Function(TicketingInfoResponseEntity ticketingInfoResponseEntity)?
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
    required TResult Function(_TicketingInfoStateInitial value) initial,
    required TResult Function(_TicketingInfoStateLoadFailure value) loadFailure,
    required TResult Function(TicketingInfoStateLoading value) loading,
    required TResult Function(_TicketingInfoStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingInfoStateInitial value)? initial,
    TResult? Function(_TicketingInfoStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingInfoStateLoading value)? loading,
    TResult? Function(_TicketingInfoStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingInfoStateInitial value)? initial,
    TResult Function(_TicketingInfoStateLoadFailure value)? loadFailure,
    TResult Function(TicketingInfoStateLoading value)? loading,
    TResult Function(_TicketingInfoStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TicketingInfoStateLoading implements TicketingInfoState {
  const factory TicketingInfoStateLoading() = _$TicketingInfoStateLoadingImpl;
}

/// @nodoc
abstract class _$$TicketingInfoStateLoadSuccessImplCopyWith<$Res> {
  factory _$$TicketingInfoStateLoadSuccessImplCopyWith(
          _$TicketingInfoStateLoadSuccessImpl value,
          $Res Function(_$TicketingInfoStateLoadSuccessImpl) then) =
      __$$TicketingInfoStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketingInfoResponseEntity ticketingInfoResponseEntity});
}

/// @nodoc
class __$$TicketingInfoStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$TicketingInfoStateCopyWithImpl<$Res,
        _$TicketingInfoStateLoadSuccessImpl>
    implements _$$TicketingInfoStateLoadSuccessImplCopyWith<$Res> {
  __$$TicketingInfoStateLoadSuccessImplCopyWithImpl(
      _$TicketingInfoStateLoadSuccessImpl _value,
      $Res Function(_$TicketingInfoStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketingInfoResponseEntity = null,
  }) {
    return _then(_$TicketingInfoStateLoadSuccessImpl(
      null == ticketingInfoResponseEntity
          ? _value.ticketingInfoResponseEntity
          : ticketingInfoResponseEntity // ignore: cast_nullable_to_non_nullable
              as TicketingInfoResponseEntity,
    ));
  }
}

/// @nodoc

class _$TicketingInfoStateLoadSuccessImpl
    implements _TicketingInfoStateLoadSuccess {
  const _$TicketingInfoStateLoadSuccessImpl(this.ticketingInfoResponseEntity);

  @override
  final TicketingInfoResponseEntity ticketingInfoResponseEntity;

  @override
  String toString() {
    return 'TicketingInfoState.loadSuccess(ticketingInfoResponseEntity: $ticketingInfoResponseEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingInfoStateLoadSuccessImpl &&
            (identical(other.ticketingInfoResponseEntity,
                    ticketingInfoResponseEntity) ||
                other.ticketingInfoResponseEntity ==
                    ticketingInfoResponseEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticketingInfoResponseEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketingInfoStateLoadSuccessImplCopyWith<
          _$TicketingInfoStateLoadSuccessImpl>
      get copyWith => __$$TicketingInfoStateLoadSuccessImplCopyWithImpl<
          _$TicketingInfoStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            TicketingInfoResponseEntity ticketingInfoResponseEntity)
        loadSuccess,
  }) {
    return loadSuccess(ticketingInfoResponseEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(TicketingInfoResponseEntity ticketingInfoResponseEntity)?
        loadSuccess,
  }) {
    return loadSuccess?.call(ticketingInfoResponseEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(TicketingInfoResponseEntity ticketingInfoResponseEntity)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(ticketingInfoResponseEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketingInfoStateInitial value) initial,
    required TResult Function(_TicketingInfoStateLoadFailure value) loadFailure,
    required TResult Function(TicketingInfoStateLoading value) loading,
    required TResult Function(_TicketingInfoStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingInfoStateInitial value)? initial,
    TResult? Function(_TicketingInfoStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingInfoStateLoading value)? loading,
    TResult? Function(_TicketingInfoStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingInfoStateInitial value)? initial,
    TResult Function(_TicketingInfoStateLoadFailure value)? loadFailure,
    TResult Function(TicketingInfoStateLoading value)? loading,
    TResult Function(_TicketingInfoStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _TicketingInfoStateLoadSuccess implements TicketingInfoState {
  const factory _TicketingInfoStateLoadSuccess(
          final TicketingInfoResponseEntity ticketingInfoResponseEntity) =
      _$TicketingInfoStateLoadSuccessImpl;

  TicketingInfoResponseEntity get ticketingInfoResponseEntity;
  @JsonKey(ignore: true)
  _$$TicketingInfoStateLoadSuccessImplCopyWith<
          _$TicketingInfoStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
