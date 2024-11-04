// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticketing_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketingListEvent {
  TicketingListParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketingListParams params)
        ticketingListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketingListParams params)? ticketingListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketingListParams params)? ticketingListEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ticketingListEventCalled value)
        ticketingListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ticketingListEventCalled value)?
        ticketingListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ticketingListEventCalled value)? ticketingListEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketingListEventCopyWith<TicketingListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketingListEventCopyWith<$Res> {
  factory $TicketingListEventCopyWith(
          TicketingListEvent value, $Res Function(TicketingListEvent) then) =
      _$TicketingListEventCopyWithImpl<$Res, TicketingListEvent>;
  @useResult
  $Res call({TicketingListParams params});
}

/// @nodoc
class _$TicketingListEventCopyWithImpl<$Res, $Val extends TicketingListEvent>
    implements $TicketingListEventCopyWith<$Res> {
  _$TicketingListEventCopyWithImpl(this._value, this._then);

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
              as TicketingListParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ticketingListEventCalledImplCopyWith<$Res>
    implements $TicketingListEventCopyWith<$Res> {
  factory _$$ticketingListEventCalledImplCopyWith(
          _$ticketingListEventCalledImpl value,
          $Res Function(_$ticketingListEventCalledImpl) then) =
      __$$ticketingListEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TicketingListParams params});
}

/// @nodoc
class __$$ticketingListEventCalledImplCopyWithImpl<$Res>
    extends _$TicketingListEventCopyWithImpl<$Res,
        _$ticketingListEventCalledImpl>
    implements _$$ticketingListEventCalledImplCopyWith<$Res> {
  __$$ticketingListEventCalledImplCopyWithImpl(
      _$ticketingListEventCalledImpl _value,
      $Res Function(_$ticketingListEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ticketingListEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as TicketingListParams,
    ));
  }
}

/// @nodoc

class _$ticketingListEventCalledImpl implements _ticketingListEventCalled {
  const _$ticketingListEventCalledImpl(this.params);

  @override
  final TicketingListParams params;

  @override
  String toString() {
    return 'TicketingListEvent.ticketingListEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ticketingListEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ticketingListEventCalledImplCopyWith<_$ticketingListEventCalledImpl>
      get copyWith => __$$ticketingListEventCalledImplCopyWithImpl<
          _$ticketingListEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketingListParams params)
        ticketingListEventCalled,
  }) {
    return ticketingListEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketingListParams params)? ticketingListEventCalled,
  }) {
    return ticketingListEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketingListParams params)? ticketingListEventCalled,
    required TResult orElse(),
  }) {
    if (ticketingListEventCalled != null) {
      return ticketingListEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ticketingListEventCalled value)
        ticketingListEventCalled,
  }) {
    return ticketingListEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ticketingListEventCalled value)?
        ticketingListEventCalled,
  }) {
    return ticketingListEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ticketingListEventCalled value)? ticketingListEventCalled,
    required TResult orElse(),
  }) {
    if (ticketingListEventCalled != null) {
      return ticketingListEventCalled(this);
    }
    return orElse();
  }
}

abstract class _ticketingListEventCalled implements TicketingListEvent {
  const factory _ticketingListEventCalled(final TicketingListParams params) =
      _$ticketingListEventCalledImpl;

  @override
  TicketingListParams get params;
  @override
  @JsonKey(ignore: true)
  _$$ticketingListEventCalledImplCopyWith<_$ticketingListEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketingListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(TicketListResponseEntity ticketListResponseEntity)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(TicketListResponseEntity ticketListResponseEntity)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(TicketListResponseEntity ticketListResponseEntity)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketingListStateInitial value) initial,
    required TResult Function(_TicketingListStateLoadFailure value) loadFailure,
    required TResult Function(TicketingListStateLoading value) loading,
    required TResult Function(_TicketingSearchStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingListStateInitial value)? initial,
    TResult? Function(_TicketingListStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingListStateLoading value)? loading,
    TResult? Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingListStateInitial value)? initial,
    TResult Function(_TicketingListStateLoadFailure value)? loadFailure,
    TResult Function(TicketingListStateLoading value)? loading,
    TResult Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketingListStateCopyWith<$Res> {
  factory $TicketingListStateCopyWith(
          TicketingListState value, $Res Function(TicketingListState) then) =
      _$TicketingListStateCopyWithImpl<$Res, TicketingListState>;
}

