// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoveCardEvent {
  RemoveCardParam get removeCardParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoveCardParam removeCardParam)
        removeCardEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RemoveCardParam removeCardParam)? removeCardEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoveCardParam removeCardParam)? removeCardEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveCardEventCalled value)
        removeCardEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveCardEventCalled value)? removeCardEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveCardEventCalled value)? removeCardEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoveCardEventCopyWith<RemoveCardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveCardEventCopyWith<$Res> {
  factory $RemoveCardEventCopyWith(
          RemoveCardEvent value, $Res Function(RemoveCardEvent) then) =
      _$RemoveCardEventCopyWithImpl<$Res, RemoveCardEvent>;
  @useResult
  $Res call({RemoveCardParam removeCardParam});
}

/// @nodoc
class _$RemoveCardEventCopyWithImpl<$Res, $Val extends RemoveCardEvent>
    implements $RemoveCardEventCopyWith<$Res> {
  _$RemoveCardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? removeCardParam = null,
  }) {
    return _then(_value.copyWith(
      removeCardParam: null == removeCardParam
          ? _value.removeCardParam
          : removeCardParam // ignore: cast_nullable_to_non_nullable
              as RemoveCardParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoveCardEventCalledImplCopyWith<$Res>
    implements $RemoveCardEventCopyWith<$Res> {
  factory _$$RemoveCardEventCalledImplCopyWith(
          _$RemoveCardEventCalledImpl value,
          $Res Function(_$RemoveCardEventCalledImpl) then) =
      __$$RemoveCardEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RemoveCardParam removeCardParam});
}

/// @nodoc
class __$$RemoveCardEventCalledImplCopyWithImpl<$Res>
    extends _$RemoveCardEventCopyWithImpl<$Res, _$RemoveCardEventCalledImpl>
    implements _$$RemoveCardEventCalledImplCopyWith<$Res> {
  __$$RemoveCardEventCalledImplCopyWithImpl(_$RemoveCardEventCalledImpl _value,
      $Res Function(_$RemoveCardEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? removeCardParam = null,
  }) {
    return _then(_$RemoveCardEventCalledImpl(
      removeCardParam: null == removeCardParam
          ? _value.removeCardParam
          : removeCardParam // ignore: cast_nullable_to_non_nullable
              as RemoveCardParam,
    ));
  }
}

/// @nodoc

class _$RemoveCardEventCalledImpl implements _RemoveCardEventCalled {
  const _$RemoveCardEventCalledImpl({required this.removeCardParam});

  @override
  final RemoveCardParam removeCardParam;

  @override
  String toString() {
    return 'RemoveCardEvent.removeCardEventCalled(removeCardParam: $removeCardParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCardEventCalledImpl &&
            (identical(other.removeCardParam, removeCardParam) ||
                other.removeCardParam == removeCardParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, removeCardParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCardEventCalledImplCopyWith<_$RemoveCardEventCalledImpl>
      get copyWith => __$$RemoveCardEventCalledImplCopyWithImpl<
          _$RemoveCardEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoveCardParam removeCardParam)
        removeCardEventCalled,
  }) {
    return removeCardEventCalled(removeCardParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RemoveCardParam removeCardParam)? removeCardEventCalled,
  }) {
    return removeCardEventCalled?.call(removeCardParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoveCardParam removeCardParam)? removeCardEventCalled,
    required TResult orElse(),
  }) {
    if (removeCardEventCalled != null) {
      return removeCardEventCalled(removeCardParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveCardEventCalled value)
        removeCardEventCalled,
  }) {
    return removeCardEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveCardEventCalled value)? removeCardEventCalled,
  }) {
    return removeCardEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveCardEventCalled value)? removeCardEventCalled,
    required TResult orElse(),
  }) {
    if (removeCardEventCalled != null) {
      return removeCardEventCalled(this);
    }
    return orElse();
  }
}

abstract class _RemoveCardEventCalled implements RemoveCardEvent {
  const factory _RemoveCardEventCalled(
          {required final RemoveCardParam removeCardParam}) =
      _$RemoveCardEventCalledImpl;

