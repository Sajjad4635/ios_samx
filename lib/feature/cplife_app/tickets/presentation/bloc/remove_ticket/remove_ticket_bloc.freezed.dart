// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_ticket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoveTicketEvent {
  RemoveTicketParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoveTicketParam param) removeTicketEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RemoveTicketParam param)? removeTicketEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoveTicketParam param)? removeTicketEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveTicketEventCalled value)
        removeTicketEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveTicketEventCalled value)? removeTicketEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveTicketEventCalled value)? removeTicketEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoveTicketEventCopyWith<RemoveTicketEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveTicketEventCopyWith<$Res> {
  factory $RemoveTicketEventCopyWith(
          RemoveTicketEvent value, $Res Function(RemoveTicketEvent) then) =
      _$RemoveTicketEventCopyWithImpl<$Res, RemoveTicketEvent>;
  @useResult
  $Res call({RemoveTicketParam param});
}

/// @nodoc
class _$RemoveTicketEventCopyWithImpl<$Res, $Val extends RemoveTicketEvent>
    implements $RemoveTicketEventCopyWith<$Res> {
  _$RemoveTicketEventCopyWithImpl(this._value, this._then);

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
              as RemoveTicketParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoveTicketEventCalledImplCopyWith<$Res>
    implements $RemoveTicketEventCopyWith<$Res> {
  factory _$$RemoveTicketEventCalledImplCopyWith(
          _$RemoveTicketEventCalledImpl value,
          $Res Function(_$RemoveTicketEventCalledImpl) then) =
      __$$RemoveTicketEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RemoveTicketParam param});
}

/// @nodoc
class __$$RemoveTicketEventCalledImplCopyWithImpl<$Res>
    extends _$RemoveTicketEventCopyWithImpl<$Res, _$RemoveTicketEventCalledImpl>
    implements _$$RemoveTicketEventCalledImplCopyWith<$Res> {
  __$$RemoveTicketEventCalledImplCopyWithImpl(
      _$RemoveTicketEventCalledImpl _value,
      $Res Function(_$RemoveTicketEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$RemoveTicketEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as RemoveTicketParam,
    ));
  }
}

/// @nodoc

class _$RemoveTicketEventCalledImpl implements _RemoveTicketEventCalled {
  const _$RemoveTicketEventCalledImpl(this.param);

  @override
  final RemoveTicketParam param;

  @override
  String toString() {
    return 'RemoveTicketEvent.removeTicketEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTicketEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTicketEventCalledImplCopyWith<_$RemoveTicketEventCalledImpl>
      get copyWith => __$$RemoveTicketEventCalledImplCopyWithImpl<
          _$RemoveTicketEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoveTicketParam param) removeTicketEventCalled,
  }) {
    return removeTicketEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RemoveTicketParam param)? removeTicketEventCalled,
  }) {
    return removeTicketEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoveTicketParam param)? removeTicketEventCalled,
    required TResult orElse(),
  }) {
    if (removeTicketEventCalled != null) {
      return removeTicketEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveTicketEventCalled value)
        removeTicketEventCalled,
  }) {
    return removeTicketEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveTicketEventCalled value)? removeTicketEventCalled,
  }) {
    return removeTicketEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveTicketEventCalled value)? removeTicketEventCalled,
    required TResult orElse(),
  }) {
    if (removeTicketEventCalled != null) {
      return removeTicketEventCalled(this);
    }
    return orElse();
  }
}

abstract class _RemoveTicketEventCalled implements RemoveTicketEvent {
  const factory _RemoveTicketEventCalled(final RemoveTicketParam param) =
      _$RemoveTicketEventCalledImpl;

