// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticketing_login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketingLoginEvent {
  TicketingLoginParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketingLoginParams params)
        ticketingLoginEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketingLoginParams params)? ticketingLoginEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketingLoginParams params)? ticketingLoginEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketingLoginEventCalled value)
        ticketingLoginEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingLoginEventCalled value)?
        ticketingLoginEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingLoginEventCalled value)?
        ticketingLoginEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketingLoginEventCopyWith<TicketingLoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketingLoginEventCopyWith<$Res> {
  factory $TicketingLoginEventCopyWith(
          TicketingLoginEvent value, $Res Function(TicketingLoginEvent) then) =
      _$TicketingLoginEventCopyWithImpl<$Res, TicketingLoginEvent>;
  @useResult
  $Res call({TicketingLoginParams params});
}

/// @nodoc
class _$TicketingLoginEventCopyWithImpl<$Res, $Val extends TicketingLoginEvent>
    implements $TicketingLoginEventCopyWith<$Res> {
  _$TicketingLoginEventCopyWithImpl(this._value, this._then);

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
              as TicketingLoginParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketingLoginEventCalledImplCopyWith<$Res>
    implements $TicketingLoginEventCopyWith<$Res> {
  factory _$$TicketingLoginEventCalledImplCopyWith(
          _$TicketingLoginEventCalledImpl value,
          $Res Function(_$TicketingLoginEventCalledImpl) then) =
      __$$TicketingLoginEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TicketingLoginParams params});
}

/// @nodoc
class __$$TicketingLoginEventCalledImplCopyWithImpl<$Res>
    extends _$TicketingLoginEventCopyWithImpl<$Res,
        _$TicketingLoginEventCalledImpl>
    implements _$$TicketingLoginEventCalledImplCopyWith<$Res> {
  __$$TicketingLoginEventCalledImplCopyWithImpl(
      _$TicketingLoginEventCalledImpl _value,
      $Res Function(_$TicketingLoginEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$TicketingLoginEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as TicketingLoginParams,
    ));
  }
}

/// @nodoc

class _$TicketingLoginEventCalledImpl implements _TicketingLoginEventCalled {
  const _$TicketingLoginEventCalledImpl(this.params);

  @override
  final TicketingLoginParams params;

  @override
  String toString() {
    return 'TicketingLoginEvent.ticketingLoginEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingLoginEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketingLoginEventCalledImplCopyWith<_$TicketingLoginEventCalledImpl>
      get copyWith => __$$TicketingLoginEventCalledImplCopyWithImpl<
          _$TicketingLoginEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketingLoginParams params)
        ticketingLoginEventCalled,
  }) {
    return ticketingLoginEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketingLoginParams params)? ticketingLoginEventCalled,
  }) {
    return ticketingLoginEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketingLoginParams params)? ticketingLoginEventCalled,
    required TResult orElse(),
  }) {
    if (ticketingLoginEventCalled != null) {
      return ticketingLoginEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketingLoginEventCalled value)
        ticketingLoginEventCalled,
  }) {
    return ticketingLoginEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingLoginEventCalled value)?
        ticketingLoginEventCalled,
  }) {
    return ticketingLoginEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingLoginEventCalled value)?
        ticketingLoginEventCalled,
    required TResult orElse(),
  }) {
    if (ticketingLoginEventCalled != null) {
      return ticketingLoginEventCalled(this);
    }
    return orElse();
  }
}

abstract class _TicketingLoginEventCalled implements TicketingLoginEvent {
  const factory _TicketingLoginEventCalled(final TicketingLoginParams params) =
      _$TicketingLoginEventCalledImpl;

