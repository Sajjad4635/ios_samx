// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_relative_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddRelativeEvent {
  AddRelativeParam get addRelativeParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddRelativeParam addRelativeParam)
        addRelativeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddRelativeParam addRelativeParam)?
        addRelativeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddRelativeParam addRelativeParam)? addRelativeEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRelativeEventCalled value)
        addRelativeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRelativeEventCalled value)? addRelativeEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRelativeEventCalled value)? addRelativeEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddRelativeEventCopyWith<AddRelativeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddRelativeEventCopyWith<$Res> {
  factory $AddRelativeEventCopyWith(
          AddRelativeEvent value, $Res Function(AddRelativeEvent) then) =
      _$AddRelativeEventCopyWithImpl<$Res, AddRelativeEvent>;
  @useResult
  $Res call({AddRelativeParam addRelativeParam});
}

/// @nodoc
class _$AddRelativeEventCopyWithImpl<$Res, $Val extends AddRelativeEvent>
    implements $AddRelativeEventCopyWith<$Res> {
  _$AddRelativeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addRelativeParam = null,
  }) {
    return _then(_value.copyWith(
      addRelativeParam: null == addRelativeParam
          ? _value.addRelativeParam
          : addRelativeParam // ignore: cast_nullable_to_non_nullable
              as AddRelativeParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddRelativeEventCalledImplCopyWith<$Res>
    implements $AddRelativeEventCopyWith<$Res> {
  factory _$$AddRelativeEventCalledImplCopyWith(
          _$AddRelativeEventCalledImpl value,
          $Res Function(_$AddRelativeEventCalledImpl) then) =
      __$$AddRelativeEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddRelativeParam addRelativeParam});
}

/// @nodoc
class __$$AddRelativeEventCalledImplCopyWithImpl<$Res>
    extends _$AddRelativeEventCopyWithImpl<$Res, _$AddRelativeEventCalledImpl>
    implements _$$AddRelativeEventCalledImplCopyWith<$Res> {
  __$$AddRelativeEventCalledImplCopyWithImpl(
      _$AddRelativeEventCalledImpl _value,
      $Res Function(_$AddRelativeEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addRelativeParam = null,
  }) {
    return _then(_$AddRelativeEventCalledImpl(
      addRelativeParam: null == addRelativeParam
          ? _value.addRelativeParam
          : addRelativeParam // ignore: cast_nullable_to_non_nullable
              as AddRelativeParam,
    ));
  }
}

/// @nodoc

class _$AddRelativeEventCalledImpl implements _AddRelativeEventCalled {
  const _$AddRelativeEventCalledImpl({required this.addRelativeParam});

  @override
  final AddRelativeParam addRelativeParam;

  @override
  String toString() {
    return 'AddRelativeEvent.addRelativeEventCalled(addRelativeParam: $addRelativeParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRelativeEventCalledImpl &&
            (identical(other.addRelativeParam, addRelativeParam) ||
                other.addRelativeParam == addRelativeParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addRelativeParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRelativeEventCalledImplCopyWith<_$AddRelativeEventCalledImpl>
      get copyWith => __$$AddRelativeEventCalledImplCopyWithImpl<
          _$AddRelativeEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddRelativeParam addRelativeParam)
        addRelativeEventCalled,
  }) {
    return addRelativeEventCalled(addRelativeParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddRelativeParam addRelativeParam)?
        addRelativeEventCalled,
  }) {
    return addRelativeEventCalled?.call(addRelativeParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddRelativeParam addRelativeParam)? addRelativeEventCalled,
    required TResult orElse(),
  }) {
    if (addRelativeEventCalled != null) {
      return addRelativeEventCalled(addRelativeParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRelativeEventCalled value)
        addRelativeEventCalled,
  }) {
    return addRelativeEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRelativeEventCalled value)? addRelativeEventCalled,
  }) {
    return addRelativeEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRelativeEventCalled value)? addRelativeEventCalled,
    required TResult orElse(),
  }) {
    if (addRelativeEventCalled != null) {
      return addRelativeEventCalled(this);
    }
    return orElse();
  }
}

abstract class _AddRelativeEventCalled implements AddRelativeEvent {
  const factory _AddRelativeEventCalled(
          {required final AddRelativeParam addRelativeParam}) =
      _$AddRelativeEventCalledImpl;

