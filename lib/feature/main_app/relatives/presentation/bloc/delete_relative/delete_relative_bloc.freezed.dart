// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_relative_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteRelativeEvent {
  DeleteRelativeParam get deleteRelativeParam =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeleteRelativeParam deleteRelativeParam)
        deleteRelativeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeleteRelativeParam deleteRelativeParam)?
        deleteRelativeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeleteRelativeParam deleteRelativeParam)?
        deleteRelativeEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteRelativeEventCalled value)
        deleteRelativeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteRelativeEventCalled value)?
        deleteRelativeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteRelativeEventCalled value)?
        deleteRelativeEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteRelativeEventCopyWith<DeleteRelativeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteRelativeEventCopyWith<$Res> {
  factory $DeleteRelativeEventCopyWith(
          DeleteRelativeEvent value, $Res Function(DeleteRelativeEvent) then) =
      _$DeleteRelativeEventCopyWithImpl<$Res, DeleteRelativeEvent>;
  @useResult
  $Res call({DeleteRelativeParam deleteRelativeParam});
}

/// @nodoc
class _$DeleteRelativeEventCopyWithImpl<$Res, $Val extends DeleteRelativeEvent>
    implements $DeleteRelativeEventCopyWith<$Res> {
  _$DeleteRelativeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteRelativeParam = null,
  }) {
    return _then(_value.copyWith(
      deleteRelativeParam: null == deleteRelativeParam
          ? _value.deleteRelativeParam
          : deleteRelativeParam // ignore: cast_nullable_to_non_nullable
              as DeleteRelativeParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteRelativeEventCalledImplCopyWith<$Res>
    implements $DeleteRelativeEventCopyWith<$Res> {
  factory _$$DeleteRelativeEventCalledImplCopyWith(
          _$DeleteRelativeEventCalledImpl value,
          $Res Function(_$DeleteRelativeEventCalledImpl) then) =
      __$$DeleteRelativeEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeleteRelativeParam deleteRelativeParam});
}

/// @nodoc
class __$$DeleteRelativeEventCalledImplCopyWithImpl<$Res>
    extends _$DeleteRelativeEventCopyWithImpl<$Res,
        _$DeleteRelativeEventCalledImpl>
    implements _$$DeleteRelativeEventCalledImplCopyWith<$Res> {
  __$$DeleteRelativeEventCalledImplCopyWithImpl(
      _$DeleteRelativeEventCalledImpl _value,
      $Res Function(_$DeleteRelativeEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteRelativeParam = null,
  }) {
    return _then(_$DeleteRelativeEventCalledImpl(
      deleteRelativeParam: null == deleteRelativeParam
          ? _value.deleteRelativeParam
          : deleteRelativeParam // ignore: cast_nullable_to_non_nullable
              as DeleteRelativeParam,
    ));
  }
}

/// @nodoc

class _$DeleteRelativeEventCalledImpl implements _DeleteRelativeEventCalled {
  const _$DeleteRelativeEventCalledImpl({required this.deleteRelativeParam});

  @override
  final DeleteRelativeParam deleteRelativeParam;

  @override
  String toString() {
    return 'DeleteRelativeEvent.deleteRelativeEventCalled(deleteRelativeParam: $deleteRelativeParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRelativeEventCalledImpl &&
            (identical(other.deleteRelativeParam, deleteRelativeParam) ||
                other.deleteRelativeParam == deleteRelativeParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deleteRelativeParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRelativeEventCalledImplCopyWith<_$DeleteRelativeEventCalledImpl>
      get copyWith => __$$DeleteRelativeEventCalledImplCopyWithImpl<
          _$DeleteRelativeEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeleteRelativeParam deleteRelativeParam)
        deleteRelativeEventCalled,
  }) {
    return deleteRelativeEventCalled(deleteRelativeParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeleteRelativeParam deleteRelativeParam)?
        deleteRelativeEventCalled,
  }) {
    return deleteRelativeEventCalled?.call(deleteRelativeParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeleteRelativeParam deleteRelativeParam)?
        deleteRelativeEventCalled,
    required TResult orElse(),
  }) {
    if (deleteRelativeEventCalled != null) {
      return deleteRelativeEventCalled(deleteRelativeParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteRelativeEventCalled value)
        deleteRelativeEventCalled,
  }) {
    return deleteRelativeEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteRelativeEventCalled value)?
        deleteRelativeEventCalled,
  }) {
    return deleteRelativeEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteRelativeEventCalled value)?
        deleteRelativeEventCalled,
    required TResult orElse(),
  }) {
    if (deleteRelativeEventCalled != null) {
      return deleteRelativeEventCalled(this);
    }
    return orElse();
  }
}

