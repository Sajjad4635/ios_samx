// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticketing_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketingSearchEvent {
  TicketingSearchParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketingSearchParams params)
        ticketingSearchEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketingSearchParams params)? ticketingSearchEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketingSearchParams params)? ticketingSearchEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketingSearchEventCalled value)
        ticketingSearchEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingSearchEventCalled value)?
        ticketingSearchEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingSearchEventCalled value)?
        ticketingSearchEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketingSearchEventCopyWith<TicketingSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketingSearchEventCopyWith<$Res> {
  factory $TicketingSearchEventCopyWith(TicketingSearchEvent value,
          $Res Function(TicketingSearchEvent) then) =
      _$TicketingSearchEventCopyWithImpl<$Res, TicketingSearchEvent>;
  @useResult
  $Res call({TicketingSearchParams params});
}

/// @nodoc
class _$TicketingSearchEventCopyWithImpl<$Res,
        $Val extends TicketingSearchEvent>
    implements $TicketingSearchEventCopyWith<$Res> {
  _$TicketingSearchEventCopyWithImpl(this._value, this._then);

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
              as TicketingSearchParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketingSearchEventCalledImplCopyWith<$Res>
    implements $TicketingSearchEventCopyWith<$Res> {
  factory _$$TicketingSearchEventCalledImplCopyWith(
          _$TicketingSearchEventCalledImpl value,
          $Res Function(_$TicketingSearchEventCalledImpl) then) =
      __$$TicketingSearchEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TicketingSearchParams params});
}

/// @nodoc
class __$$TicketingSearchEventCalledImplCopyWithImpl<$Res>
    extends _$TicketingSearchEventCopyWithImpl<$Res,
        _$TicketingSearchEventCalledImpl>
    implements _$$TicketingSearchEventCalledImplCopyWith<$Res> {
  __$$TicketingSearchEventCalledImplCopyWithImpl(
      _$TicketingSearchEventCalledImpl _value,
      $Res Function(_$TicketingSearchEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$TicketingSearchEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as TicketingSearchParams,
    ));
  }
}

/// @nodoc

class _$TicketingSearchEventCalledImpl implements _TicketingSearchEventCalled {
  const _$TicketingSearchEventCalledImpl(this.params);

  @override
  final TicketingSearchParams params;

  @override
  String toString() {
    return 'TicketingSearchEvent.ticketingSearchEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingSearchEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketingSearchEventCalledImplCopyWith<_$TicketingSearchEventCalledImpl>
      get copyWith => __$$TicketingSearchEventCalledImplCopyWithImpl<
          _$TicketingSearchEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketingSearchParams params)
        ticketingSearchEventCalled,
  }) {
    return ticketingSearchEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketingSearchParams params)? ticketingSearchEventCalled,
  }) {
    return ticketingSearchEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketingSearchParams params)? ticketingSearchEventCalled,
    required TResult orElse(),
  }) {
    if (ticketingSearchEventCalled != null) {
      return ticketingSearchEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketingSearchEventCalled value)
        ticketingSearchEventCalled,
  }) {
    return ticketingSearchEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingSearchEventCalled value)?
        ticketingSearchEventCalled,
  }) {
    return ticketingSearchEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingSearchEventCalled value)?
        ticketingSearchEventCalled,
    required TResult orElse(),
  }) {
    if (ticketingSearchEventCalled != null) {
      return ticketingSearchEventCalled(this);
    }
    return orElse();
  }
}

abstract class _TicketingSearchEventCalled implements TicketingSearchEvent {
  const factory _TicketingSearchEventCalled(
      final TicketingSearchParams params) = _$TicketingSearchEventCalledImpl;

  @override
  TicketingSearchParams get params;
  @override
  @JsonKey(ignore: true)
  _$$TicketingSearchEventCalledImplCopyWith<_$TicketingSearchEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketingSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            TicketingSearchResponseEntity ticketingSearchResponseEntity)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            TicketingSearchResponseEntity ticketingSearchResponseEntity)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            TicketingSearchResponseEntity ticketingSearchResponseEntity)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketingSearchStateInitial value) initial,
    required TResult Function(_TicketingSearchStateLoadFailure value)
        loadFailure,
    required TResult Function(TicketingSearchStateLoading value) loading,
    required TResult Function(_TicketingSearchStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingSearchStateInitial value)? initial,
    TResult? Function(_TicketingSearchStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingSearchStateLoading value)? loading,
    TResult? Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingSearchStateInitial value)? initial,
    TResult Function(_TicketingSearchStateLoadFailure value)? loadFailure,
    TResult Function(TicketingSearchStateLoading value)? loading,
    TResult Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketingSearchStateCopyWith<$Res> {
  factory $TicketingSearchStateCopyWith(TicketingSearchState value,
          $Res Function(TicketingSearchState) then) =
      _$TicketingSearchStateCopyWithImpl<$Res, TicketingSearchState>;
}

