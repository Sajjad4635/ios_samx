// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_passport_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdatePassportEvent {
  UpdatePassportParam get updatePassportParam =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdatePassportParam updatePassportParam)
        updatePassportEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdatePassportParam updatePassportParam)?
        updatePassportEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdatePassportParam updatePassportParam)?
        updatePassportEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatePassportEventCalled value)
        updatePassportEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatePassportEventCalled value)?
        updatePassportEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatePassportEventCalled value)?
        updatePassportEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdatePassportEventCopyWith<UpdatePassportEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePassportEventCopyWith<$Res> {
  factory $UpdatePassportEventCopyWith(
          UpdatePassportEvent value, $Res Function(UpdatePassportEvent) then) =
      _$UpdatePassportEventCopyWithImpl<$Res, UpdatePassportEvent>;
  @useResult
  $Res call({UpdatePassportParam updatePassportParam});
}

/// @nodoc
class _$UpdatePassportEventCopyWithImpl<$Res, $Val extends UpdatePassportEvent>
    implements $UpdatePassportEventCopyWith<$Res> {
  _$UpdatePassportEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatePassportParam = null,
  }) {
    return _then(_value.copyWith(
      updatePassportParam: null == updatePassportParam
          ? _value.updatePassportParam
          : updatePassportParam // ignore: cast_nullable_to_non_nullable
              as UpdatePassportParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePassportEventCalledImplCopyWith<$Res>
    implements $UpdatePassportEventCopyWith<$Res> {
  factory _$$UpdatePassportEventCalledImplCopyWith(
          _$UpdatePassportEventCalledImpl value,
          $Res Function(_$UpdatePassportEventCalledImpl) then) =
      __$$UpdatePassportEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UpdatePassportParam updatePassportParam});
}

/// @nodoc
class __$$UpdatePassportEventCalledImplCopyWithImpl<$Res>
    extends _$UpdatePassportEventCopyWithImpl<$Res,
        _$UpdatePassportEventCalledImpl>
    implements _$$UpdatePassportEventCalledImplCopyWith<$Res> {
  __$$UpdatePassportEventCalledImplCopyWithImpl(
      _$UpdatePassportEventCalledImpl _value,
      $Res Function(_$UpdatePassportEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatePassportParam = null,
  }) {
    return _then(_$UpdatePassportEventCalledImpl(
      updatePassportParam: null == updatePassportParam
          ? _value.updatePassportParam
          : updatePassportParam // ignore: cast_nullable_to_non_nullable
              as UpdatePassportParam,
    ));
  }
}

/// @nodoc

class _$UpdatePassportEventCalledImpl implements _UpdatePassportEventCalled {
  const _$UpdatePassportEventCalledImpl({required this.updatePassportParam});

  @override
  final UpdatePassportParam updatePassportParam;

  @override
  String toString() {
    return 'UpdatePassportEvent.updatePassportEventCalled(updatePassportParam: $updatePassportParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePassportEventCalledImpl &&
            (identical(other.updatePassportParam, updatePassportParam) ||
                other.updatePassportParam == updatePassportParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatePassportParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePassportEventCalledImplCopyWith<_$UpdatePassportEventCalledImpl>
      get copyWith => __$$UpdatePassportEventCalledImplCopyWithImpl<
          _$UpdatePassportEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdatePassportParam updatePassportParam)
        updatePassportEventCalled,
  }) {
    return updatePassportEventCalled(updatePassportParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdatePassportParam updatePassportParam)?
        updatePassportEventCalled,
  }) {
    return updatePassportEventCalled?.call(updatePassportParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdatePassportParam updatePassportParam)?
        updatePassportEventCalled,
    required TResult orElse(),
  }) {
    if (updatePassportEventCalled != null) {
      return updatePassportEventCalled(updatePassportParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatePassportEventCalled value)
        updatePassportEventCalled,
  }) {
    return updatePassportEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatePassportEventCalled value)?
        updatePassportEventCalled,
  }) {
    return updatePassportEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatePassportEventCalled value)?
        updatePassportEventCalled,
    required TResult orElse(),
  }) {
    if (updatePassportEventCalled != null) {
      return updatePassportEventCalled(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassportEventCalled implements UpdatePassportEvent {
  const factory _UpdatePassportEventCalled(
          {required final UpdatePassportParam updatePassportParam}) =
      _$UpdatePassportEventCalledImpl;

  @override
  UpdatePassportParam get updatePassportParam;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePassportEventCalledImplCopyWith<_$UpdatePassportEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdatePassportState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdatePassportEntities updatePassportEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdatePassportEntities updatePassportEntities)?
        loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdatePassportEntities updatePassportEntities)?
        loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatePassportStateInitial value) initial,
    required TResult Function(UpdatePassportStateLoading value) loading,
    required TResult Function(_UpdatePassportStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_UpdatePassportStateLoadFailure value)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatePassportStateInitial value)? initial,
    TResult? Function(UpdatePassportStateLoading value)? loading,
    TResult? Function(_UpdatePassportStateLoadSuccess value)? loadSuccess,
    TResult? Function(_UpdatePassportStateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatePassportStateInitial value)? initial,
    TResult Function(UpdatePassportStateLoading value)? loading,
    TResult Function(_UpdatePassportStateLoadSuccess value)? loadSuccess,
    TResult Function(_UpdatePassportStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePassportStateCopyWith<$Res> {
  factory $UpdatePassportStateCopyWith(
          UpdatePassportState value, $Res Function(UpdatePassportState) then) =
      _$UpdatePassportStateCopyWithImpl<$Res, UpdatePassportState>;
}

/// @nodoc
class _$UpdatePassportStateCopyWithImpl<$Res, $Val extends UpdatePassportState>
    implements $UpdatePassportStateCopyWith<$Res> {
  _$UpdatePassportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdatePassportStateInitialImplCopyWith<$Res> {
  factory _$$UpdatePassportStateInitialImplCopyWith(
          _$UpdatePassportStateInitialImpl value,
          $Res Function(_$UpdatePassportStateInitialImpl) then) =
      __$$UpdatePassportStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatePassportStateInitialImplCopyWithImpl<$Res>
    extends _$UpdatePassportStateCopyWithImpl<$Res,
        _$UpdatePassportStateInitialImpl>
    implements _$$UpdatePassportStateInitialImplCopyWith<$Res> {
  __$$UpdatePassportStateInitialImplCopyWithImpl(
      _$UpdatePassportStateInitialImpl _value,
      $Res Function(_$UpdatePassportStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatePassportStateInitialImpl implements _UpdatePassportStateInitial {
  const _$UpdatePassportStateInitialImpl();

  @override
  String toString() {
    return 'UpdatePassportState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePassportStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdatePassportEntities updatePassportEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdatePassportEntities updatePassportEntities)?
        loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdatePassportEntities updatePassportEntities)?
        loadSuccess,
    TResult Function(Failure failure)? loadFailure,
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
    required TResult Function(_UpdatePassportStateInitial value) initial,
    required TResult Function(UpdatePassportStateLoading value) loading,
    required TResult Function(_UpdatePassportStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_UpdatePassportStateLoadFailure value)
        loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatePassportStateInitial value)? initial,
    TResult? Function(UpdatePassportStateLoading value)? loading,
    TResult? Function(_UpdatePassportStateLoadSuccess value)? loadSuccess,
    TResult? Function(_UpdatePassportStateLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatePassportStateInitial value)? initial,
    TResult Function(UpdatePassportStateLoading value)? loading,
    TResult Function(_UpdatePassportStateLoadSuccess value)? loadSuccess,
    TResult Function(_UpdatePassportStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassportStateInitial implements UpdatePassportState {
  const factory _UpdatePassportStateInitial() =
      _$UpdatePassportStateInitialImpl;
}

/// @nodoc
abstract class _$$UpdatePassportStateLoadingImplCopyWith<$Res> {
  factory _$$UpdatePassportStateLoadingImplCopyWith(
          _$UpdatePassportStateLoadingImpl value,
          $Res Function(_$UpdatePassportStateLoadingImpl) then) =
      __$$UpdatePassportStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatePassportStateLoadingImplCopyWithImpl<$Res>
    extends _$UpdatePassportStateCopyWithImpl<$Res,
        _$UpdatePassportStateLoadingImpl>
    implements _$$UpdatePassportStateLoadingImplCopyWith<$Res> {
  __$$UpdatePassportStateLoadingImplCopyWithImpl(
      _$UpdatePassportStateLoadingImpl _value,
      $Res Function(_$UpdatePassportStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatePassportStateLoadingImpl implements UpdatePassportStateLoading {
  const _$UpdatePassportStateLoadingImpl();

  @override
  String toString() {
    return 'UpdatePassportState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePassportStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdatePassportEntities updatePassportEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdatePassportEntities updatePassportEntities)?
        loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdatePassportEntities updatePassportEntities)?
        loadSuccess,
    TResult Function(Failure failure)? loadFailure,
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
    required TResult Function(_UpdatePassportStateInitial value) initial,
    required TResult Function(UpdatePassportStateLoading value) loading,
    required TResult Function(_UpdatePassportStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_UpdatePassportStateLoadFailure value)
        loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatePassportStateInitial value)? initial,
    TResult? Function(UpdatePassportStateLoading value)? loading,
    TResult? Function(_UpdatePassportStateLoadSuccess value)? loadSuccess,
    TResult? Function(_UpdatePassportStateLoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatePassportStateInitial value)? initial,
    TResult Function(UpdatePassportStateLoading value)? loading,
    TResult Function(_UpdatePassportStateLoadSuccess value)? loadSuccess,
    TResult Function(_UpdatePassportStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UpdatePassportStateLoading implements UpdatePassportState {
  const factory UpdatePassportStateLoading() = _$UpdatePassportStateLoadingImpl;
}

/// @nodoc
abstract class _$$UpdatePassportStateLoadSuccessImplCopyWith<$Res> {
  factory _$$UpdatePassportStateLoadSuccessImplCopyWith(
          _$UpdatePassportStateLoadSuccessImpl value,
          $Res Function(_$UpdatePassportStateLoadSuccessImpl) then) =
      __$$UpdatePassportStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdatePassportEntities updatePassportEntities});
}

/// @nodoc
class __$$UpdatePassportStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$UpdatePassportStateCopyWithImpl<$Res,
        _$UpdatePassportStateLoadSuccessImpl>
    implements _$$UpdatePassportStateLoadSuccessImplCopyWith<$Res> {
  __$$UpdatePassportStateLoadSuccessImplCopyWithImpl(
      _$UpdatePassportStateLoadSuccessImpl _value,
      $Res Function(_$UpdatePassportStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatePassportEntities = null,
  }) {
    return _then(_$UpdatePassportStateLoadSuccessImpl(
      null == updatePassportEntities
          ? _value.updatePassportEntities
          : updatePassportEntities // ignore: cast_nullable_to_non_nullable
              as UpdatePassportEntities,
    ));
  }
}

/// @nodoc

class _$UpdatePassportStateLoadSuccessImpl
    implements _UpdatePassportStateLoadSuccess {
  const _$UpdatePassportStateLoadSuccessImpl(this.updatePassportEntities);

  @override
  final UpdatePassportEntities updatePassportEntities;

  @override
  String toString() {
    return 'UpdatePassportState.loadSuccess(updatePassportEntities: $updatePassportEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePassportStateLoadSuccessImpl &&
            (identical(other.updatePassportEntities, updatePassportEntities) ||
                other.updatePassportEntities == updatePassportEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatePassportEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePassportStateLoadSuccessImplCopyWith<
          _$UpdatePassportStateLoadSuccessImpl>
      get copyWith => __$$UpdatePassportStateLoadSuccessImplCopyWithImpl<
          _$UpdatePassportStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdatePassportEntities updatePassportEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadSuccess(updatePassportEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdatePassportEntities updatePassportEntities)?
        loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadSuccess?.call(updatePassportEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdatePassportEntities updatePassportEntities)?
        loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(updatePassportEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatePassportStateInitial value) initial,
    required TResult Function(UpdatePassportStateLoading value) loading,
    required TResult Function(_UpdatePassportStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_UpdatePassportStateLoadFailure value)
        loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatePassportStateInitial value)? initial,
    TResult? Function(UpdatePassportStateLoading value)? loading,
    TResult? Function(_UpdatePassportStateLoadSuccess value)? loadSuccess,
    TResult? Function(_UpdatePassportStateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatePassportStateInitial value)? initial,
    TResult Function(UpdatePassportStateLoading value)? loading,
    TResult Function(_UpdatePassportStateLoadSuccess value)? loadSuccess,
    TResult Function(_UpdatePassportStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassportStateLoadSuccess implements UpdatePassportState {
  const factory _UpdatePassportStateLoadSuccess(
          final UpdatePassportEntities updatePassportEntities) =
      _$UpdatePassportStateLoadSuccessImpl;

  UpdatePassportEntities get updatePassportEntities;
  @JsonKey(ignore: true)
  _$$UpdatePassportStateLoadSuccessImplCopyWith<
          _$UpdatePassportStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePassportStateLoadFailureImplCopyWith<$Res> {
  factory _$$UpdatePassportStateLoadFailureImplCopyWith(
          _$UpdatePassportStateLoadFailureImpl value,
          $Res Function(_$UpdatePassportStateLoadFailureImpl) then) =
      __$$UpdatePassportStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$UpdatePassportStateLoadFailureImplCopyWithImpl<$Res>
    extends _$UpdatePassportStateCopyWithImpl<$Res,
        _$UpdatePassportStateLoadFailureImpl>
    implements _$$UpdatePassportStateLoadFailureImplCopyWith<$Res> {
  __$$UpdatePassportStateLoadFailureImplCopyWithImpl(
      _$UpdatePassportStateLoadFailureImpl _value,
      $Res Function(_$UpdatePassportStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$UpdatePassportStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$UpdatePassportStateLoadFailureImpl
    implements _UpdatePassportStateLoadFailure {
  const _$UpdatePassportStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'UpdatePassportState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePassportStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePassportStateLoadFailureImplCopyWith<
          _$UpdatePassportStateLoadFailureImpl>
      get copyWith => __$$UpdatePassportStateLoadFailureImplCopyWithImpl<
          _$UpdatePassportStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdatePassportEntities updatePassportEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdatePassportEntities updatePassportEntities)?
        loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdatePassportEntities updatePassportEntities)?
        loadSuccess,
    TResult Function(Failure failure)? loadFailure,
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
    required TResult Function(_UpdatePassportStateInitial value) initial,
    required TResult Function(UpdatePassportStateLoading value) loading,
    required TResult Function(_UpdatePassportStateLoadSuccess value)
        loadSuccess,
    required TResult Function(_UpdatePassportStateLoadFailure value)
        loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatePassportStateInitial value)? initial,
    TResult? Function(UpdatePassportStateLoading value)? loading,
    TResult? Function(_UpdatePassportStateLoadSuccess value)? loadSuccess,
    TResult? Function(_UpdatePassportStateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatePassportStateInitial value)? initial,
    TResult Function(UpdatePassportStateLoading value)? loading,
    TResult Function(_UpdatePassportStateLoadSuccess value)? loadSuccess,
    TResult Function(_UpdatePassportStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassportStateLoadFailure implements UpdatePassportState {
  const factory _UpdatePassportStateLoadFailure(final Failure failure) =
      _$UpdatePassportStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$UpdatePassportStateLoadFailureImplCopyWith<
          _$UpdatePassportStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
