// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_relative_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditRelativeEvent {
  EditRelativeParam get editRelativeParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditRelativeParam editRelativeParam)
        editRelativeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditRelativeParam editRelativeParam)?
        editRelativeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditRelativeParam editRelativeParam)?
        editRelativeEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditRelativeEventCalled value)
        editRelativeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditRelativeEventCalled value)? editRelativeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditRelativeEventCalled value)? editRelativeEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditRelativeEventCopyWith<EditRelativeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditRelativeEventCopyWith<$Res> {
  factory $EditRelativeEventCopyWith(
          EditRelativeEvent value, $Res Function(EditRelativeEvent) then) =
      _$EditRelativeEventCopyWithImpl<$Res, EditRelativeEvent>;
  @useResult
  $Res call({EditRelativeParam editRelativeParam});
}

/// @nodoc
class _$EditRelativeEventCopyWithImpl<$Res, $Val extends EditRelativeEvent>
    implements $EditRelativeEventCopyWith<$Res> {
  _$EditRelativeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editRelativeParam = null,
  }) {
    return _then(_value.copyWith(
      editRelativeParam: null == editRelativeParam
          ? _value.editRelativeParam
          : editRelativeParam // ignore: cast_nullable_to_non_nullable
              as EditRelativeParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditRelativeEventCalledImplCopyWith<$Res>
    implements $EditRelativeEventCopyWith<$Res> {
  factory _$$EditRelativeEventCalledImplCopyWith(
          _$EditRelativeEventCalledImpl value,
          $Res Function(_$EditRelativeEventCalledImpl) then) =
      __$$EditRelativeEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditRelativeParam editRelativeParam});
}

/// @nodoc
class __$$EditRelativeEventCalledImplCopyWithImpl<$Res>
    extends _$EditRelativeEventCopyWithImpl<$Res, _$EditRelativeEventCalledImpl>
    implements _$$EditRelativeEventCalledImplCopyWith<$Res> {
  __$$EditRelativeEventCalledImplCopyWithImpl(
      _$EditRelativeEventCalledImpl _value,
      $Res Function(_$EditRelativeEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editRelativeParam = null,
  }) {
    return _then(_$EditRelativeEventCalledImpl(
      editRelativeParam: null == editRelativeParam
          ? _value.editRelativeParam
          : editRelativeParam // ignore: cast_nullable_to_non_nullable
              as EditRelativeParam,
    ));
  }
}

/// @nodoc

class _$EditRelativeEventCalledImpl implements _EditRelativeEventCalled {
  const _$EditRelativeEventCalledImpl({required this.editRelativeParam});

  @override
  final EditRelativeParam editRelativeParam;

  @override
  String toString() {
    return 'EditRelativeEvent.editRelativeEventCalled(editRelativeParam: $editRelativeParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditRelativeEventCalledImpl &&
            (identical(other.editRelativeParam, editRelativeParam) ||
                other.editRelativeParam == editRelativeParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, editRelativeParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditRelativeEventCalledImplCopyWith<_$EditRelativeEventCalledImpl>
      get copyWith => __$$EditRelativeEventCalledImplCopyWithImpl<
          _$EditRelativeEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditRelativeParam editRelativeParam)
        editRelativeEventCalled,
  }) {
    return editRelativeEventCalled(editRelativeParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditRelativeParam editRelativeParam)?
        editRelativeEventCalled,
  }) {
    return editRelativeEventCalled?.call(editRelativeParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditRelativeParam editRelativeParam)?
        editRelativeEventCalled,
    required TResult orElse(),
  }) {
    if (editRelativeEventCalled != null) {
      return editRelativeEventCalled(editRelativeParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditRelativeEventCalled value)
        editRelativeEventCalled,
  }) {
    return editRelativeEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditRelativeEventCalled value)? editRelativeEventCalled,
  }) {
    return editRelativeEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditRelativeEventCalled value)? editRelativeEventCalled,
    required TResult orElse(),
  }) {
    if (editRelativeEventCalled != null) {
      return editRelativeEventCalled(this);
    }
    return orElse();
  }
}

abstract class _EditRelativeEventCalled implements EditRelativeEvent {
  const factory _EditRelativeEventCalled(
          {required final EditRelativeParam editRelativeParam}) =
      _$EditRelativeEventCalledImpl;

