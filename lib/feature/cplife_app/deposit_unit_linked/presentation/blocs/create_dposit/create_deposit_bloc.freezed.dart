// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_deposit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateDepositEvent {
  CreateDepositParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateDepositParam param)
        createDepositEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateDepositParam param)? createDepositEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateDepositParam param)? createDepositEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateDepositEventCalled value)
        createDepositEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateDepositEventCalled value)?
        createDepositEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateDepositEventCalled value)? createDepositEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateDepositEventCopyWith<CreateDepositEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDepositEventCopyWith<$Res> {
  factory $CreateDepositEventCopyWith(
          CreateDepositEvent value, $Res Function(CreateDepositEvent) then) =
      _$CreateDepositEventCopyWithImpl<$Res, CreateDepositEvent>;
  @useResult
  $Res call({CreateDepositParam param});
}

/// @nodoc
class _$CreateDepositEventCopyWithImpl<$Res, $Val extends CreateDepositEvent>
    implements $CreateDepositEventCopyWith<$Res> {
  _$CreateDepositEventCopyWithImpl(this._value, this._then);

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
              as CreateDepositParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateDepositEventCalledImplCopyWith<$Res>
    implements $CreateDepositEventCopyWith<$Res> {
  factory _$$CreateDepositEventCalledImplCopyWith(
          _$CreateDepositEventCalledImpl value,
          $Res Function(_$CreateDepositEventCalledImpl) then) =
      __$$CreateDepositEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateDepositParam param});
}

/// @nodoc
class __$$CreateDepositEventCalledImplCopyWithImpl<$Res>
    extends _$CreateDepositEventCopyWithImpl<$Res,
        _$CreateDepositEventCalledImpl>
    implements _$$CreateDepositEventCalledImplCopyWith<$Res> {
  __$$CreateDepositEventCalledImplCopyWithImpl(
      _$CreateDepositEventCalledImpl _value,
      $Res Function(_$CreateDepositEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$CreateDepositEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as CreateDepositParam,
    ));
  }
}

/// @nodoc

class _$CreateDepositEventCalledImpl implements _CreateDepositEventCalled {
  const _$CreateDepositEventCalledImpl(this.param);

  @override
  final CreateDepositParam param;

  @override
  String toString() {
    return 'CreateDepositEvent.createDepositEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDepositEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDepositEventCalledImplCopyWith<_$CreateDepositEventCalledImpl>
      get copyWith => __$$CreateDepositEventCalledImplCopyWithImpl<
          _$CreateDepositEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateDepositParam param)
        createDepositEventCalled,
  }) {
    return createDepositEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateDepositParam param)? createDepositEventCalled,
  }) {
    return createDepositEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateDepositParam param)? createDepositEventCalled,
    required TResult orElse(),
  }) {
    if (createDepositEventCalled != null) {
      return createDepositEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateDepositEventCalled value)
        createDepositEventCalled,
  }) {
    return createDepositEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateDepositEventCalled value)?
        createDepositEventCalled,
  }) {
    return createDepositEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateDepositEventCalled value)? createDepositEventCalled,
    required TResult orElse(),
  }) {
    if (createDepositEventCalled != null) {
      return createDepositEventCalled(this);
    }
    return orElse();
  }
}

abstract class _CreateDepositEventCalled implements CreateDepositEvent {
  const factory _CreateDepositEventCalled(final CreateDepositParam param) =
      _$CreateDepositEventCalledImpl;

