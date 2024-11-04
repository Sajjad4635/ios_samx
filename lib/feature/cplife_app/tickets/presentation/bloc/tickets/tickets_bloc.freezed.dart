// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketsEvent {
  NoParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoParams params) ticketsEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoParams params)? ticketsEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoParams params)? ticketsEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketsEventCalled value) ticketsEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsEventCalled value)? ticketsEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsEventCalled value)? ticketsEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketsEventCopyWith<TicketsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsEventCopyWith<$Res> {
  factory $TicketsEventCopyWith(
          TicketsEvent value, $Res Function(TicketsEvent) then) =
      _$TicketsEventCopyWithImpl<$Res, TicketsEvent>;
  @useResult
  $Res call({NoParams params});
}

/// @nodoc
class _$TicketsEventCopyWithImpl<$Res, $Val extends TicketsEvent>
    implements $TicketsEventCopyWith<$Res> {
  _$TicketsEventCopyWithImpl(this._value, this._then);

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
              as NoParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketsEventCalledImplCopyWith<$Res>
    implements $TicketsEventCopyWith<$Res> {
  factory _$$TicketsEventCalledImplCopyWith(_$TicketsEventCalledImpl value,
          $Res Function(_$TicketsEventCalledImpl) then) =
      __$$TicketsEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoParams params});
}

/// @nodoc
class __$$TicketsEventCalledImplCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$TicketsEventCalledImpl>
    implements _$$TicketsEventCalledImplCopyWith<$Res> {
  __$$TicketsEventCalledImplCopyWithImpl(_$TicketsEventCalledImpl _value,
      $Res Function(_$TicketsEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$TicketsEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as NoParams,
    ));
  }
}

/// @nodoc

class _$TicketsEventCalledImpl implements _TicketsEventCalled {
  const _$TicketsEventCalledImpl(this.params);

  @override
  final NoParams params;

  @override
  String toString() {
    return 'TicketsEvent.ticketsEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsEventCalledImplCopyWith<_$TicketsEventCalledImpl> get copyWith =>
      __$$TicketsEventCalledImplCopyWithImpl<_$TicketsEventCalledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoParams params) ticketsEventCalled,
  }) {
    return ticketsEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoParams params)? ticketsEventCalled,
  }) {
    return ticketsEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoParams params)? ticketsEventCalled,
    required TResult orElse(),
  }) {
    if (ticketsEventCalled != null) {
      return ticketsEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketsEventCalled value) ticketsEventCalled,
  }) {
    return ticketsEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsEventCalled value)? ticketsEventCalled,
  }) {
    return ticketsEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsEventCalled value)? ticketsEventCalled,
    required TResult orElse(),
  }) {
    if (ticketsEventCalled != null) {
      return ticketsEventCalled(this);
    }
    return orElse();
  }
}

abstract class _TicketsEventCalled implements TicketsEvent {
  const factory _TicketsEventCalled(final NoParams params) =
      _$TicketsEventCalledImpl;