  @override
  TicketingLoginParams get params;
  @override
  @JsonKey(ignore: true)
  _$$TicketingLoginEventCalledImplCopyWith<_$TicketingLoginEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketingLoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure error) loadFailure,
    required TResult Function(TicketingLoginResponseEntity entity) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure error)? loadFailure,
    TResult? Function(TicketingLoginResponseEntity entity)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure error)? loadFailure,
    TResult Function(TicketingLoginResponseEntity entity)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketingLoginInitial value) initial,
    required TResult Function(TicketingLoginLoading value) loading,
    required TResult Function(_TicketingLoginStateFAilure value) loadFailure,
    required TResult Function(_TicketingLoginSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingLoginInitial value)? initial,
    TResult? Function(TicketingLoginLoading value)? loading,
    TResult? Function(_TicketingLoginStateFAilure value)? loadFailure,
    TResult? Function(_TicketingLoginSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingLoginInitial value)? initial,
    TResult Function(TicketingLoginLoading value)? loading,
    TResult Function(_TicketingLoginStateFAilure value)? loadFailure,
    TResult Function(_TicketingLoginSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketingLoginStateCopyWith<$Res> {
  factory $TicketingLoginStateCopyWith(
          TicketingLoginState value, $Res Function(TicketingLoginState) then) =
      _$TicketingLoginStateCopyWithImpl<$Res, TicketingLoginState>;
}

/// @nodoc
class _$TicketingLoginStateCopyWithImpl<$Res, $Val extends TicketingLoginState>
    implements $TicketingLoginStateCopyWith<$Res> {
  _$TicketingLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TicketingLoginInitialImplCopyWith<$Res> {
  factory _$$TicketingLoginInitialImplCopyWith(
          _$TicketingLoginInitialImpl value,
          $Res Function(_$TicketingLoginInitialImpl) then) =
      __$$TicketingLoginInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketingLoginInitialImplCopyWithImpl<$Res>
    extends _$TicketingLoginStateCopyWithImpl<$Res, _$TicketingLoginInitialImpl>
    implements _$$TicketingLoginInitialImplCopyWith<$Res> {
  __$$TicketingLoginInitialImplCopyWithImpl(_$TicketingLoginInitialImpl _value,
      $Res Function(_$TicketingLoginInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketingLoginInitialImpl implements _TicketingLoginInitial {
  const _$TicketingLoginInitialImpl();

  @override
  String toString() {
    return 'TicketingLoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingLoginInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure error) loadFailure,
    required TResult Function(TicketingLoginResponseEntity entity) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure error)? loadFailure,
    TResult? Function(TicketingLoginResponseEntity entity)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure error)? loadFailure,
    TResult Function(TicketingLoginResponseEntity entity)? loadSuccess,
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
    required TResult Function(_TicketingLoginInitial value) initial,
    required TResult Function(TicketingLoginLoading value) loading,
    required TResult Function(_TicketingLoginStateFAilure value) loadFailure,
    required TResult Function(_TicketingLoginSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingLoginInitial value)? initial,
    TResult? Function(TicketingLoginLoading value)? loading,
    TResult? Function(_TicketingLoginStateFAilure value)? loadFailure,
    TResult? Function(_TicketingLoginSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingLoginInitial value)? initial,
    TResult Function(TicketingLoginLoading value)? loading,
    TResult Function(_TicketingLoginStateFAilure value)? loadFailure,
    TResult Function(_TicketingLoginSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TicketingLoginInitial implements TicketingLoginState {
  const factory _TicketingLoginInitial() = _$TicketingLoginInitialImpl;
}

/// @nodoc
abstract class _$$TicketingLoginLoadingImplCopyWith<$Res> {
  factory _$$TicketingLoginLoadingImplCopyWith(
          _$TicketingLoginLoadingImpl value,
          $Res Function(_$TicketingLoginLoadingImpl) then) =
      __$$TicketingLoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketingLoginLoadingImplCopyWithImpl<$Res>
    extends _$TicketingLoginStateCopyWithImpl<$Res, _$TicketingLoginLoadingImpl>
    implements _$$TicketingLoginLoadingImplCopyWith<$Res> {
  __$$TicketingLoginLoadingImplCopyWithImpl(_$TicketingLoginLoadingImpl _value,
      $Res Function(_$TicketingLoginLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketingLoginLoadingImpl implements TicketingLoginLoading {
  const _$TicketingLoginLoadingImpl();

  @override
  String toString() {
    return 'TicketingLoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingLoginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure error) loadFailure,
    required TResult Function(TicketingLoginResponseEntity entity) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure error)? loadFailure,
    TResult? Function(TicketingLoginResponseEntity entity)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure error)? loadFailure,
    TResult Function(TicketingLoginResponseEntity entity)? loadSuccess,
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
    required TResult Function(_TicketingLoginInitial value) initial,
    required TResult Function(TicketingLoginLoading value) loading,
    required TResult Function(_TicketingLoginStateFAilure value) loadFailure,
    required TResult Function(_TicketingLoginSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingLoginInitial value)? initial,
    TResult? Function(TicketingLoginLoading value)? loading,
    TResult? Function(_TicketingLoginStateFAilure value)? loadFailure,
    TResult? Function(_TicketingLoginSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingLoginInitial value)? initial,
    TResult Function(TicketingLoginLoading value)? loading,
    TResult Function(_TicketingLoginStateFAilure value)? loadFailure,
    TResult Function(_TicketingLoginSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TicketingLoginLoading implements TicketingLoginState {
  const factory TicketingLoginLoading() = _$TicketingLoginLoadingImpl;
}

/// @nodoc
abstract class _$$TicketingLoginStateFAilureImplCopyWith<$Res> {
  factory _$$TicketingLoginStateFAilureImplCopyWith(
          _$TicketingLoginStateFAilureImpl value,
          $Res Function(_$TicketingLoginStateFAilureImpl) then) =
      __$$TicketingLoginStateFAilureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure error});
}

/// @nodoc
class __$$TicketingLoginStateFAilureImplCopyWithImpl<$Res>
    extends _$TicketingLoginStateCopyWithImpl<$Res,
        _$TicketingLoginStateFAilureImpl>
    implements _$$TicketingLoginStateFAilureImplCopyWith<$Res> {
  __$$TicketingLoginStateFAilureImplCopyWithImpl(
      _$TicketingLoginStateFAilureImpl _value,
      $Res Function(_$TicketingLoginStateFAilureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$TicketingLoginStateFAilureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$TicketingLoginStateFAilureImpl implements _TicketingLoginStateFAilure {
  const _$TicketingLoginStateFAilureImpl(this.error);

  @override
  final Failure error;

  @override
  String toString() {
    return 'TicketingLoginState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingLoginStateFAilureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketingLoginStateFAilureImplCopyWith<_$TicketingLoginStateFAilureImpl>
      get copyWith => __$$TicketingLoginStateFAilureImplCopyWithImpl<
          _$TicketingLoginStateFAilureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure error) loadFailure,
    required TResult Function(TicketingLoginResponseEntity entity) loadSuccess,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure error)? loadFailure,
    TResult? Function(TicketingLoginResponseEntity entity)? loadSuccess,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure error)? loadFailure,
    TResult Function(TicketingLoginResponseEntity entity)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketingLoginInitial value) initial,
    required TResult Function(TicketingLoginLoading value) loading,
    required TResult Function(_TicketingLoginStateFAilure value) loadFailure,
    required TResult Function(_TicketingLoginSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingLoginInitial value)? initial,
    TResult? Function(TicketingLoginLoading value)? loading,
    TResult? Function(_TicketingLoginStateFAilure value)? loadFailure,
    TResult? Function(_TicketingLoginSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingLoginInitial value)? initial,
    TResult Function(TicketingLoginLoading value)? loading,
    TResult Function(_TicketingLoginStateFAilure value)? loadFailure,
    TResult Function(_TicketingLoginSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _TicketingLoginStateFAilure implements TicketingLoginState {
  const factory _TicketingLoginStateFAilure(final Failure error) =
      _$TicketingLoginStateFAilureImpl;

  Failure get error;
  @JsonKey(ignore: true)
  _$$TicketingLoginStateFAilureImplCopyWith<_$TicketingLoginStateFAilureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketingLoginSuccessImplCopyWith<$Res> {
  factory _$$TicketingLoginSuccessImplCopyWith(
          _$TicketingLoginSuccessImpl value,
          $Res Function(_$TicketingLoginSuccessImpl) then) =
      __$$TicketingLoginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketingLoginResponseEntity entity});
}

/// @nodoc
class __$$TicketingLoginSuccessImplCopyWithImpl<$Res>
    extends _$TicketingLoginStateCopyWithImpl<$Res, _$TicketingLoginSuccessImpl>
    implements _$$TicketingLoginSuccessImplCopyWith<$Res> {
  __$$TicketingLoginSuccessImplCopyWithImpl(_$TicketingLoginSuccessImpl _value,
      $Res Function(_$TicketingLoginSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$TicketingLoginSuccessImpl(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as TicketingLoginResponseEntity,
    ));
  }
}

/// @nodoc

class _$TicketingLoginSuccessImpl implements _TicketingLoginSuccess {
  const _$TicketingLoginSuccessImpl(this.entity);

  @override
  final TicketingLoginResponseEntity entity;

  @override
  String toString() {
    return 'TicketingLoginState.loadSuccess(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketingLoginSuccessImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketingLoginSuccessImplCopyWith<_$TicketingLoginSuccessImpl>
      get copyWith => __$$TicketingLoginSuccessImplCopyWithImpl<
          _$TicketingLoginSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure error) loadFailure,
    required TResult Function(TicketingLoginResponseEntity entity) loadSuccess,
  }) {
    return loadSuccess(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure error)? loadFailure,
    TResult? Function(TicketingLoginResponseEntity entity)? loadSuccess,
  }) {
    return loadSuccess?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure error)? loadFailure,
    TResult Function(TicketingLoginResponseEntity entity)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketingLoginInitial value) initial,
    required TResult Function(TicketingLoginLoading value) loading,
    required TResult Function(_TicketingLoginStateFAilure value) loadFailure,
    required TResult Function(_TicketingLoginSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketingLoginInitial value)? initial,
    TResult? Function(TicketingLoginLoading value)? loading,
    TResult? Function(_TicketingLoginStateFAilure value)? loadFailure,
    TResult? Function(_TicketingLoginSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketingLoginInitial value)? initial,
    TResult Function(TicketingLoginLoading value)? loading,
    TResult Function(_TicketingLoginStateFAilure value)? loadFailure,
    TResult Function(_TicketingLoginSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _TicketingLoginSuccess implements TicketingLoginState {
  const factory _TicketingLoginSuccess(
      final TicketingLoginResponseEntity entity) = _$TicketingLoginSuccessImpl;

  TicketingLoginResponseEntity get entity;
  @JsonKey(ignore: true)
  _$$TicketingLoginSuccessImplCopyWith<_$TicketingLoginSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
