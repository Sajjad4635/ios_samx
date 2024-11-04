// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateUserEvent {
  CreateUserParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateUserParam param) createUserEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateUserParam param)? createUserEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateUserParam param)? createUserEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUserEventCalled value)
        createUserEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUserEventCalled value)? createUserEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUserEventCalled value)? createUserEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateUserEventCopyWith<CreateUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserEventCopyWith<$Res> {
  factory $CreateUserEventCopyWith(
          CreateUserEvent value, $Res Function(CreateUserEvent) then) =
      _$CreateUserEventCopyWithImpl<$Res, CreateUserEvent>;
  @useResult
  $Res call({CreateUserParam param});
}

/// @nodoc
class _$CreateUserEventCopyWithImpl<$Res, $Val extends CreateUserEvent>
    implements $CreateUserEventCopyWith<$Res> {
  _$CreateUserEventCopyWithImpl(this._value, this._then);

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
              as CreateUserParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserEventCalledImplCopyWith<$Res>
    implements $CreateUserEventCopyWith<$Res> {
  factory _$$CreateUserEventCalledImplCopyWith(
          _$CreateUserEventCalledImpl value,
          $Res Function(_$CreateUserEventCalledImpl) then) =
      __$$CreateUserEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateUserParam param});
}

/// @nodoc
class __$$CreateUserEventCalledImplCopyWithImpl<$Res>
    extends _$CreateUserEventCopyWithImpl<$Res, _$CreateUserEventCalledImpl>
    implements _$$CreateUserEventCalledImplCopyWith<$Res> {
  __$$CreateUserEventCalledImplCopyWithImpl(_$CreateUserEventCalledImpl _value,
      $Res Function(_$CreateUserEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$CreateUserEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as CreateUserParam,
    ));
  }
}

/// @nodoc

class _$CreateUserEventCalledImpl implements _CreateUserEventCalled {
  const _$CreateUserEventCalledImpl(this.param);

  @override
  final CreateUserParam param;

  @override
  String toString() {
    return 'CreateUserEvent.createUserEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserEventCalledImplCopyWith<_$CreateUserEventCalledImpl>
      get copyWith => __$$CreateUserEventCalledImplCopyWithImpl<
          _$CreateUserEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateUserParam param) createUserEventCalled,
  }) {
    return createUserEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateUserParam param)? createUserEventCalled,
  }) {
    return createUserEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateUserParam param)? createUserEventCalled,
    required TResult orElse(),
  }) {
    if (createUserEventCalled != null) {
      return createUserEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUserEventCalled value)
        createUserEventCalled,
  }) {
    return createUserEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUserEventCalled value)? createUserEventCalled,
  }) {
    return createUserEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUserEventCalled value)? createUserEventCalled,
    required TResult orElse(),
  }) {
    if (createUserEventCalled != null) {
      return createUserEventCalled(this);
    }
    return orElse();
  }
}

abstract class _CreateUserEventCalled implements CreateUserEvent {
  const factory _CreateUserEventCalled(final CreateUserParam param) =
      _$CreateUserEventCalledImpl;