  @override
  CreateDepositParam get param;
  @override
  @JsonKey(ignore: true)
  _$$CreateDepositEventCalledImplCopyWith<_$CreateDepositEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateDepositState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            CreateDepositResponseEntities createDepositResponseEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            CreateDepositResponseEntities createDepositResponseEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            CreateDepositResponseEntities createDepositResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateDepositStateInitial value) initial,
    required TResult Function(_CreateDepositStateLoadFailure value) loadFailure,
    required TResult Function(CreateDepositStateLoading value) loading,
    required TResult Function(_CreateDepositStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateDepositStateInitial value)? initial,
    TResult? Function(_CreateDepositStateLoadFailure value)? loadFailure,
    TResult? Function(CreateDepositStateLoading value)? loading,
    TResult? Function(_CreateDepositStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateDepositStateInitial value)? initial,
    TResult Function(_CreateDepositStateLoadFailure value)? loadFailure,
    TResult Function(CreateDepositStateLoading value)? loading,
    TResult Function(_CreateDepositStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDepositStateCopyWith<$Res> {
  factory $CreateDepositStateCopyWith(
          CreateDepositState value, $Res Function(CreateDepositState) then) =
      _$CreateDepositStateCopyWithImpl<$Res, CreateDepositState>;
}

/// @nodoc
class _$CreateDepositStateCopyWithImpl<$Res, $Val extends CreateDepositState>
    implements $CreateDepositStateCopyWith<$Res> {
  _$CreateDepositStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateDepositStateInitialImplCopyWith<$Res> {
  factory _$$CreateDepositStateInitialImplCopyWith(
          _$CreateDepositStateInitialImpl value,
          $Res Function(_$CreateDepositStateInitialImpl) then) =
      __$$CreateDepositStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateDepositStateInitialImplCopyWithImpl<$Res>
    extends _$CreateDepositStateCopyWithImpl<$Res,
        _$CreateDepositStateInitialImpl>
    implements _$$CreateDepositStateInitialImplCopyWith<$Res> {
  __$$CreateDepositStateInitialImplCopyWithImpl(
      _$CreateDepositStateInitialImpl _value,
      $Res Function(_$CreateDepositStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateDepositStateInitialImpl implements _CreateDepositStateInitial {
  const _$CreateDepositStateInitialImpl();

  @override
  String toString() {
    return 'CreateDepositState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDepositStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            CreateDepositResponseEntities createDepositResponseEntities)
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
    TResult? Function(
            CreateDepositResponseEntities createDepositResponseEntities)?
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
    TResult Function(
            CreateDepositResponseEntities createDepositResponseEntities)?
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
    required TResult Function(_CreateDepositStateInitial value) initial,
    required TResult Function(_CreateDepositStateLoadFailure value) loadFailure,
    required TResult Function(CreateDepositStateLoading value) loading,
    required TResult Function(_CreateDepositStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateDepositStateInitial value)? initial,
    TResult? Function(_CreateDepositStateLoadFailure value)? loadFailure,
    TResult? Function(CreateDepositStateLoading value)? loading,
    TResult? Function(_CreateDepositStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateDepositStateInitial value)? initial,
    TResult Function(_CreateDepositStateLoadFailure value)? loadFailure,
    TResult Function(CreateDepositStateLoading value)? loading,
    TResult Function(_CreateDepositStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateDepositStateInitial implements CreateDepositState {
  const factory _CreateDepositStateInitial() = _$CreateDepositStateInitialImpl;
}

/// @nodoc
abstract class _$$CreateDepositStateLoadFailureImplCopyWith<$Res> {
  factory _$$CreateDepositStateLoadFailureImplCopyWith(
          _$CreateDepositStateLoadFailureImpl value,
          $Res Function(_$CreateDepositStateLoadFailureImpl) then) =
      __$$CreateDepositStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$CreateDepositStateLoadFailureImplCopyWithImpl<$Res>
    extends _$CreateDepositStateCopyWithImpl<$Res,
        _$CreateDepositStateLoadFailureImpl>
    implements _$$CreateDepositStateLoadFailureImplCopyWith<$Res> {
  __$$CreateDepositStateLoadFailureImplCopyWithImpl(
      _$CreateDepositStateLoadFailureImpl _value,
      $Res Function(_$CreateDepositStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CreateDepositStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$CreateDepositStateLoadFailureImpl
    implements _CreateDepositStateLoadFailure {
  const _$CreateDepositStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CreateDepositState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDepositStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDepositStateLoadFailureImplCopyWith<
          _$CreateDepositStateLoadFailureImpl>
      get copyWith => __$$CreateDepositStateLoadFailureImplCopyWithImpl<
          _$CreateDepositStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            CreateDepositResponseEntities createDepositResponseEntities)
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
    TResult? Function(
            CreateDepositResponseEntities createDepositResponseEntities)?
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
    TResult Function(
            CreateDepositResponseEntities createDepositResponseEntities)?
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
    required TResult Function(_CreateDepositStateInitial value) initial,
    required TResult Function(_CreateDepositStateLoadFailure value) loadFailure,
    required TResult Function(CreateDepositStateLoading value) loading,
    required TResult Function(_CreateDepositStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateDepositStateInitial value)? initial,
    TResult? Function(_CreateDepositStateLoadFailure value)? loadFailure,
    TResult? Function(CreateDepositStateLoading value)? loading,
    TResult? Function(_CreateDepositStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateDepositStateInitial value)? initial,
    TResult Function(_CreateDepositStateLoadFailure value)? loadFailure,
    TResult Function(CreateDepositStateLoading value)? loading,
    TResult Function(_CreateDepositStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _CreateDepositStateLoadFailure implements CreateDepositState {
  const factory _CreateDepositStateLoadFailure(final Failure failure) =
      _$CreateDepositStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$CreateDepositStateLoadFailureImplCopyWith<
          _$CreateDepositStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateDepositStateLoadingImplCopyWith<$Res> {
  factory _$$CreateDepositStateLoadingImplCopyWith(
          _$CreateDepositStateLoadingImpl value,
          $Res Function(_$CreateDepositStateLoadingImpl) then) =
      __$$CreateDepositStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateDepositStateLoadingImplCopyWithImpl<$Res>
    extends _$CreateDepositStateCopyWithImpl<$Res,
        _$CreateDepositStateLoadingImpl>
    implements _$$CreateDepositStateLoadingImplCopyWith<$Res> {
  __$$CreateDepositStateLoadingImplCopyWithImpl(
      _$CreateDepositStateLoadingImpl _value,
      $Res Function(_$CreateDepositStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateDepositStateLoadingImpl implements CreateDepositStateLoading {
  const _$CreateDepositStateLoadingImpl();

  @override
  String toString() {
    return 'CreateDepositState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDepositStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            CreateDepositResponseEntities createDepositResponseEntities)
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
    TResult? Function(
            CreateDepositResponseEntities createDepositResponseEntities)?
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
    TResult Function(
            CreateDepositResponseEntities createDepositResponseEntities)?
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
    required TResult Function(_CreateDepositStateInitial value) initial,
    required TResult Function(_CreateDepositStateLoadFailure value) loadFailure,
    required TResult Function(CreateDepositStateLoading value) loading,
    required TResult Function(_CreateDepositStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateDepositStateInitial value)? initial,
    TResult? Function(_CreateDepositStateLoadFailure value)? loadFailure,
    TResult? Function(CreateDepositStateLoading value)? loading,
    TResult? Function(_CreateDepositStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateDepositStateInitial value)? initial,
    TResult Function(_CreateDepositStateLoadFailure value)? loadFailure,
    TResult Function(CreateDepositStateLoading value)? loading,
    TResult Function(_CreateDepositStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateDepositStateLoading implements CreateDepositState {
  const factory CreateDepositStateLoading() = _$CreateDepositStateLoadingImpl;
}

/// @nodoc
abstract class _$$CreateDepositStateLoadSuccessImplCopyWith<$Res> {
  factory _$$CreateDepositStateLoadSuccessImplCopyWith(
          _$CreateDepositStateLoadSuccessImpl value,
          $Res Function(_$CreateDepositStateLoadSuccessImpl) then) =
      __$$CreateDepositStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateDepositResponseEntities createDepositResponseEntities});
}

/// @nodoc
class __$$CreateDepositStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$CreateDepositStateCopyWithImpl<$Res,
        _$CreateDepositStateLoadSuccessImpl>
    implements _$$CreateDepositStateLoadSuccessImplCopyWith<$Res> {
  __$$CreateDepositStateLoadSuccessImplCopyWithImpl(
      _$CreateDepositStateLoadSuccessImpl _value,
      $Res Function(_$CreateDepositStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createDepositResponseEntities = null,
  }) {
    return _then(_$CreateDepositStateLoadSuccessImpl(
      null == createDepositResponseEntities
          ? _value.createDepositResponseEntities
          : createDepositResponseEntities // ignore: cast_nullable_to_non_nullable
              as CreateDepositResponseEntities,
    ));
  }
}

/// @nodoc

class _$CreateDepositStateLoadSuccessImpl
    implements _CreateDepositStateLoadSuccess {
  const _$CreateDepositStateLoadSuccessImpl(this.createDepositResponseEntities);

  @override
  final CreateDepositResponseEntities createDepositResponseEntities;

  @override
  String toString() {
    return 'CreateDepositState.loadSuccess(createDepositResponseEntities: $createDepositResponseEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDepositStateLoadSuccessImpl &&
            (identical(other.createDepositResponseEntities,
                    createDepositResponseEntities) ||
                other.createDepositResponseEntities ==
                    createDepositResponseEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createDepositResponseEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDepositStateLoadSuccessImplCopyWith<
          _$CreateDepositStateLoadSuccessImpl>
      get copyWith => __$$CreateDepositStateLoadSuccessImplCopyWithImpl<
          _$CreateDepositStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            CreateDepositResponseEntities createDepositResponseEntities)
        loadSuccess,
  }) {
    return loadSuccess(createDepositResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            CreateDepositResponseEntities createDepositResponseEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(createDepositResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            CreateDepositResponseEntities createDepositResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(createDepositResponseEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateDepositStateInitial value) initial,
    required TResult Function(_CreateDepositStateLoadFailure value) loadFailure,
    required TResult Function(CreateDepositStateLoading value) loading,
    required TResult Function(_CreateDepositStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateDepositStateInitial value)? initial,
    TResult? Function(_CreateDepositStateLoadFailure value)? loadFailure,
    TResult? Function(CreateDepositStateLoading value)? loading,
    TResult? Function(_CreateDepositStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateDepositStateInitial value)? initial,
    TResult Function(_CreateDepositStateLoadFailure value)? loadFailure,
    TResult Function(CreateDepositStateLoading value)? loading,
    TResult Function(_CreateDepositStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateDepositStateLoadSuccess implements CreateDepositState {
  const factory _CreateDepositStateLoadSuccess(
          final CreateDepositResponseEntities createDepositResponseEntities) =
      _$CreateDepositStateLoadSuccessImpl;

  CreateDepositResponseEntities get createDepositResponseEntities;
  @JsonKey(ignore: true)
  _$$CreateDepositStateLoadSuccessImplCopyWith<
          _$CreateDepositStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