/// @nodoc
class _$TicketingListStateCopyWithImpl<$Res, $Val extends TicketingListState>
    implements $TicketingListStateCopyWith<$Res> {
  _$TicketingListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TicketingListStateInitialImplCopyWith<$Res> {
  factory _$$TicketingListStateInitialImplCopyWith(
          _$TicketingListStateInitialImpl value,
          $Res Function(_$TicketingListStateInitialImpl) then) =
      __$$TicketingListStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketingListStateInitialImplCopyWithImpl<$Res>
    extends _$TicketingListStateCopyWithImpl<$Res,
        _$TicketingListStateInitialImpl>
    implements _$$TicketingListStateInitialImplCopyWith<$Res> {
  __$$TicketingListStateInitialImplCopyWithImpl(
      _$TicketingListStateInitialImpl _value,
      $Res Function(_$TicketingListStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketingListStateInitialImpl implements _TicketingListStateInitial {
  const _$TicketingListStateInitialImpl();

  @override
  String toString() {
    return 'TicketingListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingListStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(TicketListResponseEntity ticketListResponseEntity)
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
    TResult? Function(TicketListResponseEntity ticketListResponseEntity)?
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
    TResult Function(TicketListResponseEntity ticketListResponseEntity)?
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
    required TResult Function(_TicketingListStateInitial value) initial,
    required TResult Function(_TicketingListStateLoadFailure value) loadFailure,
    required TResult Function(TicketingListStateLoading value) loading,
    required TResult Function(_TicketingSearchStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingListStateInitial value)? initial,
    TResult? Function(_TicketingListStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingListStateLoading value)? loading,
    TResult? Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingListStateInitial value)? initial,
    TResult Function(_TicketingListStateLoadFailure value)? loadFailure,
    TResult Function(TicketingListStateLoading value)? loading,
    TResult Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TicketingListStateInitial implements TicketingListState {
  const factory _TicketingListStateInitial() = _$TicketingListStateInitialImpl;
}

/// @nodoc
abstract class _$$TicketingListStateLoadFailureImplCopyWith<$Res> {
  factory _$$TicketingListStateLoadFailureImplCopyWith(
          _$TicketingListStateLoadFailureImpl value,
          $Res Function(_$TicketingListStateLoadFailureImpl) then) =
      __$$TicketingListStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$TicketingListStateLoadFailureImplCopyWithImpl<$Res>
    extends _$TicketingListStateCopyWithImpl<$Res,
        _$TicketingListStateLoadFailureImpl>
    implements _$$TicketingListStateLoadFailureImplCopyWith<$Res> {
  __$$TicketingListStateLoadFailureImplCopyWithImpl(
      _$TicketingListStateLoadFailureImpl _value,
      $Res Function(_$TicketingListStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$TicketingListStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$TicketingListStateLoadFailureImpl
    implements _TicketingListStateLoadFailure {
  const _$TicketingListStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'TicketingListState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingListStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketingListStateLoadFailureImplCopyWith<
          _$TicketingListStateLoadFailureImpl>
      get copyWith => __$$TicketingListStateLoadFailureImplCopyWithImpl<
          _$TicketingListStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(TicketListResponseEntity ticketListResponseEntity)
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
    TResult? Function(TicketListResponseEntity ticketListResponseEntity)?
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
    TResult Function(TicketListResponseEntity ticketListResponseEntity)?
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
    required TResult Function(_TicketingListStateInitial value) initial,
    required TResult Function(_TicketingListStateLoadFailure value) loadFailure,
    required TResult Function(TicketingListStateLoading value) loading,
    required TResult Function(_TicketingSearchStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingListStateInitial value)? initial,
    TResult? Function(_TicketingListStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingListStateLoading value)? loading,
    TResult? Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingListStateInitial value)? initial,
    TResult Function(_TicketingListStateLoadFailure value)? loadFailure,
    TResult Function(TicketingListStateLoading value)? loading,
    TResult Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _TicketingListStateLoadFailure implements TicketingListState {
  const factory _TicketingListStateLoadFailure(final Failure failure) =
      _$TicketingListStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$TicketingListStateLoadFailureImplCopyWith<
          _$TicketingListStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketingListStateLoadingImplCopyWith<$Res> {
  factory _$$TicketingListStateLoadingImplCopyWith(
          _$TicketingListStateLoadingImpl value,
          $Res Function(_$TicketingListStateLoadingImpl) then) =
      __$$TicketingListStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketingListStateLoadingImplCopyWithImpl<$Res>
    extends _$TicketingListStateCopyWithImpl<$Res,
        _$TicketingListStateLoadingImpl>
    implements _$$TicketingListStateLoadingImplCopyWith<$Res> {
  __$$TicketingListStateLoadingImplCopyWithImpl(
      _$TicketingListStateLoadingImpl _value,
      $Res Function(_$TicketingListStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketingListStateLoadingImpl implements TicketingListStateLoading {
  const _$TicketingListStateLoadingImpl();

  @override
  String toString() {
    return 'TicketingListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingListStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(TicketListResponseEntity ticketListResponseEntity)
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
    TResult? Function(TicketListResponseEntity ticketListResponseEntity)?
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
    TResult Function(TicketListResponseEntity ticketListResponseEntity)?
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
    required TResult Function(_TicketingListStateInitial value) initial,
    required TResult Function(_TicketingListStateLoadFailure value) loadFailure,
    required TResult Function(TicketingListStateLoading value) loading,
    required TResult Function(_TicketingSearchStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingListStateInitial value)? initial,
    TResult? Function(_TicketingListStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingListStateLoading value)? loading,
    TResult? Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingListStateInitial value)? initial,
    TResult Function(_TicketingListStateLoadFailure value)? loadFailure,
    TResult Function(TicketingListStateLoading value)? loading,
    TResult Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TicketingListStateLoading implements TicketingListState {
  const factory TicketingListStateLoading() = _$TicketingListStateLoadingImpl;
}

/// @nodoc
abstract class _$$TicketingSearchStateLoadSuccessImplCopyWith<$Res> {
  factory _$$TicketingSearchStateLoadSuccessImplCopyWith(
          _$TicketingSearchStateLoadSuccessImpl value,
          $Res Function(_$TicketingSearchStateLoadSuccessImpl) then) =
      __$$TicketingSearchStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketListResponseEntity ticketListResponseEntity});
}

/// @nodoc
class __$$TicketingSearchStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$TicketingListStateCopyWithImpl<$Res,
        _$TicketingSearchStateLoadSuccessImpl>
    implements _$$TicketingSearchStateLoadSuccessImplCopyWith<$Res> {
  __$$TicketingSearchStateLoadSuccessImplCopyWithImpl(
      _$TicketingSearchStateLoadSuccessImpl _value,
      $Res Function(_$TicketingSearchStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketListResponseEntity = null,
  }) {
    return _then(_$TicketingSearchStateLoadSuccessImpl(
      null == ticketListResponseEntity
          ? _value.ticketListResponseEntity
          : ticketListResponseEntity // ignore: cast_nullable_to_non_nullable
              as TicketListResponseEntity,
    ));
  }
}

/// @nodoc

class _$TicketingSearchStateLoadSuccessImpl
    implements _TicketingSearchStateLoadSuccess {
  const _$TicketingSearchStateLoadSuccessImpl(this.ticketListResponseEntity);

  @override
  final TicketListResponseEntity ticketListResponseEntity;

  @override
  String toString() {
    return 'TicketingListState.loadSuccess(ticketListResponseEntity: $ticketListResponseEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingSearchStateLoadSuccessImpl &&
            (identical(
                    other.ticketListResponseEntity, ticketListResponseEntity) ||
                other.ticketListResponseEntity == ticketListResponseEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticketListResponseEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketingSearchStateLoadSuccessImplCopyWith<
          _$TicketingSearchStateLoadSuccessImpl>
      get copyWith => __$$TicketingSearchStateLoadSuccessImplCopyWithImpl<
          _$TicketingSearchStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(TicketListResponseEntity ticketListResponseEntity)
        loadSuccess,
  }) {
    return loadSuccess(ticketListResponseEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(TicketListResponseEntity ticketListResponseEntity)?
        loadSuccess,
  }) {
    return loadSuccess?.call(ticketListResponseEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(TicketListResponseEntity ticketListResponseEntity)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(ticketListResponseEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketingListStateInitial value) initial,
    required TResult Function(_TicketingListStateLoadFailure value) loadFailure,
    required TResult Function(TicketingListStateLoading value) loading,
    required TResult Function(_TicketingSearchStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingListStateInitial value)? initial,
    TResult? Function(_TicketingListStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingListStateLoading value)? loading,
    TResult? Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingListStateInitial value)? initial,
    TResult Function(_TicketingListStateLoadFailure value)? loadFailure,
    TResult Function(TicketingListStateLoading value)? loading,
    TResult Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _TicketingSearchStateLoadSuccess implements TicketingListState {
  const factory _TicketingSearchStateLoadSuccess(
          final TicketListResponseEntity ticketListResponseEntity) =
      _$TicketingSearchStateLoadSuccessImpl;

  TicketListResponseEntity get ticketListResponseEntity;
  @JsonKey(ignore: true)
  _$$TicketingSearchStateLoadSuccessImplCopyWith<
          _$TicketingSearchStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