  @override
  NoParams get params;
  @override
  @JsonKey(ignore: true)
  _$$TicketsEventCalledImplCopyWith<_$TicketsEventCalledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(TicketsResponseEntities ticketsResponseEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(TicketsResponseEntities ticketsResponseEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(TicketsResponseEntities ticketsResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketsInitial value) initial,
    required TResult Function(_TicketsLoadFailure value) loadFailure,
    required TResult Function(TicketsLoading value) loading,
    required TResult Function(_TicketsLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsInitial value)? initial,
    TResult? Function(_TicketsLoadFailure value)? loadFailure,
    TResult? Function(TicketsLoading value)? loading,
    TResult? Function(_TicketsLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsInitial value)? initial,
    TResult Function(_TicketsLoadFailure value)? loadFailure,
    TResult Function(TicketsLoading value)? loading,
    TResult Function(_TicketsLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsStateCopyWith<$Res> {
  factory $TicketsStateCopyWith(
          TicketsState value, $Res Function(TicketsState) then) =
      _$TicketsStateCopyWithImpl<$Res, TicketsState>;
}

/// @nodoc
class _$TicketsStateCopyWithImpl<$Res, $Val extends TicketsState>
    implements $TicketsStateCopyWith<$Res> {
  _$TicketsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TicketsInitialImplCopyWith<$Res> {
  factory _$$TicketsInitialImplCopyWith(_$TicketsInitialImpl value,
          $Res Function(_$TicketsInitialImpl) then) =
      __$$TicketsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketsInitialImplCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$TicketsInitialImpl>
    implements _$$TicketsInitialImplCopyWith<$Res> {
  __$$TicketsInitialImplCopyWithImpl(
      _$TicketsInitialImpl _value, $Res Function(_$TicketsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketsInitialImpl implements _TicketsInitial {
  const _$TicketsInitialImpl();

  @override
  String toString() {
    return 'TicketsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TicketsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(TicketsResponseEntities ticketsResponseEntities)
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
    TResult? Function(TicketsResponseEntities ticketsResponseEntities)?
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
    TResult Function(TicketsResponseEntities ticketsResponseEntities)?
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
    required TResult Function(_TicketsInitial value) initial,
    required TResult Function(_TicketsLoadFailure value) loadFailure,
    required TResult Function(TicketsLoading value) loading,
    required TResult Function(_TicketsLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsInitial value)? initial,
    TResult? Function(_TicketsLoadFailure value)? loadFailure,
    TResult? Function(TicketsLoading value)? loading,
    TResult? Function(_TicketsLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsInitial value)? initial,
    TResult Function(_TicketsLoadFailure value)? loadFailure,
    TResult Function(TicketsLoading value)? loading,
    TResult Function(_TicketsLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TicketsInitial implements TicketsState {
  const factory _TicketsInitial() = _$TicketsInitialImpl;
}

/// @nodoc
abstract class _$$TicketsLoadFailureImplCopyWith<$Res> {
  factory _$$TicketsLoadFailureImplCopyWith(_$TicketsLoadFailureImpl value,
          $Res Function(_$TicketsLoadFailureImpl) then) =
      __$$TicketsLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$TicketsLoadFailureImplCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$TicketsLoadFailureImpl>
    implements _$$TicketsLoadFailureImplCopyWith<$Res> {
  __$$TicketsLoadFailureImplCopyWithImpl(_$TicketsLoadFailureImpl _value,
      $Res Function(_$TicketsLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$TicketsLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$TicketsLoadFailureImpl implements _TicketsLoadFailure {
  const _$TicketsLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'TicketsState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsLoadFailureImplCopyWith<_$TicketsLoadFailureImpl> get copyWith =>
      __$$TicketsLoadFailureImplCopyWithImpl<_$TicketsLoadFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(TicketsResponseEntities ticketsResponseEntities)
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
    TResult? Function(TicketsResponseEntities ticketsResponseEntities)?
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
    TResult Function(TicketsResponseEntities ticketsResponseEntities)?
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
    required TResult Function(_TicketsInitial value) initial,
    required TResult Function(_TicketsLoadFailure value) loadFailure,
    required TResult Function(TicketsLoading value) loading,
    required TResult Function(_TicketsLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsInitial value)? initial,
    TResult? Function(_TicketsLoadFailure value)? loadFailure,
    TResult? Function(TicketsLoading value)? loading,
    TResult? Function(_TicketsLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsInitial value)? initial,
    TResult Function(_TicketsLoadFailure value)? loadFailure,
    TResult Function(TicketsLoading value)? loading,
    TResult Function(_TicketsLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _TicketsLoadFailure implements TicketsState {
  const factory _TicketsLoadFailure(final Failure failure) =
      _$TicketsLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$TicketsLoadFailureImplCopyWith<_$TicketsLoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketsLoadingImplCopyWith<$Res> {
  factory _$$TicketsLoadingImplCopyWith(_$TicketsLoadingImpl value,
          $Res Function(_$TicketsLoadingImpl) then) =
      __$$TicketsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketsLoadingImplCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$TicketsLoadingImpl>
    implements _$$TicketsLoadingImplCopyWith<$Res> {
  __$$TicketsLoadingImplCopyWithImpl(
      _$TicketsLoadingImpl _value, $Res Function(_$TicketsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketsLoadingImpl implements TicketsLoading {
  const _$TicketsLoadingImpl();

  @override
  String toString() {
    return 'TicketsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TicketsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(TicketsResponseEntities ticketsResponseEntities)
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
    TResult? Function(TicketsResponseEntities ticketsResponseEntities)?
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
    TResult Function(TicketsResponseEntities ticketsResponseEntities)?
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
    required TResult Function(_TicketsInitial value) initial,
    required TResult Function(_TicketsLoadFailure value) loadFailure,
    required TResult Function(TicketsLoading value) loading,
    required TResult Function(_TicketsLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsInitial value)? initial,
    TResult? Function(_TicketsLoadFailure value)? loadFailure,
    TResult? Function(TicketsLoading value)? loading,
    TResult? Function(_TicketsLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsInitial value)? initial,
    TResult Function(_TicketsLoadFailure value)? loadFailure,
    TResult Function(TicketsLoading value)? loading,
    TResult Function(_TicketsLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TicketsLoading implements TicketsState {
  const factory TicketsLoading() = _$TicketsLoadingImpl;
}

/// @nodoc
abstract class _$$TicketsLoadSuccessImplCopyWith<$Res> {
  factory _$$TicketsLoadSuccessImplCopyWith(_$TicketsLoadSuccessImpl value,
          $Res Function(_$TicketsLoadSuccessImpl) then) =
      __$$TicketsLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketsResponseEntities ticketsResponseEntities});
}

/// @nodoc
class __$$TicketsLoadSuccessImplCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$TicketsLoadSuccessImpl>
    implements _$$TicketsLoadSuccessImplCopyWith<$Res> {
  __$$TicketsLoadSuccessImplCopyWithImpl(_$TicketsLoadSuccessImpl _value,
      $Res Function(_$TicketsLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketsResponseEntities = null,
  }) {
    return _then(_$TicketsLoadSuccessImpl(
      null == ticketsResponseEntities
          ? _value.ticketsResponseEntities
          : ticketsResponseEntities // ignore: cast_nullable_to_non_nullable
              as TicketsResponseEntities,
    ));
  }
}

/// @nodoc

class _$TicketsLoadSuccessImpl implements _TicketsLoadSuccess {
  const _$TicketsLoadSuccessImpl(this.ticketsResponseEntities);

  @override
  final TicketsResponseEntities ticketsResponseEntities;

  @override
  String toString() {
    return 'TicketsState.loadSuccess(ticketsResponseEntities: $ticketsResponseEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsLoadSuccessImpl &&
            (identical(
                    other.ticketsResponseEntities, ticketsResponseEntities) ||
                other.ticketsResponseEntities == ticketsResponseEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticketsResponseEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsLoadSuccessImplCopyWith<_$TicketsLoadSuccessImpl> get copyWith =>
      __$$TicketsLoadSuccessImplCopyWithImpl<_$TicketsLoadSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(TicketsResponseEntities ticketsResponseEntities)
        loadSuccess,
  }) {
    return loadSuccess(ticketsResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(TicketsResponseEntities ticketsResponseEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(ticketsResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(TicketsResponseEntities ticketsResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(ticketsResponseEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketsInitial value) initial,
    required TResult Function(_TicketsLoadFailure value) loadFailure,
    required TResult Function(TicketsLoading value) loading,
    required TResult Function(_TicketsLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsInitial value)? initial,
    TResult? Function(_TicketsLoadFailure value)? loadFailure,
    TResult? Function(TicketsLoading value)? loading,
    TResult? Function(_TicketsLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsInitial value)? initial,
    TResult Function(_TicketsLoadFailure value)? loadFailure,
    TResult Function(TicketsLoading value)? loading,
    TResult Function(_TicketsLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _TicketsLoadSuccess implements TicketsState {
  const factory _TicketsLoadSuccess(
          final TicketsResponseEntities ticketsResponseEntities) =
      _$TicketsLoadSuccessImpl;

  TicketsResponseEntities get ticketsResponseEntities;
  @JsonKey(ignore: true)
  _$$TicketsLoadSuccessImplCopyWith<_$TicketsLoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