abstract class _DeleteRelativeEventCalled implements DeleteRelativeEvent {
  const factory _DeleteRelativeEventCalled(
          {required final DeleteRelativeParam deleteRelativeParam}) =
      _$DeleteRelativeEventCalledImpl;

  @override
  DeleteRelativeParam get deleteRelativeParam;
  @override
  @JsonKey(ignore: true)
  _$$DeleteRelativeEventCalledImplCopyWith<_$DeleteRelativeEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteRelativeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DeleteRelativeEntities deleteRelativeEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(DeleteRelativeEntities deleteRelativeEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(DeleteRelativeEntities deleteRelativeEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteRelativeStateInitial value) initial,
    required TResult Function(_DeleteRelativeStateLoadFailure value)
        loadFailure,
    required TResult Function(DeleteRelativeStateLoading value) loading,
    required TResult Function(_DeleteRelativeStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteRelativeStateInitial value)? initial,
    TResult? Function(_DeleteRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(DeleteRelativeStateLoading value)? loading,
    TResult? Function(_DeleteRelativeStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteRelativeStateInitial value)? initial,
    TResult Function(_DeleteRelativeStateLoadFailure value)? loadFailure,
    TResult Function(DeleteRelativeStateLoading value)? loading,
    TResult Function(_DeleteRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteRelativeStateCopyWith<$Res> {
  factory $DeleteRelativeStateCopyWith(
          DeleteRelativeState value, $Res Function(DeleteRelativeState) then) =
      _$DeleteRelativeStateCopyWithImpl<$Res, DeleteRelativeState>;
}

/// @nodoc
class _$DeleteRelativeStateCopyWithImpl<$Res, $Val extends DeleteRelativeState>
    implements $DeleteRelativeStateCopyWith<$Res> {
  _$DeleteRelativeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteRelativeStateInitialImplCopyWith<$Res> {
  factory _$$DeleteRelativeStateInitialImplCopyWith(
          _$DeleteRelativeStateInitialImpl value,
          $Res Function(_$DeleteRelativeStateInitialImpl) then) =
      __$$DeleteRelativeStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteRelativeStateInitialImplCopyWithImpl<$Res>
    extends _$DeleteRelativeStateCopyWithImpl<$Res,
        _$DeleteRelativeStateInitialImpl>
    implements _$$DeleteRelativeStateInitialImplCopyWith<$Res> {
  __$$DeleteRelativeStateInitialImplCopyWithImpl(
      _$DeleteRelativeStateInitialImpl _value,
      $Res Function(_$DeleteRelativeStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteRelativeStateInitialImpl implements _DeleteRelativeStateInitial {
  const _$DeleteRelativeStateInitialImpl();

  @override
  String toString() {
    return 'DeleteRelativeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRelativeStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DeleteRelativeEntities deleteRelativeEntities)
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
    TResult? Function(DeleteRelativeEntities deleteRelativeEntities)?
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
    TResult Function(DeleteRelativeEntities deleteRelativeEntities)?
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
    required TResult Function(_DeleteRelativeStateInitial value) initial,
    required TResult Function(_DeleteRelativeStateLoadFailure value)
        loadFailure,
    required TResult Function(DeleteRelativeStateLoading value) loading,
    required TResult Function(_DeleteRelativeStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteRelativeStateInitial value)? initial,
    TResult? Function(_DeleteRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(DeleteRelativeStateLoading value)? loading,
    TResult? Function(_DeleteRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteRelativeStateInitial value)? initial,
    TResult Function(_DeleteRelativeStateLoadFailure value)? loadFailure,
    TResult Function(DeleteRelativeStateLoading value)? loading,
    TResult Function(_DeleteRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DeleteRelativeStateInitial implements DeleteRelativeState {
  const factory _DeleteRelativeStateInitial() =
      _$DeleteRelativeStateInitialImpl;
}

/// @nodoc
abstract class _$$DeleteRelativeStateLoadFailureImplCopyWith<$Res> {
  factory _$$DeleteRelativeStateLoadFailureImplCopyWith(
          _$DeleteRelativeStateLoadFailureImpl value,
          $Res Function(_$DeleteRelativeStateLoadFailureImpl) then) =
      __$$DeleteRelativeStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$DeleteRelativeStateLoadFailureImplCopyWithImpl<$Res>
    extends _$DeleteRelativeStateCopyWithImpl<$Res,
        _$DeleteRelativeStateLoadFailureImpl>
    implements _$$DeleteRelativeStateLoadFailureImplCopyWith<$Res> {
  __$$DeleteRelativeStateLoadFailureImplCopyWithImpl(
      _$DeleteRelativeStateLoadFailureImpl _value,
      $Res Function(_$DeleteRelativeStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$DeleteRelativeStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$DeleteRelativeStateLoadFailureImpl
    implements _DeleteRelativeStateLoadFailure {
  const _$DeleteRelativeStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'DeleteRelativeState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRelativeStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRelativeStateLoadFailureImplCopyWith<
          _$DeleteRelativeStateLoadFailureImpl>
      get copyWith => __$$DeleteRelativeStateLoadFailureImplCopyWithImpl<
          _$DeleteRelativeStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DeleteRelativeEntities deleteRelativeEntities)
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
    TResult? Function(DeleteRelativeEntities deleteRelativeEntities)?
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
    TResult Function(DeleteRelativeEntities deleteRelativeEntities)?
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
    required TResult Function(_DeleteRelativeStateInitial value) initial,
    required TResult Function(_DeleteRelativeStateLoadFailure value)
        loadFailure,
    required TResult Function(DeleteRelativeStateLoading value) loading,
    required TResult Function(_DeleteRelativeStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteRelativeStateInitial value)? initial,
    TResult? Function(_DeleteRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(DeleteRelativeStateLoading value)? loading,
    TResult? Function(_DeleteRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteRelativeStateInitial value)? initial,
    TResult Function(_DeleteRelativeStateLoadFailure value)? loadFailure,
    TResult Function(DeleteRelativeStateLoading value)? loading,
    TResult Function(_DeleteRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteRelativeStateLoadFailure implements DeleteRelativeState {
  const factory _DeleteRelativeStateLoadFailure(final Failure failure) =
      _$DeleteRelativeStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$DeleteRelativeStateLoadFailureImplCopyWith<
          _$DeleteRelativeStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteRelativeStateLoadingImplCopyWith<$Res> {
  factory _$$DeleteRelativeStateLoadingImplCopyWith(
          _$DeleteRelativeStateLoadingImpl value,
          $Res Function(_$DeleteRelativeStateLoadingImpl) then) =
      __$$DeleteRelativeStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteRelativeStateLoadingImplCopyWithImpl<$Res>
    extends _$DeleteRelativeStateCopyWithImpl<$Res,
        _$DeleteRelativeStateLoadingImpl>
    implements _$$DeleteRelativeStateLoadingImplCopyWith<$Res> {
  __$$DeleteRelativeStateLoadingImplCopyWithImpl(
      _$DeleteRelativeStateLoadingImpl _value,
      $Res Function(_$DeleteRelativeStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteRelativeStateLoadingImpl implements DeleteRelativeStateLoading {
  const _$DeleteRelativeStateLoadingImpl();

  @override
  String toString() {
    return 'DeleteRelativeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRelativeStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DeleteRelativeEntities deleteRelativeEntities)
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
    TResult? Function(DeleteRelativeEntities deleteRelativeEntities)?
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
    TResult Function(DeleteRelativeEntities deleteRelativeEntities)?
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
    required TResult Function(_DeleteRelativeStateInitial value) initial,
    required TResult Function(_DeleteRelativeStateLoadFailure value)
        loadFailure,
    required TResult Function(DeleteRelativeStateLoading value) loading,
    required TResult Function(_DeleteRelativeStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteRelativeStateInitial value)? initial,
    TResult? Function(_DeleteRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(DeleteRelativeStateLoading value)? loading,
    TResult? Function(_DeleteRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteRelativeStateInitial value)? initial,
    TResult Function(_DeleteRelativeStateLoadFailure value)? loadFailure,
    TResult Function(DeleteRelativeStateLoading value)? loading,
    TResult Function(_DeleteRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DeleteRelativeStateLoading implements DeleteRelativeState {
  const factory DeleteRelativeStateLoading() = _$DeleteRelativeStateLoadingImpl;
}

/// @nodoc
abstract class _$$DeleteRelativeStateLoadSuccessImplCopyWith<$Res> {
  factory _$$DeleteRelativeStateLoadSuccessImplCopyWith(
          _$DeleteRelativeStateLoadSuccessImpl value,
          $Res Function(_$DeleteRelativeStateLoadSuccessImpl) then) =
      __$$DeleteRelativeStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteRelativeEntities deleteRelativeEntities});
}

/// @nodoc
class __$$DeleteRelativeStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$DeleteRelativeStateCopyWithImpl<$Res,
        _$DeleteRelativeStateLoadSuccessImpl>
    implements _$$DeleteRelativeStateLoadSuccessImplCopyWith<$Res> {
  __$$DeleteRelativeStateLoadSuccessImplCopyWithImpl(
      _$DeleteRelativeStateLoadSuccessImpl _value,
      $Res Function(_$DeleteRelativeStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteRelativeEntities = null,
  }) {
    return _then(_$DeleteRelativeStateLoadSuccessImpl(
      null == deleteRelativeEntities
          ? _value.deleteRelativeEntities
          : deleteRelativeEntities // ignore: cast_nullable_to_non_nullable
              as DeleteRelativeEntities,
    ));
  }
}

/// @nodoc

class _$DeleteRelativeStateLoadSuccessImpl
    implements _DeleteRelativeStateLoadSuccess {
  const _$DeleteRelativeStateLoadSuccessImpl(this.deleteRelativeEntities);

  @override
  final DeleteRelativeEntities deleteRelativeEntities;

  @override
  String toString() {
    return 'DeleteRelativeState.loadSuccess(deleteRelativeEntities: $deleteRelativeEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRelativeStateLoadSuccessImpl &&
            (identical(other.deleteRelativeEntities, deleteRelativeEntities) ||
                other.deleteRelativeEntities == deleteRelativeEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deleteRelativeEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRelativeStateLoadSuccessImplCopyWith<
          _$DeleteRelativeStateLoadSuccessImpl>
      get copyWith => __$$DeleteRelativeStateLoadSuccessImplCopyWithImpl<
          _$DeleteRelativeStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DeleteRelativeEntities deleteRelativeEntities)
        loadSuccess,
  }) {
    return loadSuccess(deleteRelativeEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(DeleteRelativeEntities deleteRelativeEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(deleteRelativeEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(DeleteRelativeEntities deleteRelativeEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(deleteRelativeEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteRelativeStateInitial value) initial,
    required TResult Function(_DeleteRelativeStateLoadFailure value)
        loadFailure,
    required TResult Function(DeleteRelativeStateLoading value) loading,
    required TResult Function(_DeleteRelativeStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteRelativeStateInitial value)? initial,
    TResult? Function(_DeleteRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(DeleteRelativeStateLoading value)? loading,
    TResult? Function(_DeleteRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteRelativeStateInitial value)? initial,
    TResult Function(_DeleteRelativeStateLoadFailure value)? loadFailure,
    TResult Function(DeleteRelativeStateLoading value)? loading,
    TResult Function(_DeleteRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteRelativeStateLoadSuccess implements DeleteRelativeState {
  const factory _DeleteRelativeStateLoadSuccess(
          final DeleteRelativeEntities deleteRelativeEntities) =
      _$DeleteRelativeStateLoadSuccessImpl;

  DeleteRelativeEntities get deleteRelativeEntities;
  @JsonKey(ignore: true)
  _$$DeleteRelativeStateLoadSuccessImplCopyWith<
          _$DeleteRelativeStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