  @override
  RemoveCardParam get removeCardParam;
  @override
  @JsonKey(ignore: true)
  _$$RemoveCardEventCalledImplCopyWith<_$RemoveCardEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoveCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(RemoveCardEntities removeCardEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(RemoveCardEntities removeCardEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(RemoveCardEntities removeCardEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveCardStateInitial value) initial,
    required TResult Function(_RemoveCardStateLoadFailure value) loadFailure,
    required TResult Function(RemoveCardStateLoading value) loading,
    required TResult Function(_RemoveCardStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveCardStateInitial value)? initial,
    TResult? Function(_RemoveCardStateLoadFailure value)? loadFailure,
    TResult? Function(RemoveCardStateLoading value)? loading,
    TResult? Function(_RemoveCardStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveCardStateInitial value)? initial,
    TResult Function(_RemoveCardStateLoadFailure value)? loadFailure,
    TResult Function(RemoveCardStateLoading value)? loading,
    TResult Function(_RemoveCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveCardStateCopyWith<$Res> {
  factory $RemoveCardStateCopyWith(
          RemoveCardState value, $Res Function(RemoveCardState) then) =
      _$RemoveCardStateCopyWithImpl<$Res, RemoveCardState>;
}

/// @nodoc
class _$RemoveCardStateCopyWithImpl<$Res, $Val extends RemoveCardState>
    implements $RemoveCardStateCopyWith<$Res> {
  _$RemoveCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RemoveCardStateInitialImplCopyWith<$Res> {
  factory _$$RemoveCardStateInitialImplCopyWith(
          _$RemoveCardStateInitialImpl value,
          $Res Function(_$RemoveCardStateInitialImpl) then) =
      __$$RemoveCardStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveCardStateInitialImplCopyWithImpl<$Res>
    extends _$RemoveCardStateCopyWithImpl<$Res, _$RemoveCardStateInitialImpl>
    implements _$$RemoveCardStateInitialImplCopyWith<$Res> {
  __$$RemoveCardStateInitialImplCopyWithImpl(
      _$RemoveCardStateInitialImpl _value,
      $Res Function(_$RemoveCardStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveCardStateInitialImpl implements _RemoveCardStateInitial {
  const _$RemoveCardStateInitialImpl();

  @override
  String toString() {
    return 'RemoveCardState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCardStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(RemoveCardEntities removeCardEntities)
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
    TResult? Function(RemoveCardEntities removeCardEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(RemoveCardEntities removeCardEntities)? loadSuccess,
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
    required TResult Function(_RemoveCardStateInitial value) initial,
    required TResult Function(_RemoveCardStateLoadFailure value) loadFailure,
    required TResult Function(RemoveCardStateLoading value) loading,
    required TResult Function(_RemoveCardStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveCardStateInitial value)? initial,
    TResult? Function(_RemoveCardStateLoadFailure value)? loadFailure,
    TResult? Function(RemoveCardStateLoading value)? loading,
    TResult? Function(_RemoveCardStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveCardStateInitial value)? initial,
    TResult Function(_RemoveCardStateLoadFailure value)? loadFailure,
    TResult Function(RemoveCardStateLoading value)? loading,
    TResult Function(_RemoveCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RemoveCardStateInitial implements RemoveCardState {
  const factory _RemoveCardStateInitial() = _$RemoveCardStateInitialImpl;
}

/// @nodoc
abstract class _$$RemoveCardStateLoadFailureImplCopyWith<$Res> {
  factory _$$RemoveCardStateLoadFailureImplCopyWith(
          _$RemoveCardStateLoadFailureImpl value,
          $Res Function(_$RemoveCardStateLoadFailureImpl) then) =
      __$$RemoveCardStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$RemoveCardStateLoadFailureImplCopyWithImpl<$Res>
    extends _$RemoveCardStateCopyWithImpl<$Res,
        _$RemoveCardStateLoadFailureImpl>
    implements _$$RemoveCardStateLoadFailureImplCopyWith<$Res> {
  __$$RemoveCardStateLoadFailureImplCopyWithImpl(
      _$RemoveCardStateLoadFailureImpl _value,
      $Res Function(_$RemoveCardStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$RemoveCardStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$RemoveCardStateLoadFailureImpl implements _RemoveCardStateLoadFailure {
  const _$RemoveCardStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'RemoveCardState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCardStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCardStateLoadFailureImplCopyWith<_$RemoveCardStateLoadFailureImpl>
      get copyWith => __$$RemoveCardStateLoadFailureImplCopyWithImpl<
          _$RemoveCardStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(RemoveCardEntities removeCardEntities)
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
    TResult? Function(RemoveCardEntities removeCardEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(RemoveCardEntities removeCardEntities)? loadSuccess,
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
    required TResult Function(_RemoveCardStateInitial value) initial,
    required TResult Function(_RemoveCardStateLoadFailure value) loadFailure,
    required TResult Function(RemoveCardStateLoading value) loading,
    required TResult Function(_RemoveCardStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveCardStateInitial value)? initial,
    TResult? Function(_RemoveCardStateLoadFailure value)? loadFailure,
    TResult? Function(RemoveCardStateLoading value)? loading,
    TResult? Function(_RemoveCardStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveCardStateInitial value)? initial,
    TResult Function(_RemoveCardStateLoadFailure value)? loadFailure,
    TResult Function(RemoveCardStateLoading value)? loading,
    TResult Function(_RemoveCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _RemoveCardStateLoadFailure implements RemoveCardState {
  const factory _RemoveCardStateLoadFailure(final Failure failure) =
      _$RemoveCardStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$RemoveCardStateLoadFailureImplCopyWith<_$RemoveCardStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCardStateLoadingImplCopyWith<$Res> {
  factory _$$RemoveCardStateLoadingImplCopyWith(
          _$RemoveCardStateLoadingImpl value,
          $Res Function(_$RemoveCardStateLoadingImpl) then) =
      __$$RemoveCardStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveCardStateLoadingImplCopyWithImpl<$Res>
    extends _$RemoveCardStateCopyWithImpl<$Res, _$RemoveCardStateLoadingImpl>
    implements _$$RemoveCardStateLoadingImplCopyWith<$Res> {
  __$$RemoveCardStateLoadingImplCopyWithImpl(
      _$RemoveCardStateLoadingImpl _value,
      $Res Function(_$RemoveCardStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveCardStateLoadingImpl implements RemoveCardStateLoading {
  const _$RemoveCardStateLoadingImpl();

  @override
  String toString() {
    return 'RemoveCardState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCardStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(RemoveCardEntities removeCardEntities)
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
    TResult? Function(RemoveCardEntities removeCardEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(RemoveCardEntities removeCardEntities)? loadSuccess,
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
    required TResult Function(_RemoveCardStateInitial value) initial,
    required TResult Function(_RemoveCardStateLoadFailure value) loadFailure,
    required TResult Function(RemoveCardStateLoading value) loading,
    required TResult Function(_RemoveCardStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveCardStateInitial value)? initial,
    TResult? Function(_RemoveCardStateLoadFailure value)? loadFailure,
    TResult? Function(RemoveCardStateLoading value)? loading,
    TResult? Function(_RemoveCardStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveCardStateInitial value)? initial,
    TResult Function(_RemoveCardStateLoadFailure value)? loadFailure,
    TResult Function(RemoveCardStateLoading value)? loading,
    TResult Function(_RemoveCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RemoveCardStateLoading implements RemoveCardState {
  const factory RemoveCardStateLoading() = _$RemoveCardStateLoadingImpl;
}

/// @nodoc
abstract class _$$RemoveCardStateLoadSuccessImplCopyWith<$Res> {
  factory _$$RemoveCardStateLoadSuccessImplCopyWith(
          _$RemoveCardStateLoadSuccessImpl value,
          $Res Function(_$RemoveCardStateLoadSuccessImpl) then) =
      __$$RemoveCardStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoveCardEntities removeCardEntities});
}

/// @nodoc
class __$$RemoveCardStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$RemoveCardStateCopyWithImpl<$Res,
        _$RemoveCardStateLoadSuccessImpl>
    implements _$$RemoveCardStateLoadSuccessImplCopyWith<$Res> {
  __$$RemoveCardStateLoadSuccessImplCopyWithImpl(
      _$RemoveCardStateLoadSuccessImpl _value,
      $Res Function(_$RemoveCardStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? removeCardEntities = null,
  }) {
    return _then(_$RemoveCardStateLoadSuccessImpl(
      null == removeCardEntities
          ? _value.removeCardEntities
          : removeCardEntities // ignore: cast_nullable_to_non_nullable
              as RemoveCardEntities,
    ));
  }
}

/// @nodoc

class _$RemoveCardStateLoadSuccessImpl implements _RemoveCardStateLoadSuccess {
  const _$RemoveCardStateLoadSuccessImpl(this.removeCardEntities);

  @override
  final RemoveCardEntities removeCardEntities;

  @override
  String toString() {
    return 'RemoveCardState.loadSuccess(removeCardEntities: $removeCardEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCardStateLoadSuccessImpl &&
            (identical(other.removeCardEntities, removeCardEntities) ||
                other.removeCardEntities == removeCardEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, removeCardEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCardStateLoadSuccessImplCopyWith<_$RemoveCardStateLoadSuccessImpl>
      get copyWith => __$$RemoveCardStateLoadSuccessImplCopyWithImpl<
          _$RemoveCardStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(RemoveCardEntities removeCardEntities)
        loadSuccess,
  }) {
    return loadSuccess(removeCardEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(RemoveCardEntities removeCardEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(removeCardEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(RemoveCardEntities removeCardEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(removeCardEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveCardStateInitial value) initial,
    required TResult Function(_RemoveCardStateLoadFailure value) loadFailure,
    required TResult Function(RemoveCardStateLoading value) loading,
    required TResult Function(_RemoveCardStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveCardStateInitial value)? initial,
    TResult? Function(_RemoveCardStateLoadFailure value)? loadFailure,
    TResult? Function(RemoveCardStateLoading value)? loading,
    TResult? Function(_RemoveCardStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveCardStateInitial value)? initial,
    TResult Function(_RemoveCardStateLoadFailure value)? loadFailure,
    TResult Function(RemoveCardStateLoading value)? loading,
    TResult Function(_RemoveCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _RemoveCardStateLoadSuccess implements RemoveCardState {
  const factory _RemoveCardStateLoadSuccess(
          final RemoveCardEntities removeCardEntities) =
      _$RemoveCardStateLoadSuccessImpl;

  RemoveCardEntities get removeCardEntities;
  @JsonKey(ignore: true)
  _$$RemoveCardStateLoadSuccessImplCopyWith<_$RemoveCardStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