  @override
  CreateUserParam get param;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserEventCalledImplCopyWith<_$CreateUserEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateUserEntities createUserEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateUserEntities createUserEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateUserEntities createUserEntities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUserStateInitial value) initial,
    required TResult Function(CreateUserStateLoading value) loading,
    required TResult Function(_CreateUserStateLoadSuccess value) loadSuccess,
    required TResult Function(_CreateUserStateLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUserStateInitial value)? initial,
    TResult? Function(CreateUserStateLoading value)? loading,
    TResult? Function(_CreateUserStateLoadSuccess value)? loadSuccess,
    TResult? Function(_CreateUserStateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUserStateInitial value)? initial,
    TResult Function(CreateUserStateLoading value)? loading,
    TResult Function(_CreateUserStateLoadSuccess value)? loadSuccess,
    TResult Function(_CreateUserStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserStateCopyWith<$Res> {
  factory $CreateUserStateCopyWith(
          CreateUserState value, $Res Function(CreateUserState) then) =
      _$CreateUserStateCopyWithImpl<$Res, CreateUserState>;
}

/// @nodoc
class _$CreateUserStateCopyWithImpl<$Res, $Val extends CreateUserState>
    implements $CreateUserStateCopyWith<$Res> {
  _$CreateUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateUserStateInitialImplCopyWith<$Res> {
  factory _$$CreateUserStateInitialImplCopyWith(
          _$CreateUserStateInitialImpl value,
          $Res Function(_$CreateUserStateInitialImpl) then) =
      __$$CreateUserStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateUserStateInitialImplCopyWithImpl<$Res>
    extends _$CreateUserStateCopyWithImpl<$Res, _$CreateUserStateInitialImpl>
    implements _$$CreateUserStateInitialImplCopyWith<$Res> {
  __$$CreateUserStateInitialImplCopyWithImpl(
      _$CreateUserStateInitialImpl _value,
      $Res Function(_$CreateUserStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateUserStateInitialImpl implements _CreateUserStateInitial {
  const _$CreateUserStateInitialImpl();

  @override
  String toString() {
    return 'CreateUserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateUserEntities createUserEntities)
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
    TResult? Function(CreateUserEntities createUserEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateUserEntities createUserEntities)? loadSuccess,
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
    required TResult Function(_CreateUserStateInitial value) initial,
    required TResult Function(CreateUserStateLoading value) loading,
    required TResult Function(_CreateUserStateLoadSuccess value) loadSuccess,
    required TResult Function(_CreateUserStateLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUserStateInitial value)? initial,
    TResult? Function(CreateUserStateLoading value)? loading,
    TResult? Function(_CreateUserStateLoadSuccess value)? loadSuccess,
    TResult? Function(_CreateUserStateLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUserStateInitial value)? initial,
    TResult Function(CreateUserStateLoading value)? loading,
    TResult Function(_CreateUserStateLoadSuccess value)? loadSuccess,
    TResult Function(_CreateUserStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateUserStateInitial implements CreateUserState {
  const factory _CreateUserStateInitial() = _$CreateUserStateInitialImpl;
}

/// @nodoc
abstract class _$$CreateUserStateLoadingImplCopyWith<$Res> {
  factory _$$CreateUserStateLoadingImplCopyWith(
          _$CreateUserStateLoadingImpl value,
          $Res Function(_$CreateUserStateLoadingImpl) then) =
      __$$CreateUserStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateUserStateLoadingImplCopyWithImpl<$Res>
    extends _$CreateUserStateCopyWithImpl<$Res, _$CreateUserStateLoadingImpl>
    implements _$$CreateUserStateLoadingImplCopyWith<$Res> {
  __$$CreateUserStateLoadingImplCopyWithImpl(
      _$CreateUserStateLoadingImpl _value,
      $Res Function(_$CreateUserStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateUserStateLoadingImpl implements CreateUserStateLoading {
  const _$CreateUserStateLoadingImpl();

  @override
  String toString() {
    return 'CreateUserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateUserEntities createUserEntities)
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
    TResult? Function(CreateUserEntities createUserEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateUserEntities createUserEntities)? loadSuccess,
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
    required TResult Function(_CreateUserStateInitial value) initial,
    required TResult Function(CreateUserStateLoading value) loading,
    required TResult Function(_CreateUserStateLoadSuccess value) loadSuccess,
    required TResult Function(_CreateUserStateLoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUserStateInitial value)? initial,
    TResult? Function(CreateUserStateLoading value)? loading,
    TResult? Function(_CreateUserStateLoadSuccess value)? loadSuccess,
    TResult? Function(_CreateUserStateLoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUserStateInitial value)? initial,
    TResult Function(CreateUserStateLoading value)? loading,
    TResult Function(_CreateUserStateLoadSuccess value)? loadSuccess,
    TResult Function(_CreateUserStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateUserStateLoading implements CreateUserState {
  const factory CreateUserStateLoading() = _$CreateUserStateLoadingImpl;
}

/// @nodoc
abstract class _$$CreateUserStateLoadSuccessImplCopyWith<$Res> {
  factory _$$CreateUserStateLoadSuccessImplCopyWith(
          _$CreateUserStateLoadSuccessImpl value,
          $Res Function(_$CreateUserStateLoadSuccessImpl) then) =
      __$$CreateUserStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateUserEntities createUserEntities});
}

/// @nodoc
class __$$CreateUserStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$CreateUserStateCopyWithImpl<$Res,
        _$CreateUserStateLoadSuccessImpl>
    implements _$$CreateUserStateLoadSuccessImplCopyWith<$Res> {
  __$$CreateUserStateLoadSuccessImplCopyWithImpl(
      _$CreateUserStateLoadSuccessImpl _value,
      $Res Function(_$CreateUserStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createUserEntities = null,
  }) {
    return _then(_$CreateUserStateLoadSuccessImpl(
      null == createUserEntities
          ? _value.createUserEntities
          : createUserEntities // ignore: cast_nullable_to_non_nullable
              as CreateUserEntities,
    ));
  }
}

/// @nodoc

class _$CreateUserStateLoadSuccessImpl implements _CreateUserStateLoadSuccess {
  const _$CreateUserStateLoadSuccessImpl(this.createUserEntities);

  @override
  final CreateUserEntities createUserEntities;

  @override
  String toString() {
    return 'CreateUserState.loadSuccess(createUserEntities: $createUserEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserStateLoadSuccessImpl &&
            (identical(other.createUserEntities, createUserEntities) ||
                other.createUserEntities == createUserEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createUserEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserStateLoadSuccessImplCopyWith<_$CreateUserStateLoadSuccessImpl>
      get copyWith => __$$CreateUserStateLoadSuccessImplCopyWithImpl<
          _$CreateUserStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateUserEntities createUserEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadSuccess(createUserEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateUserEntities createUserEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadSuccess?.call(createUserEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateUserEntities createUserEntities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(createUserEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUserStateInitial value) initial,
    required TResult Function(CreateUserStateLoading value) loading,
    required TResult Function(_CreateUserStateLoadSuccess value) loadSuccess,
    required TResult Function(_CreateUserStateLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUserStateInitial value)? initial,
    TResult? Function(CreateUserStateLoading value)? loading,
    TResult? Function(_CreateUserStateLoadSuccess value)? loadSuccess,
    TResult? Function(_CreateUserStateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUserStateInitial value)? initial,
    TResult Function(CreateUserStateLoading value)? loading,
    TResult Function(_CreateUserStateLoadSuccess value)? loadSuccess,
    TResult Function(_CreateUserStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateUserStateLoadSuccess implements CreateUserState {
  const factory _CreateUserStateLoadSuccess(
          final CreateUserEntities createUserEntities) =
      _$CreateUserStateLoadSuccessImpl;

  CreateUserEntities get createUserEntities;
  @JsonKey(ignore: true)
  _$$CreateUserStateLoadSuccessImplCopyWith<_$CreateUserStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserStateLoadFailureImplCopyWith<$Res> {
  factory _$$CreateUserStateLoadFailureImplCopyWith(
          _$CreateUserStateLoadFailureImpl value,
          $Res Function(_$CreateUserStateLoadFailureImpl) then) =
      __$$CreateUserStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$CreateUserStateLoadFailureImplCopyWithImpl<$Res>
    extends _$CreateUserStateCopyWithImpl<$Res,
        _$CreateUserStateLoadFailureImpl>
    implements _$$CreateUserStateLoadFailureImplCopyWith<$Res> {
  __$$CreateUserStateLoadFailureImplCopyWithImpl(
      _$CreateUserStateLoadFailureImpl _value,
      $Res Function(_$CreateUserStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CreateUserStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$CreateUserStateLoadFailureImpl implements _CreateUserStateLoadFailure {
  const _$CreateUserStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CreateUserState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserStateLoadFailureImplCopyWith<_$CreateUserStateLoadFailureImpl>
      get copyWith => __$$CreateUserStateLoadFailureImplCopyWithImpl<
          _$CreateUserStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateUserEntities createUserEntities)
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
    TResult? Function(CreateUserEntities createUserEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateUserEntities createUserEntities)? loadSuccess,
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
    required TResult Function(_CreateUserStateInitial value) initial,
    required TResult Function(CreateUserStateLoading value) loading,
    required TResult Function(_CreateUserStateLoadSuccess value) loadSuccess,
    required TResult Function(_CreateUserStateLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUserStateInitial value)? initial,
    TResult? Function(CreateUserStateLoading value)? loading,
    TResult? Function(_CreateUserStateLoadSuccess value)? loadSuccess,
    TResult? Function(_CreateUserStateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUserStateInitial value)? initial,
    TResult Function(CreateUserStateLoading value)? loading,
    TResult Function(_CreateUserStateLoadSuccess value)? loadSuccess,
    TResult Function(_CreateUserStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _CreateUserStateLoadFailure implements CreateUserState {
  const factory _CreateUserStateLoadFailure(final Failure failure) =
      _$CreateUserStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$CreateUserStateLoadFailureImplCopyWith<_$CreateUserStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