  @override
  RemoveTicketParam get param;
  @override
  @JsonKey(ignore: true)
  _$$RemoveTicketEventCalledImplCopyWith<_$RemoveTicketEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoveTicketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(RemoveTicketEntities removeTicketEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(RemoveTicketEntities removeTicketEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(RemoveTicketEntities removeTicketEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveTicketInitial value) initial,
    required TResult Function(_RemoveTicketLoadFailure value) loadFailure,
    required TResult Function(RemoveTicketLoading value) loading,
    required TResult Function(_RemoveTicketLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveTicketInitial value)? initial,
    TResult? Function(_RemoveTicketLoadFailure value)? loadFailure,
    TResult? Function(RemoveTicketLoading value)? loading,
    TResult? Function(_RemoveTicketLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveTicketInitial value)? initial,
    TResult Function(_RemoveTicketLoadFailure value)? loadFailure,
    TResult Function(RemoveTicketLoading value)? loading,
    TResult Function(_RemoveTicketLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveTicketStateCopyWith<$Res> {
  factory $RemoveTicketStateCopyWith(
          RemoveTicketState value, $Res Function(RemoveTicketState) then) =
      _$RemoveTicketStateCopyWithImpl<$Res, RemoveTicketState>;
}

/// @nodoc
class _$RemoveTicketStateCopyWithImpl<$Res, $Val extends RemoveTicketState>
    implements $RemoveTicketStateCopyWith<$Res> {
  _$RemoveTicketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RemoveTicketInitialImplCopyWith<$Res> {
  factory _$$RemoveTicketInitialImplCopyWith(_$RemoveTicketInitialImpl value,
          $Res Function(_$RemoveTicketInitialImpl) then) =
      __$$RemoveTicketInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveTicketInitialImplCopyWithImpl<$Res>
    extends _$RemoveTicketStateCopyWithImpl<$Res, _$RemoveTicketInitialImpl>
    implements _$$RemoveTicketInitialImplCopyWith<$Res> {
  __$$RemoveTicketInitialImplCopyWithImpl(_$RemoveTicketInitialImpl _value,
      $Res Function(_$RemoveTicketInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveTicketInitialImpl implements _RemoveTicketInitial {
  const _$RemoveTicketInitialImpl();

  @override
  String toString() {
    return 'RemoveTicketState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTicketInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(RemoveTicketEntities removeTicketEntities)
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
    TResult? Function(RemoveTicketEntities removeTicketEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(RemoveTicketEntities removeTicketEntities)? loadSuccess,
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
    required TResult Function(_RemoveTicketInitial value) initial,
    required TResult Function(_RemoveTicketLoadFailure value) loadFailure,
    required TResult Function(RemoveTicketLoading value) loading,
    required TResult Function(_RemoveTicketLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveTicketInitial value)? initial,
    TResult? Function(_RemoveTicketLoadFailure value)? loadFailure,
    TResult? Function(RemoveTicketLoading value)? loading,
    TResult? Function(_RemoveTicketLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveTicketInitial value)? initial,
    TResult Function(_RemoveTicketLoadFailure value)? loadFailure,
    TResult Function(RemoveTicketLoading value)? loading,
    TResult Function(_RemoveTicketLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RemoveTicketInitial implements RemoveTicketState {
  const factory _RemoveTicketInitial() = _$RemoveTicketInitialImpl;
}

/// @nodoc
abstract class _$$RemoveTicketLoadFailureImplCopyWith<$Res> {
  factory _$$RemoveTicketLoadFailureImplCopyWith(
          _$RemoveTicketLoadFailureImpl value,
          $Res Function(_$RemoveTicketLoadFailureImpl) then) =
      __$$RemoveTicketLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$RemoveTicketLoadFailureImplCopyWithImpl<$Res>
    extends _$RemoveTicketStateCopyWithImpl<$Res, _$RemoveTicketLoadFailureImpl>
    implements _$$RemoveTicketLoadFailureImplCopyWith<$Res> {
  __$$RemoveTicketLoadFailureImplCopyWithImpl(
      _$RemoveTicketLoadFailureImpl _value,
      $Res Function(_$RemoveTicketLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$RemoveTicketLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$RemoveTicketLoadFailureImpl implements _RemoveTicketLoadFailure {
  const _$RemoveTicketLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'RemoveTicketState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTicketLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTicketLoadFailureImplCopyWith<_$RemoveTicketLoadFailureImpl>
      get copyWith => __$$RemoveTicketLoadFailureImplCopyWithImpl<
          _$RemoveTicketLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(RemoveTicketEntities removeTicketEntities)
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
    TResult? Function(RemoveTicketEntities removeTicketEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(RemoveTicketEntities removeTicketEntities)? loadSuccess,
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
    required TResult Function(_RemoveTicketInitial value) initial,
    required TResult Function(_RemoveTicketLoadFailure value) loadFailure,
    required TResult Function(RemoveTicketLoading value) loading,
    required TResult Function(_RemoveTicketLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveTicketInitial value)? initial,
    TResult? Function(_RemoveTicketLoadFailure value)? loadFailure,
    TResult? Function(RemoveTicketLoading value)? loading,
    TResult? Function(_RemoveTicketLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveTicketInitial value)? initial,
    TResult Function(_RemoveTicketLoadFailure value)? loadFailure,
    TResult Function(RemoveTicketLoading value)? loading,
    TResult Function(_RemoveTicketLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _RemoveTicketLoadFailure implements RemoveTicketState {
  const factory _RemoveTicketLoadFailure(final Failure failure) =
      _$RemoveTicketLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$RemoveTicketLoadFailureImplCopyWith<_$RemoveTicketLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTicketLoadingImplCopyWith<$Res> {
  factory _$$RemoveTicketLoadingImplCopyWith(_$RemoveTicketLoadingImpl value,
          $Res Function(_$RemoveTicketLoadingImpl) then) =
      __$$RemoveTicketLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveTicketLoadingImplCopyWithImpl<$Res>
    extends _$RemoveTicketStateCopyWithImpl<$Res, _$RemoveTicketLoadingImpl>
    implements _$$RemoveTicketLoadingImplCopyWith<$Res> {
  __$$RemoveTicketLoadingImplCopyWithImpl(_$RemoveTicketLoadingImpl _value,
      $Res Function(_$RemoveTicketLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveTicketLoadingImpl implements RemoveTicketLoading {
  const _$RemoveTicketLoadingImpl();

  @override
  String toString() {
    return 'RemoveTicketState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTicketLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(RemoveTicketEntities removeTicketEntities)
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
    TResult? Function(RemoveTicketEntities removeTicketEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(RemoveTicketEntities removeTicketEntities)? loadSuccess,
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
    required TResult Function(_RemoveTicketInitial value) initial,
    required TResult Function(_RemoveTicketLoadFailure value) loadFailure,
    required TResult Function(RemoveTicketLoading value) loading,
    required TResult Function(_RemoveTicketLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveTicketInitial value)? initial,
    TResult? Function(_RemoveTicketLoadFailure value)? loadFailure,
    TResult? Function(RemoveTicketLoading value)? loading,
    TResult? Function(_RemoveTicketLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveTicketInitial value)? initial,
    TResult Function(_RemoveTicketLoadFailure value)? loadFailure,
    TResult Function(RemoveTicketLoading value)? loading,
    TResult Function(_RemoveTicketLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RemoveTicketLoading implements RemoveTicketState {
  const factory RemoveTicketLoading() = _$RemoveTicketLoadingImpl;
}

/// @nodoc
abstract class _$$RemoveTicketLoadSuccessImplCopyWith<$Res> {
  factory _$$RemoveTicketLoadSuccessImplCopyWith(
          _$RemoveTicketLoadSuccessImpl value,
          $Res Function(_$RemoveTicketLoadSuccessImpl) then) =
      __$$RemoveTicketLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoveTicketEntities removeTicketEntities});
}

/// @nodoc
class __$$RemoveTicketLoadSuccessImplCopyWithImpl<$Res>
    extends _$RemoveTicketStateCopyWithImpl<$Res, _$RemoveTicketLoadSuccessImpl>
    implements _$$RemoveTicketLoadSuccessImplCopyWith<$Res> {
  __$$RemoveTicketLoadSuccessImplCopyWithImpl(
      _$RemoveTicketLoadSuccessImpl _value,
      $Res Function(_$RemoveTicketLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? removeTicketEntities = null,
  }) {
    return _then(_$RemoveTicketLoadSuccessImpl(
      null == removeTicketEntities
          ? _value.removeTicketEntities
          : removeTicketEntities // ignore: cast_nullable_to_non_nullable
              as RemoveTicketEntities,
    ));
  }
}

/// @nodoc

class _$RemoveTicketLoadSuccessImpl implements _RemoveTicketLoadSuccess {
  const _$RemoveTicketLoadSuccessImpl(this.removeTicketEntities);

  @override
  final RemoveTicketEntities removeTicketEntities;

  @override
  String toString() {
    return 'RemoveTicketState.loadSuccess(removeTicketEntities: $removeTicketEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTicketLoadSuccessImpl &&
            (identical(other.removeTicketEntities, removeTicketEntities) ||
                other.removeTicketEntities == removeTicketEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, removeTicketEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTicketLoadSuccessImplCopyWith<_$RemoveTicketLoadSuccessImpl>
      get copyWith => __$$RemoveTicketLoadSuccessImplCopyWithImpl<
          _$RemoveTicketLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(RemoveTicketEntities removeTicketEntities)
        loadSuccess,
  }) {
    return loadSuccess(removeTicketEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(RemoveTicketEntities removeTicketEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(removeTicketEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(RemoveTicketEntities removeTicketEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(removeTicketEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveTicketInitial value) initial,
    required TResult Function(_RemoveTicketLoadFailure value) loadFailure,
    required TResult Function(RemoveTicketLoading value) loading,
    required TResult Function(_RemoveTicketLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveTicketInitial value)? initial,
    TResult? Function(_RemoveTicketLoadFailure value)? loadFailure,
    TResult? Function(RemoveTicketLoading value)? loading,
    TResult? Function(_RemoveTicketLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveTicketInitial value)? initial,
    TResult Function(_RemoveTicketLoadFailure value)? loadFailure,
    TResult Function(RemoveTicketLoading value)? loading,
    TResult Function(_RemoveTicketLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _RemoveTicketLoadSuccess implements RemoveTicketState {
  const factory _RemoveTicketLoadSuccess(
          final RemoveTicketEntities removeTicketEntities) =
      _$RemoveTicketLoadSuccessImpl;

  RemoveTicketEntities get removeTicketEntities;
  @JsonKey(ignore: true)
  _$$RemoveTicketLoadSuccessImplCopyWith<_$RemoveTicketLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
