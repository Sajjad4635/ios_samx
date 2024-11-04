// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_vehicle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditVehicleEvent {
  EditVehicleParam get editVehicleParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditVehicleParam editVehicleParam)
        editVehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditVehicleParam editVehicleParam)?
        editVehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditVehicleParam editVehicleParam)? editVehicleEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditVehicleEventCalled value)
        editVehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditVehicleEventCalled value)? editVehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditVehicleEventCalled value)? editVehicleEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditVehicleEventCopyWith<EditVehicleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditVehicleEventCopyWith<$Res> {
  factory $EditVehicleEventCopyWith(
          EditVehicleEvent value, $Res Function(EditVehicleEvent) then) =
      _$EditVehicleEventCopyWithImpl<$Res, EditVehicleEvent>;
  @useResult
  $Res call({EditVehicleParam editVehicleParam});
}

/// @nodoc
class _$EditVehicleEventCopyWithImpl<$Res, $Val extends EditVehicleEvent>
    implements $EditVehicleEventCopyWith<$Res> {
  _$EditVehicleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editVehicleParam = null,
  }) {
    return _then(_value.copyWith(
      editVehicleParam: null == editVehicleParam
          ? _value.editVehicleParam
          : editVehicleParam // ignore: cast_nullable_to_non_nullable
              as EditVehicleParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditVehicleEventCalledImplCopyWith<$Res>
    implements $EditVehicleEventCopyWith<$Res> {
  factory _$$EditVehicleEventCalledImplCopyWith(
          _$EditVehicleEventCalledImpl value,
          $Res Function(_$EditVehicleEventCalledImpl) then) =
      __$$EditVehicleEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditVehicleParam editVehicleParam});
}

/// @nodoc
class __$$EditVehicleEventCalledImplCopyWithImpl<$Res>
    extends _$EditVehicleEventCopyWithImpl<$Res, _$EditVehicleEventCalledImpl>
    implements _$$EditVehicleEventCalledImplCopyWith<$Res> {
  __$$EditVehicleEventCalledImplCopyWithImpl(
      _$EditVehicleEventCalledImpl _value,
      $Res Function(_$EditVehicleEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editVehicleParam = null,
  }) {
    return _then(_$EditVehicleEventCalledImpl(
      editVehicleParam: null == editVehicleParam
          ? _value.editVehicleParam
          : editVehicleParam // ignore: cast_nullable_to_non_nullable
              as EditVehicleParam,
    ));
  }
}

/// @nodoc

class _$EditVehicleEventCalledImpl implements _EditVehicleEventCalled {
  const _$EditVehicleEventCalledImpl({required this.editVehicleParam});

  @override
  final EditVehicleParam editVehicleParam;

  @override
  String toString() {
    return 'EditVehicleEvent.editVehicleEventCalled(editVehicleParam: $editVehicleParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditVehicleEventCalledImpl &&
            (identical(other.editVehicleParam, editVehicleParam) ||
                other.editVehicleParam == editVehicleParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, editVehicleParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditVehicleEventCalledImplCopyWith<_$EditVehicleEventCalledImpl>
      get copyWith => __$$EditVehicleEventCalledImplCopyWithImpl<
          _$EditVehicleEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditVehicleParam editVehicleParam)
        editVehicleEventCalled,
  }) {
    return editVehicleEventCalled(editVehicleParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditVehicleParam editVehicleParam)?
        editVehicleEventCalled,
  }) {
    return editVehicleEventCalled?.call(editVehicleParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditVehicleParam editVehicleParam)? editVehicleEventCalled,
    required TResult orElse(),
  }) {
    if (editVehicleEventCalled != null) {
      return editVehicleEventCalled(editVehicleParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditVehicleEventCalled value)
        editVehicleEventCalled,
  }) {
    return editVehicleEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditVehicleEventCalled value)? editVehicleEventCalled,
  }) {
    return editVehicleEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditVehicleEventCalled value)? editVehicleEventCalled,
    required TResult orElse(),
  }) {
    if (editVehicleEventCalled != null) {
      return editVehicleEventCalled(this);
    }
    return orElse();
  }
}

abstract class _EditVehicleEventCalled implements EditVehicleEvent {
  const factory _EditVehicleEventCalled(
          {required final EditVehicleParam editVehicleParam}) =
      _$EditVehicleEventCalledImpl;