  @override
  AddRelativeParam get addRelativeParam;
  @override
  @JsonKey(ignore: true)
  _$$AddRelativeEventCalledImplCopyWith<_$AddRelativeEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddRelativeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AddRelativeEntities relativeListEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(AddRelativeEntities relativeListEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AddRelativeEntities relativeListEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRelativeStateInitial value) initial,
    required TResult Function(_AddRelativeStateLoadFailure value) loadFailure,
    required TResult Function(AddRelativeStateLoading value) loading,
    required TResult Function(_AddRelativeStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRelativeStateInitial value)? initial,
    TResult? Function(_AddRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(AddRelativeStateLoading value)? loading,
    TResult? Function(_AddRelativeStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRelativeStateInitial value)? initial,
    TResult Function(_AddRelativeStateLoadFailure value)? loadFailure,
    TResult Function(AddRelativeStateLoading value)? loading,
    TResult Function(_AddRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddRelativeStateCopyWith<$Res> {
  factory $AddRelativeStateCopyWith(
          AddRelativeState value, $Res Function(AddRelativeState) then) =
      _$AddRelativeStateCopyWithImpl<$Res, AddRelativeState>;
}

/// @nodoc
class _$AddRelativeStateCopyWithImpl<$Res, $Val extends AddRelativeState>
    implements $AddRelativeStateCopyWith<$Res> {
  _$AddRelativeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddRelativeStateInitialImplCopyWith<$Res> {
  factory _$$AddRelativeStateInitialImplCopyWith(
          _$AddRelativeStateInitialImpl value,
          $Res Function(_$AddRelativeStateInitialImpl) then) =
      __$$AddRelativeStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddRelativeStateInitialImplCopyWithImpl<$Res>
    extends _$AddRelativeStateCopyWithImpl<$Res, _$AddRelativeStateInitialImpl>
    implements _$$AddRelativeStateInitialImplCopyWith<$Res> {
  __$$AddRelativeStateInitialImplCopyWithImpl(
      _$AddRelativeStateInitialImpl _value,
      $Res Function(_$AddRelativeStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddRelativeStateInitialImpl implements _AddRelativeStateInitial {
  const _$AddRelativeStateInitialImpl();

  @override
  String toString() {
    return 'AddRelativeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRelativeStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AddRelativeEntities relativeListEntities)
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
    TResult? Function(AddRelativeEntities relativeListEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AddRelativeEntities relativeListEntities)? loadSuccess,
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
    required TResult Function(_AddRelativeStateInitial value) initial,
    required TResult Function(_AddRelativeStateLoadFailure value) loadFailure,
    required TResult Function(AddRelativeStateLoading value) loading,
    required TResult Function(_AddRelativeStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRelativeStateInitial value)? initial,
    TResult? Function(_AddRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(AddRelativeStateLoading value)? loading,
    TResult? Function(_AddRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRelativeStateInitial value)? initial,
    TResult Function(_AddRelativeStateLoadFailure value)? loadFailure,
    TResult Function(AddRelativeStateLoading value)? loading,
    TResult Function(_AddRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AddRelativeStateInitial implements AddRelativeState {
  const factory _AddRelativeStateInitial() = _$AddRelativeStateInitialImpl;
}

/// @nodoc
abstract class _$$AddRelativeStateLoadFailureImplCopyWith<$Res> {
  factory _$$AddRelativeStateLoadFailureImplCopyWith(
          _$AddRelativeStateLoadFailureImpl value,
          $Res Function(_$AddRelativeStateLoadFailureImpl) then) =
      __$$AddRelativeStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$AddRelativeStateLoadFailureImplCopyWithImpl<$Res>
    extends _$AddRelativeStateCopyWithImpl<$Res,
        _$AddRelativeStateLoadFailureImpl>
    implements _$$AddRelativeStateLoadFailureImplCopyWith<$Res> {
  __$$AddRelativeStateLoadFailureImplCopyWithImpl(
      _$AddRelativeStateLoadFailureImpl _value,
      $Res Function(_$AddRelativeStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$AddRelativeStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AddRelativeStateLoadFailureImpl
    implements _AddRelativeStateLoadFailure {
  const _$AddRelativeStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AddRelativeState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRelativeStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRelativeStateLoadFailureImplCopyWith<_$AddRelativeStateLoadFailureImpl>
      get copyWith => __$$AddRelativeStateLoadFailureImplCopyWithImpl<
          _$AddRelativeStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AddRelativeEntities relativeListEntities)
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
    TResult? Function(AddRelativeEntities relativeListEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AddRelativeEntities relativeListEntities)? loadSuccess,
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
    required TResult Function(_AddRelativeStateInitial value) initial,
    required TResult Function(_AddRelativeStateLoadFailure value) loadFailure,
    required TResult Function(AddRelativeStateLoading value) loading,
    required TResult Function(_AddRelativeStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRelativeStateInitial value)? initial,
    TResult? Function(_AddRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(AddRelativeStateLoading value)? loading,
    TResult? Function(_AddRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRelativeStateInitial value)? initial,
    TResult Function(_AddRelativeStateLoadFailure value)? loadFailure,
    TResult Function(AddRelativeStateLoading value)? loading,
    TResult Function(_AddRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _AddRelativeStateLoadFailure implements AddRelativeState {
  const factory _AddRelativeStateLoadFailure(final Failure failure) =
      _$AddRelativeStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$AddRelativeStateLoadFailureImplCopyWith<_$AddRelativeStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddRelativeStateLoadingImplCopyWith<$Res> {
  factory _$$AddRelativeStateLoadingImplCopyWith(
          _$AddRelativeStateLoadingImpl value,
          $Res Function(_$AddRelativeStateLoadingImpl) then) =
      __$$AddRelativeStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddRelativeStateLoadingImplCopyWithImpl<$Res>
    extends _$AddRelativeStateCopyWithImpl<$Res, _$AddRelativeStateLoadingImpl>
    implements _$$AddRelativeStateLoadingImplCopyWith<$Res> {
  __$$AddRelativeStateLoadingImplCopyWithImpl(
      _$AddRelativeStateLoadingImpl _value,
      $Res Function(_$AddRelativeStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddRelativeStateLoadingImpl implements AddRelativeStateLoading {
  const _$AddRelativeStateLoadingImpl();

  @override
  String toString() {
    return 'AddRelativeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRelativeStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AddRelativeEntities relativeListEntities)
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
    TResult? Function(AddRelativeEntities relativeListEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AddRelativeEntities relativeListEntities)? loadSuccess,
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
    required TResult Function(_AddRelativeStateInitial value) initial,
    required TResult Function(_AddRelativeStateLoadFailure value) loadFailure,
    required TResult Function(AddRelativeStateLoading value) loading,
    required TResult Function(_AddRelativeStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRelativeStateInitial value)? initial,
    TResult? Function(_AddRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(AddRelativeStateLoading value)? loading,
    TResult? Function(_AddRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRelativeStateInitial value)? initial,
    TResult Function(_AddRelativeStateLoadFailure value)? loadFailure,
    TResult Function(AddRelativeStateLoading value)? loading,
    TResult Function(_AddRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AddRelativeStateLoading implements AddRelativeState {
  const factory AddRelativeStateLoading() = _$AddRelativeStateLoadingImpl;
}

/// @nodoc
abstract class _$$AddRelativeStateLoadSuccessImplCopyWith<$Res> {
  factory _$$AddRelativeStateLoadSuccessImplCopyWith(
          _$AddRelativeStateLoadSuccessImpl value,
          $Res Function(_$AddRelativeStateLoadSuccessImpl) then) =
      __$$AddRelativeStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddRelativeEntities relativeListEntities});
}

/// @nodoc
class __$$AddRelativeStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$AddRelativeStateCopyWithImpl<$Res,
        _$AddRelativeStateLoadSuccessImpl>
    implements _$$AddRelativeStateLoadSuccessImplCopyWith<$Res> {
  __$$AddRelativeStateLoadSuccessImplCopyWithImpl(
      _$AddRelativeStateLoadSuccessImpl _value,
      $Res Function(_$AddRelativeStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relativeListEntities = null,
  }) {
    return _then(_$AddRelativeStateLoadSuccessImpl(
      null == relativeListEntities
          ? _value.relativeListEntities
          : relativeListEntities // ignore: cast_nullable_to_non_nullable
              as AddRelativeEntities,
    ));
  }
}

/// @nodoc

class _$AddRelativeStateLoadSuccessImpl
    implements _AddRelativeStateLoadSuccess {
  const _$AddRelativeStateLoadSuccessImpl(this.relativeListEntities);

  @override
  final AddRelativeEntities relativeListEntities;

  @override
  String toString() {
    return 'AddRelativeState.loadSuccess(relativeListEntities: $relativeListEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRelativeStateLoadSuccessImpl &&
            (identical(other.relativeListEntities, relativeListEntities) ||
                other.relativeListEntities == relativeListEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relativeListEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRelativeStateLoadSuccessImplCopyWith<_$AddRelativeStateLoadSuccessImpl>
      get copyWith => __$$AddRelativeStateLoadSuccessImplCopyWithImpl<
          _$AddRelativeStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AddRelativeEntities relativeListEntities)
        loadSuccess,
  }) {
    return loadSuccess(relativeListEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(AddRelativeEntities relativeListEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(relativeListEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AddRelativeEntities relativeListEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(relativeListEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRelativeStateInitial value) initial,
    required TResult Function(_AddRelativeStateLoadFailure value) loadFailure,
    required TResult Function(AddRelativeStateLoading value) loading,
    required TResult Function(_AddRelativeStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRelativeStateInitial value)? initial,
    TResult? Function(_AddRelativeStateLoadFailure value)? loadFailure,
    TResult? Function(AddRelativeStateLoading value)? loading,
    TResult? Function(_AddRelativeStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRelativeStateInitial value)? initial,
    TResult Function(_AddRelativeStateLoadFailure value)? loadFailure,
    TResult Function(AddRelativeStateLoading value)? loading,
    TResult Function(_AddRelativeStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddRelativeStateLoadSuccess implements AddRelativeState {
  const factory _AddRelativeStateLoadSuccess(
          final AddRelativeEntities relativeListEntities) =
      _$AddRelativeStateLoadSuccessImpl;

  AddRelativeEntities get relativeListEntities;
  @JsonKey(ignore: true)
  _$$AddRelativeStateLoadSuccessImplCopyWith<_$AddRelativeStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