/// @nodoc
class _$TicketingSearchStateCopyWithImpl<$Res,
        $Val extends TicketingSearchState>
    implements $TicketingSearchStateCopyWith<$Res> {
  _$TicketingSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TicketingSearchStateInitialImplCopyWith<$Res> {
  factory _$$TicketingSearchStateInitialImplCopyWith(
          _$TicketingSearchStateInitialImpl value,
          $Res Function(_$TicketingSearchStateInitialImpl) then) =
      __$$TicketingSearchStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketingSearchStateInitialImplCopyWithImpl<$Res>
    extends _$TicketingSearchStateCopyWithImpl<$Res,
        _$TicketingSearchStateInitialImpl>
    implements _$$TicketingSearchStateInitialImplCopyWith<$Res> {
  __$$TicketingSearchStateInitialImplCopyWithImpl(
      _$TicketingSearchStateInitialImpl _value,
      $Res Function(_$TicketingSearchStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketingSearchStateInitialImpl
    implements _TicketingSearchStateInitial {
  const _$TicketingSearchStateInitialImpl();

  @override
  String toString() {
    return 'TicketingSearchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingSearchStateInitialImpl);
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
            TicketingSearchResponseEntity ticketingSearchResponseEntity)
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
            TicketingSearchResponseEntity ticketingSearchResponseEntity)?
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
            TicketingSearchResponseEntity ticketingSearchResponseEntity)?
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
    required TResult Function(_TicketingSearchStateInitial value) initial,
    required TResult Function(_TicketingSearchStateLoadFailure value)
        loadFailure,
    required TResult Function(TicketingSearchStateLoading value) loading,
    required TResult Function(_TicketingSearchStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingSearchStateInitial value)? initial,
    TResult? Function(_TicketingSearchStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingSearchStateLoading value)? loading,
    TResult? Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingSearchStateInitial value)? initial,
    TResult Function(_TicketingSearchStateLoadFailure value)? loadFailure,
    TResult Function(TicketingSearchStateLoading value)? loading,
    TResult Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TicketingSearchStateInitial implements TicketingSearchState {
  const factory _TicketingSearchStateInitial() =
      _$TicketingSearchStateInitialImpl;
}

/// @nodoc
abstract class _$$TicketingSearchStateLoadFailureImplCopyWith<$Res> {
  factory _$$TicketingSearchStateLoadFailureImplCopyWith(
          _$TicketingSearchStateLoadFailureImpl value,
          $Res Function(_$TicketingSearchStateLoadFailureImpl) then) =
      __$$TicketingSearchStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$TicketingSearchStateLoadFailureImplCopyWithImpl<$Res>
    extends _$TicketingSearchStateCopyWithImpl<$Res,
        _$TicketingSearchStateLoadFailureImpl>
    implements _$$TicketingSearchStateLoadFailureImplCopyWith<$Res> {
  __$$TicketingSearchStateLoadFailureImplCopyWithImpl(
      _$TicketingSearchStateLoadFailureImpl _value,
      $Res Function(_$TicketingSearchStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$TicketingSearchStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$TicketingSearchStateLoadFailureImpl
    implements _TicketingSearchStateLoadFailure {
  const _$TicketingSearchStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'TicketingSearchState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingSearchStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketingSearchStateLoadFailureImplCopyWith<
          _$TicketingSearchStateLoadFailureImpl>
      get copyWith => __$$TicketingSearchStateLoadFailureImplCopyWithImpl<
          _$TicketingSearchStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            TicketingSearchResponseEntity ticketingSearchResponseEntity)
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
            TicketingSearchResponseEntity ticketingSearchResponseEntity)?
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
            TicketingSearchResponseEntity ticketingSearchResponseEntity)?
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
    required TResult Function(_TicketingSearchStateInitial value) initial,
    required TResult Function(_TicketingSearchStateLoadFailure value)
        loadFailure,
    required TResult Function(TicketingSearchStateLoading value) loading,
    required TResult Function(_TicketingSearchStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingSearchStateInitial value)? initial,
    TResult? Function(_TicketingSearchStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingSearchStateLoading value)? loading,
    TResult? Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingSearchStateInitial value)? initial,
    TResult Function(_TicketingSearchStateLoadFailure value)? loadFailure,
    TResult Function(TicketingSearchStateLoading value)? loading,
    TResult Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _TicketingSearchStateLoadFailure
    implements TicketingSearchState {
  const factory _TicketingSearchStateLoadFailure(final Failure failure) =
      _$TicketingSearchStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$TicketingSearchStateLoadFailureImplCopyWith<
          _$TicketingSearchStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketingSearchStateLoadingImplCopyWith<$Res> {
  factory _$$TicketingSearchStateLoadingImplCopyWith(
          _$TicketingSearchStateLoadingImpl value,
          $Res Function(_$TicketingSearchStateLoadingImpl) then) =
      __$$TicketingSearchStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketingSearchStateLoadingImplCopyWithImpl<$Res>
    extends _$TicketingSearchStateCopyWithImpl<$Res,
        _$TicketingSearchStateLoadingImpl>
    implements _$$TicketingSearchStateLoadingImplCopyWith<$Res> {
  __$$TicketingSearchStateLoadingImplCopyWithImpl(
      _$TicketingSearchStateLoadingImpl _value,
      $Res Function(_$TicketingSearchStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketingSearchStateLoadingImpl implements TicketingSearchStateLoading {
  const _$TicketingSearchStateLoadingImpl();

  @override
  String toString() {
    return 'TicketingSearchState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingSearchStateLoadingImpl);
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
            TicketingSearchResponseEntity ticketingSearchResponseEntity)
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
            TicketingSearchResponseEntity ticketingSearchResponseEntity)?
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
            TicketingSearchResponseEntity ticketingSearchResponseEntity)?
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
    required TResult Function(_TicketingSearchStateInitial value) initial,
    required TResult Function(_TicketingSearchStateLoadFailure value)
        loadFailure,
    required TResult Function(TicketingSearchStateLoading value) loading,
    required TResult Function(_TicketingSearchStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingSearchStateInitial value)? initial,
    TResult? Function(_TicketingSearchStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingSearchStateLoading value)? loading,
    TResult? Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingSearchStateInitial value)? initial,
    TResult Function(_TicketingSearchStateLoadFailure value)? loadFailure,
    TResult Function(TicketingSearchStateLoading value)? loading,
    TResult Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TicketingSearchStateLoading implements TicketingSearchState {
  const factory TicketingSearchStateLoading() =
      _$TicketingSearchStateLoadingImpl;
}

/// @nodoc
abstract class _$$TicketingSearchStateLoadSuccessImplCopyWith<$Res> {
  factory _$$TicketingSearchStateLoadSuccessImplCopyWith(
          _$TicketingSearchStateLoadSuccessImpl value,
          $Res Function(_$TicketingSearchStateLoadSuccessImpl) then) =
      __$$TicketingSearchStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketingSearchResponseEntity ticketingSearchResponseEntity});
}

/// @nodoc
class __$$TicketingSearchStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$TicketingSearchStateCopyWithImpl<$Res,
        _$TicketingSearchStateLoadSuccessImpl>
    implements _$$TicketingSearchStateLoadSuccessImplCopyWith<$Res> {
  __$$TicketingSearchStateLoadSuccessImplCopyWithImpl(
      _$TicketingSearchStateLoadSuccessImpl _value,
      $Res Function(_$TicketingSearchStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketingSearchResponseEntity = null,
  }) {
    return _then(_$TicketingSearchStateLoadSuccessImpl(
      null == ticketingSearchResponseEntity
          ? _value.ticketingSearchResponseEntity
          : ticketingSearchResponseEntity // ignore: cast_nullable_to_non_nullable
              as TicketingSearchResponseEntity,
    ));
  }
}

/// @nodoc

class _$TicketingSearchStateLoadSuccessImpl
    implements _TicketingSearchStateLoadSuccess {
  const _$TicketingSearchStateLoadSuccessImpl(
      this.ticketingSearchResponseEntity);

  @override
  final TicketingSearchResponseEntity ticketingSearchResponseEntity;

  @override
  String toString() {
    return 'TicketingSearchState.loadSuccess(ticketingSearchResponseEntity: $ticketingSearchResponseEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingSearchStateLoadSuccessImpl &&
            (identical(other.ticketingSearchResponseEntity,
                    ticketingSearchResponseEntity) ||
                other.ticketingSearchResponseEntity ==
                    ticketingSearchResponseEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticketingSearchResponseEntity);

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
    required TResult Function(
            TicketingSearchResponseEntity ticketingSearchResponseEntity)
        loadSuccess,
  }) {
    return loadSuccess(ticketingSearchResponseEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            TicketingSearchResponseEntity ticketingSearchResponseEntity)?
        loadSuccess,
  }) {
    return loadSuccess?.call(ticketingSearchResponseEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            TicketingSearchResponseEntity ticketingSearchResponseEntity)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(ticketingSearchResponseEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketingSearchStateInitial value) initial,
    required TResult Function(_TicketingSearchStateLoadFailure value)
        loadFailure,
    required TResult Function(TicketingSearchStateLoading value) loading,
    required TResult Function(_TicketingSearchStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingSearchStateInitial value)? initial,
    TResult? Function(_TicketingSearchStateLoadFailure value)? loadFailure,
    TResult? Function(TicketingSearchStateLoading value)? loading,
    TResult? Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingSearchStateInitial value)? initial,
    TResult Function(_TicketingSearchStateLoadFailure value)? loadFailure,
    TResult Function(TicketingSearchStateLoading value)? loading,
    TResult Function(_TicketingSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _TicketingSearchStateLoadSuccess
    implements TicketingSearchState {
  const factory _TicketingSearchStateLoadSuccess(
          final TicketingSearchResponseEntity ticketingSearchResponseEntity) =
      _$TicketingSearchStateLoadSuccessImpl;

  TicketingSearchResponseEntity get ticketingSearchResponseEntity;
  @JsonKey(ignore: true)
  _$$TicketingSearchStateLoadSuccessImplCopyWith<
          _$TicketingSearchStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