  @override
  EditRelativeParam get editRelativeParam;
  @override
  @JsonKey(ignore: true)
  _$$EditRelativeEventCalledImplCopyWith<_$EditRelativeEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditRelativeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(EditRelativeEntities editRelativeEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(EditRelativeEntities editRelativeEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(EditRelativeEntities editRelativeEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditRelativeStateInitial value) initial,
    required TResult Function(_EditRelativeStateLoadFailure value) loadFailure,
    required TResult Function(EditRelativeStateLoading value) loading,
    required TResult Function(_EditRelativeStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditRelativeStateInitial value)? initial,
    TResult? Function(_EditRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(EditRelativeStateLoading value)? loading,
    TResult? Function(_EditRelativeStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditRelativeStateInitial value)? initial,
    TResult Function(_EditRelativeStateLoadFailure value)? loadFailure,
    TResult Function(EditRelativeStateLoading value)? loading,
    TResult Function(_EditRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditRelativeStateCopyWith<$Res> {
  factory $EditRelativeStateCopyWith(
          EditRelativeState value, $Res Function(EditRelativeState) then) =
      _$EditRelativeStateCopyWithImpl<$Res, EditRelativeState>;
}

/// @nodoc
class _$EditRelativeStateCopyWithImpl<$Res, $Val extends EditRelativeState>
    implements $EditRelativeStateCopyWith<$Res> {
  _$EditRelativeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditRelativeStateInitialImplCopyWith<$Res> {
  factory _$$EditRelativeStateInitialImplCopyWith(
          _$EditRelativeStateInitialImpl value,
          $Res Function(_$EditRelativeStateInitialImpl) then) =
      __$$EditRelativeStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditRelativeStateInitialImplCopyWithImpl<$Res>
    extends _$EditRelativeStateCopyWithImpl<$Res,
        _$EditRelativeStateInitialImpl>
    implements _$$EditRelativeStateInitialImplCopyWith<$Res> {
  __$$EditRelativeStateInitialImplCopyWithImpl(
      _$EditRelativeStateInitialImpl _value,
      $Res Function(_$EditRelativeStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditRelativeStateInitialImpl implements _EditRelativeStateInitial {
  const _$EditRelativeStateInitialImpl();

  @override
  String toString() {
    return 'EditRelativeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditRelativeStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(EditRelativeEntities editRelativeEntities)
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
    TResult? Function(EditRelativeEntities editRelativeEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(EditRelativeEntities editRelativeEntities)? loadSuccess,
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
    required TResult Function(_EditRelativeStateInitial value) initial,
    required TResult Function(_EditRelativeStateLoadFailure value) loadFailure,
    required TResult Function(EditRelativeStateLoading value) loading,
    required TResult Function(_EditRelativeStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditRelativeStateInitial value)? initial,
    TResult? Function(_EditRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(EditRelativeStateLoading value)? loading,
    TResult? Function(_EditRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditRelativeStateInitial value)? initial,
    TResult Function(_EditRelativeStateLoadFailure value)? loadFailure,
    TResult Function(EditRelativeStateLoading value)? loading,
    TResult Function(_EditRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _EditRelativeStateInitial implements EditRelativeState {
  const factory _EditRelativeStateInitial() = _$EditRelativeStateInitialImpl;
}

/// @nodoc
abstract class _$$EditRelativeStateLoadFailureImplCopyWith<$Res> {
  factory _$$EditRelativeStateLoadFailureImplCopyWith(
          _$EditRelativeStateLoadFailureImpl value,
          $Res Function(_$EditRelativeStateLoadFailureImpl) then) =
      __$$EditRelativeStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$EditRelativeStateLoadFailureImplCopyWithImpl<$Res>
    extends _$EditRelativeStateCopyWithImpl<$Res,
        _$EditRelativeStateLoadFailureImpl>
    implements _$$EditRelativeStateLoadFailureImplCopyWith<$Res> {
  __$$EditRelativeStateLoadFailureImplCopyWithImpl(
      _$EditRelativeStateLoadFailureImpl _value,
      $Res Function(_$EditRelativeStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$EditRelativeStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$EditRelativeStateLoadFailureImpl
    implements _EditRelativeStateLoadFailure {
  const _$EditRelativeStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'EditRelativeState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditRelativeStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditRelativeStateLoadFailureImplCopyWith<
          _$EditRelativeStateLoadFailureImpl>
      get copyWith => __$$EditRelativeStateLoadFailureImplCopyWithImpl<
          _$EditRelativeStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(EditRelativeEntities editRelativeEntities)
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
    TResult? Function(EditRelativeEntities editRelativeEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(EditRelativeEntities editRelativeEntities)? loadSuccess,
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
    required TResult Function(_EditRelativeStateInitial value) initial,
    required TResult Function(_EditRelativeStateLoadFailure value) loadFailure,
    required TResult Function(EditRelativeStateLoading value) loading,
    required TResult Function(_EditRelativeStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditRelativeStateInitial value)? initial,
    TResult? Function(_EditRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(EditRelativeStateLoading value)? loading,
    TResult? Function(_EditRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditRelativeStateInitial value)? initial,
    TResult Function(_EditRelativeStateLoadFailure value)? loadFailure,
    TResult Function(EditRelativeStateLoading value)? loading,
    TResult Function(_EditRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _EditRelativeStateLoadFailure implements EditRelativeState {
  const factory _EditRelativeStateLoadFailure(final Failure failure) =
      _$EditRelativeStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$EditRelativeStateLoadFailureImplCopyWith<
          _$EditRelativeStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditRelativeStateLoadingImplCopyWith<$Res> {
  factory _$$EditRelativeStateLoadingImplCopyWith(
          _$EditRelativeStateLoadingImpl value,
          $Res Function(_$EditRelativeStateLoadingImpl) then) =
      __$$EditRelativeStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditRelativeStateLoadingImplCopyWithImpl<$Res>
    extends _$EditRelativeStateCopyWithImpl<$Res,
        _$EditRelativeStateLoadingImpl>
    implements _$$EditRelativeStateLoadingImplCopyWith<$Res> {
  __$$EditRelativeStateLoadingImplCopyWithImpl(
      _$EditRelativeStateLoadingImpl _value,
      $Res Function(_$EditRelativeStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditRelativeStateLoadingImpl implements EditRelativeStateLoading {
  const _$EditRelativeStateLoadingImpl();

  @override
  String toString() {
    return 'EditRelativeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditRelativeStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(EditRelativeEntities editRelativeEntities)
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
    TResult? Function(EditRelativeEntities editRelativeEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(EditRelativeEntities editRelativeEntities)? loadSuccess,
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
    required TResult Function(_EditRelativeStateInitial value) initial,
    required TResult Function(_EditRelativeStateLoadFailure value) loadFailure,
    required TResult Function(EditRelativeStateLoading value) loading,
    required TResult Function(_EditRelativeStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditRelativeStateInitial value)? initial,
    TResult? Function(_EditRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(EditRelativeStateLoading value)? loading,
    TResult? Function(_EditRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditRelativeStateInitial value)? initial,
    TResult Function(_EditRelativeStateLoadFailure value)? loadFailure,
    TResult Function(EditRelativeStateLoading value)? loading,
    TResult Function(_EditRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EditRelativeStateLoading implements EditRelativeState {
  const factory EditRelativeStateLoading() = _$EditRelativeStateLoadingImpl;
}

/// @nodoc
abstract class _$$EditRelativeStateLoadSuccessImplCopyWith<$Res> {
  factory _$$EditRelativeStateLoadSuccessImplCopyWith(
          _$EditRelativeStateLoadSuccessImpl value,
          $Res Function(_$EditRelativeStateLoadSuccessImpl) then) =
      __$$EditRelativeStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EditRelativeEntities editRelativeEntities});
}

/// @nodoc
class __$$EditRelativeStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$EditRelativeStateCopyWithImpl<$Res,
        _$EditRelativeStateLoadSuccessImpl>
    implements _$$EditRelativeStateLoadSuccessImplCopyWith<$Res> {
  __$$EditRelativeStateLoadSuccessImplCopyWithImpl(
      _$EditRelativeStateLoadSuccessImpl _value,
      $Res Function(_$EditRelativeStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editRelativeEntities = null,
  }) {
    return _then(_$EditRelativeStateLoadSuccessImpl(
      null == editRelativeEntities
          ? _value.editRelativeEntities
          : editRelativeEntities // ignore: cast_nullable_to_non_nullable
              as EditRelativeEntities,
    ));
  }
}

/// @nodoc

class _$EditRelativeStateLoadSuccessImpl
    implements _EditRelativeStateLoadSuccess {
  const _$EditRelativeStateLoadSuccessImpl(this.editRelativeEntities);

  @override
  final EditRelativeEntities editRelativeEntities;

  @override
  String toString() {
    return 'EditRelativeState.loadSuccess(editRelativeEntities: $editRelativeEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditRelativeStateLoadSuccessImpl &&
            (identical(other.editRelativeEntities, editRelativeEntities) ||
                other.editRelativeEntities == editRelativeEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, editRelativeEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditRelativeStateLoadSuccessImplCopyWith<
          _$EditRelativeStateLoadSuccessImpl>
      get copyWith => __$$EditRelativeStateLoadSuccessImplCopyWithImpl<
          _$EditRelativeStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(EditRelativeEntities editRelativeEntities)
        loadSuccess,
  }) {
    return loadSuccess(editRelativeEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(EditRelativeEntities editRelativeEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(editRelativeEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(EditRelativeEntities editRelativeEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(editRelativeEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditRelativeStateInitial value) initial,
    required TResult Function(_EditRelativeStateLoadFailure value) loadFailure,
    required TResult Function(EditRelativeStateLoading value) loading,
    required TResult Function(_EditRelativeStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditRelativeStateInitial value)? initial,
    TResult? Function(_EditRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(EditRelativeStateLoading value)? loading,
    TResult? Function(_EditRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditRelativeStateInitial value)? initial,
    TResult Function(_EditRelativeStateLoadFailure value)? loadFailure,
    TResult Function(EditRelativeStateLoading value)? loading,
    TResult Function(_EditRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _EditRelativeStateLoadSuccess implements EditRelativeState {
  const factory _EditRelativeStateLoadSuccess(
          final EditRelativeEntities editRelativeEntities) =
      _$EditRelativeStateLoadSuccessImpl;

  EditRelativeEntities get editRelativeEntities;
  @JsonKey(ignore: true)
  _$$EditRelativeStateLoadSuccessImplCopyWith<
          _$EditRelativeStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