  @override
  EditVehicleParam get editVehicleParam;
  @override
  @JsonKey(ignore: true)
  _$$EditVehicleEventCalledImplCopyWith<_$EditVehicleEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditVehicleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(EditVehicleEntities editVehicleEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(EditVehicleEntities editVehicleEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(EditVehicleEntities editVehicleEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditVehicleStateInitial value) initial,
    required TResult Function(_EditVehicleStateLoadFailure value) loadFailure,
    required TResult Function(EditVehicleStateLoading value) loading,
    required TResult Function(_EditVehicleStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditVehicleStateInitial value)? initial,
    TResult? Function(_EditVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(EditVehicleStateLoading value)? loading,
    TResult? Function(_EditVehicleStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditVehicleStateInitial value)? initial,
    TResult Function(_EditVehicleStateLoadFailure value)? loadFailure,
    TResult Function(EditVehicleStateLoading value)? loading,
    TResult Function(_EditVehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditVehicleStateCopyWith<$Res> {
  factory $EditVehicleStateCopyWith(
          EditVehicleState value, $Res Function(EditVehicleState) then) =
      _$EditVehicleStateCopyWithImpl<$Res, EditVehicleState>;
}

/// @nodoc
class _$EditVehicleStateCopyWithImpl<$Res, $Val extends EditVehicleState>
    implements $EditVehicleStateCopyWith<$Res> {
  _$EditVehicleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditVehicleStateInitialImplCopyWith<$Res> {
  factory _$$EditVehicleStateInitialImplCopyWith(
          _$EditVehicleStateInitialImpl value,
          $Res Function(_$EditVehicleStateInitialImpl) then) =
      __$$EditVehicleStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditVehicleStateInitialImplCopyWithImpl<$Res>
    extends _$EditVehicleStateCopyWithImpl<$Res, _$EditVehicleStateInitialImpl>
    implements _$$EditVehicleStateInitialImplCopyWith<$Res> {
  __$$EditVehicleStateInitialImplCopyWithImpl(
      _$EditVehicleStateInitialImpl _value,
      $Res Function(_$EditVehicleStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditVehicleStateInitialImpl implements _EditVehicleStateInitial {
  const _$EditVehicleStateInitialImpl();

  @override
  String toString() {
    return 'EditVehicleState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditVehicleStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(EditVehicleEntities editVehicleEntities)
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
    TResult? Function(EditVehicleEntities editVehicleEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(EditVehicleEntities editVehicleEntities)? loadSuccess,
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
    required TResult Function(_EditVehicleStateInitial value) initial,
    required TResult Function(_EditVehicleStateLoadFailure value) loadFailure,
    required TResult Function(EditVehicleStateLoading value) loading,
    required TResult Function(_EditVehicleStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditVehicleStateInitial value)? initial,
    TResult? Function(_EditVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(EditVehicleStateLoading value)? loading,
    TResult? Function(_EditVehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditVehicleStateInitial value)? initial,
    TResult Function(_EditVehicleStateLoadFailure value)? loadFailure,
    TResult Function(EditVehicleStateLoading value)? loading,
    TResult Function(_EditVehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _EditVehicleStateInitial implements EditVehicleState {
  const factory _EditVehicleStateInitial() = _$EditVehicleStateInitialImpl;
}

/// @nodoc
abstract class _$$EditVehicleStateLoadFailureImplCopyWith<$Res> {
  factory _$$EditVehicleStateLoadFailureImplCopyWith(
          _$EditVehicleStateLoadFailureImpl value,
          $Res Function(_$EditVehicleStateLoadFailureImpl) then) =
      __$$EditVehicleStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$EditVehicleStateLoadFailureImplCopyWithImpl<$Res>
    extends _$EditVehicleStateCopyWithImpl<$Res,
        _$EditVehicleStateLoadFailureImpl>
    implements _$$EditVehicleStateLoadFailureImplCopyWith<$Res> {
  __$$EditVehicleStateLoadFailureImplCopyWithImpl(
      _$EditVehicleStateLoadFailureImpl _value,
      $Res Function(_$EditVehicleStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$EditVehicleStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$EditVehicleStateLoadFailureImpl
    implements _EditVehicleStateLoadFailure {
  const _$EditVehicleStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'EditVehicleState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditVehicleStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditVehicleStateLoadFailureImplCopyWith<_$EditVehicleStateLoadFailureImpl>
      get copyWith => __$$EditVehicleStateLoadFailureImplCopyWithImpl<
          _$EditVehicleStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(EditVehicleEntities editVehicleEntities)
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
    TResult? Function(EditVehicleEntities editVehicleEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(EditVehicleEntities editVehicleEntities)? loadSuccess,
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
    required TResult Function(_EditVehicleStateInitial value) initial,
    required TResult Function(_EditVehicleStateLoadFailure value) loadFailure,
    required TResult Function(EditVehicleStateLoading value) loading,
    required TResult Function(_EditVehicleStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditVehicleStateInitial value)? initial,
    TResult? Function(_EditVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(EditVehicleStateLoading value)? loading,
    TResult? Function(_EditVehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditVehicleStateInitial value)? initial,
    TResult Function(_EditVehicleStateLoadFailure value)? loadFailure,
    TResult Function(EditVehicleStateLoading value)? loading,
    TResult Function(_EditVehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _EditVehicleStateLoadFailure implements EditVehicleState {
  const factory _EditVehicleStateLoadFailure(final Failure failure) =
      _$EditVehicleStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$EditVehicleStateLoadFailureImplCopyWith<_$EditVehicleStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditVehicleStateLoadingImplCopyWith<$Res> {
  factory _$$EditVehicleStateLoadingImplCopyWith(
          _$EditVehicleStateLoadingImpl value,
          $Res Function(_$EditVehicleStateLoadingImpl) then) =
      __$$EditVehicleStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditVehicleStateLoadingImplCopyWithImpl<$Res>
    extends _$EditVehicleStateCopyWithImpl<$Res, _$EditVehicleStateLoadingImpl>
    implements _$$EditVehicleStateLoadingImplCopyWith<$Res> {
  __$$EditVehicleStateLoadingImplCopyWithImpl(
      _$EditVehicleStateLoadingImpl _value,
      $Res Function(_$EditVehicleStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditVehicleStateLoadingImpl implements EditVehicleStateLoading {
  const _$EditVehicleStateLoadingImpl();

  @override
  String toString() {
    return 'EditVehicleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditVehicleStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(EditVehicleEntities editVehicleEntities)
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
    TResult? Function(EditVehicleEntities editVehicleEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(EditVehicleEntities editVehicleEntities)? loadSuccess,
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
    required TResult Function(_EditVehicleStateInitial value) initial,
    required TResult Function(_EditVehicleStateLoadFailure value) loadFailure,
    required TResult Function(EditVehicleStateLoading value) loading,
    required TResult Function(_EditVehicleStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditVehicleStateInitial value)? initial,
    TResult? Function(_EditVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(EditVehicleStateLoading value)? loading,
    TResult? Function(_EditVehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditVehicleStateInitial value)? initial,
    TResult Function(_EditVehicleStateLoadFailure value)? loadFailure,
    TResult Function(EditVehicleStateLoading value)? loading,
    TResult Function(_EditVehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EditVehicleStateLoading implements EditVehicleState {
  const factory EditVehicleStateLoading() = _$EditVehicleStateLoadingImpl;
}

/// @nodoc
abstract class _$$EditVehicleStateLoadSuccessImplCopyWith<$Res> {
  factory _$$EditVehicleStateLoadSuccessImplCopyWith(
          _$EditVehicleStateLoadSuccessImpl value,
          $Res Function(_$EditVehicleStateLoadSuccessImpl) then) =
      __$$EditVehicleStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EditVehicleEntities editVehicleEntities});
}

/// @nodoc
class __$$EditVehicleStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$EditVehicleStateCopyWithImpl<$Res,
        _$EditVehicleStateLoadSuccessImpl>
    implements _$$EditVehicleStateLoadSuccessImplCopyWith<$Res> {
  __$$EditVehicleStateLoadSuccessImplCopyWithImpl(
      _$EditVehicleStateLoadSuccessImpl _value,
      $Res Function(_$EditVehicleStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editVehicleEntities = null,
  }) {
    return _then(_$EditVehicleStateLoadSuccessImpl(
      null == editVehicleEntities
          ? _value.editVehicleEntities
          : editVehicleEntities // ignore: cast_nullable_to_non_nullable
              as EditVehicleEntities,
    ));
  }
}

/// @nodoc

class _$EditVehicleStateLoadSuccessImpl
    implements _EditVehicleStateLoadSuccess {
  const _$EditVehicleStateLoadSuccessImpl(this.editVehicleEntities);

  @override
  final EditVehicleEntities editVehicleEntities;

  @override
  String toString() {
    return 'EditVehicleState.loadSuccess(editVehicleEntities: $editVehicleEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditVehicleStateLoadSuccessImpl &&
            (identical(other.editVehicleEntities, editVehicleEntities) ||
                other.editVehicleEntities == editVehicleEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, editVehicleEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditVehicleStateLoadSuccessImplCopyWith<_$EditVehicleStateLoadSuccessImpl>
      get copyWith => __$$EditVehicleStateLoadSuccessImplCopyWithImpl<
          _$EditVehicleStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(EditVehicleEntities editVehicleEntities)
        loadSuccess,
  }) {
    return loadSuccess(editVehicleEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(EditVehicleEntities editVehicleEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(editVehicleEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(EditVehicleEntities editVehicleEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(editVehicleEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditVehicleStateInitial value) initial,
    required TResult Function(_EditVehicleStateLoadFailure value) loadFailure,
    required TResult Function(EditVehicleStateLoading value) loading,
    required TResult Function(_EditVehicleStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditVehicleStateInitial value)? initial,
    TResult? Function(_EditVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(EditVehicleStateLoading value)? loading,
    TResult? Function(_EditVehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditVehicleStateInitial value)? initial,
    TResult Function(_EditVehicleStateLoadFailure value)? loadFailure,
    TResult Function(EditVehicleStateLoading value)? loading,
    TResult Function(_EditVehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _EditVehicleStateLoadSuccess implements EditVehicleState {
  const factory _EditVehicleStateLoadSuccess(
          final EditVehicleEntities editVehicleEntities) =
      _$EditVehicleStateLoadSuccessImpl;

  EditVehicleEntities get editVehicleEntities;
  @JsonKey(ignore: true)
  _$$EditVehicleStateLoadSuccessImplCopyWith<_$EditVehicleStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
