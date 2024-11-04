// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_cost_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateCostEvent {
  CreateCostParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateCostParam param) createCostEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateCostParam param)? createCostEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateCostParam param)? createCostEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateCostEventCalled value)
        createCostEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCostEventCalled value)? createCostEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCostEventCalled value)? createCostEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateCostEventCopyWith<CreateCostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCostEventCopyWith<$Res> {
  factory $CreateCostEventCopyWith(
          CreateCostEvent value, $Res Function(CreateCostEvent) then) =
      _$CreateCostEventCopyWithImpl<$Res, CreateCostEvent>;
  @useResult
  $Res call({CreateCostParam param});
}

/// @nodoc
class _$CreateCostEventCopyWithImpl<$Res, $Val extends CreateCostEvent>
    implements $CreateCostEventCopyWith<$Res> {
  _$CreateCostEventCopyWithImpl(this._value, this._then);

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
              as CreateCostParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCostEventCalledImplCopyWith<$Res>
    implements $CreateCostEventCopyWith<$Res> {
  factory _$$CreateCostEventCalledImplCopyWith(
          _$CreateCostEventCalledImpl value,
          $Res Function(_$CreateCostEventCalledImpl) then) =
      __$$CreateCostEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateCostParam param});
}

/// @nodoc
class __$$CreateCostEventCalledImplCopyWithImpl<$Res>
    extends _$CreateCostEventCopyWithImpl<$Res, _$CreateCostEventCalledImpl>
    implements _$$CreateCostEventCalledImplCopyWith<$Res> {
  __$$CreateCostEventCalledImplCopyWithImpl(_$CreateCostEventCalledImpl _value,
      $Res Function(_$CreateCostEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$CreateCostEventCalledImpl(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as CreateCostParam,
    ));
  }
}

/// @nodoc

class _$CreateCostEventCalledImpl implements _CreateCostEventCalled {
  const _$CreateCostEventCalledImpl({required this.param});

  @override
  final CreateCostParam param;

  @override
  String toString() {
    return 'CreateCostEvent.createCostEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCostEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCostEventCalledImplCopyWith<_$CreateCostEventCalledImpl>
      get copyWith => __$$CreateCostEventCalledImplCopyWithImpl<
          _$CreateCostEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateCostParam param) createCostEventCalled,
  }) {
    return createCostEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateCostParam param)? createCostEventCalled,
  }) {
    return createCostEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateCostParam param)? createCostEventCalled,
    required TResult orElse(),
  }) {
    if (createCostEventCalled != null) {
      return createCostEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateCostEventCalled value)
        createCostEventCalled,
  }) {
    return createCostEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCostEventCalled value)? createCostEventCalled,
  }) {
    return createCostEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCostEventCalled value)? createCostEventCalled,
    required TResult orElse(),
  }) {
    if (createCostEventCalled != null) {
      return createCostEventCalled(this);
    }
    return orElse();
  }
}

abstract class _CreateCostEventCalled implements CreateCostEvent {
  const factory _CreateCostEventCalled({required final CreateCostParam param}) =
      _$CreateCostEventCalledImpl;

  @override
  CreateCostParam get param;
  @override
  @JsonKey(ignore: true)
  _$$CreateCostEventCalledImplCopyWith<_$CreateCostEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateCostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(CreateCostEntities createCostEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(CreateCostEntities createCostEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(CreateCostEntities createCostEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateCostStateInitial value) initial,
    required TResult Function(_CreateCostStateLoadFailure value) loadFailure,
    required TResult Function(CreateCostStateLoading value) loading,
    required TResult Function(_CreateCostStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCostStateInitial value)? initial,
    TResult? Function(_CreateCostStateLoadFailure value)? loadFailure,
    TResult? Function(CreateCostStateLoading value)? loading,
    TResult? Function(_CreateCostStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCostStateInitial value)? initial,
    TResult Function(_CreateCostStateLoadFailure value)? loadFailure,
    TResult Function(CreateCostStateLoading value)? loading,
    TResult Function(_CreateCostStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCostStateCopyWith<$Res> {
  factory $CreateCostStateCopyWith(
          CreateCostState value, $Res Function(CreateCostState) then) =
      _$CreateCostStateCopyWithImpl<$Res, CreateCostState>;
}

/// @nodoc
class _$CreateCostStateCopyWithImpl<$Res, $Val extends CreateCostState>
    implements $CreateCostStateCopyWith<$Res> {
  _$CreateCostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateCostStateInitialImplCopyWith<$Res> {
  factory _$$CreateCostStateInitialImplCopyWith(
          _$CreateCostStateInitialImpl value,
          $Res Function(_$CreateCostStateInitialImpl) then) =
      __$$CreateCostStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateCostStateInitialImplCopyWithImpl<$Res>
    extends _$CreateCostStateCopyWithImpl<$Res, _$CreateCostStateInitialImpl>
    implements _$$CreateCostStateInitialImplCopyWith<$Res> {
  __$$CreateCostStateInitialImplCopyWithImpl(
      _$CreateCostStateInitialImpl _value,
      $Res Function(_$CreateCostStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateCostStateInitialImpl implements _CreateCostStateInitial {
  const _$CreateCostStateInitialImpl();

  @override
  String toString() {
    return 'CreateCostState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCostStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(CreateCostEntities createCostEntities)
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
    TResult? Function(CreateCostEntities createCostEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(CreateCostEntities createCostEntities)? loadSuccess,
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
    required TResult Function(_CreateCostStateInitial value) initial,
    required TResult Function(_CreateCostStateLoadFailure value) loadFailure,
    required TResult Function(CreateCostStateLoading value) loading,
    required TResult Function(_CreateCostStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCostStateInitial value)? initial,
    TResult? Function(_CreateCostStateLoadFailure value)? loadFailure,
    TResult? Function(CreateCostStateLoading value)? loading,
    TResult? Function(_CreateCostStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCostStateInitial value)? initial,
    TResult Function(_CreateCostStateLoadFailure value)? loadFailure,
    TResult Function(CreateCostStateLoading value)? loading,
    TResult Function(_CreateCostStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateCostStateInitial implements CreateCostState {
  const factory _CreateCostStateInitial() = _$CreateCostStateInitialImpl;
}

/// @nodoc
abstract class _$$CreateCostStateLoadFailureImplCopyWith<$Res> {
  factory _$$CreateCostStateLoadFailureImplCopyWith(
          _$CreateCostStateLoadFailureImpl value,
          $Res Function(_$CreateCostStateLoadFailureImpl) then) =
      __$$CreateCostStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$CreateCostStateLoadFailureImplCopyWithImpl<$Res>
    extends _$CreateCostStateCopyWithImpl<$Res,
        _$CreateCostStateLoadFailureImpl>
    implements _$$CreateCostStateLoadFailureImplCopyWith<$Res> {
  __$$CreateCostStateLoadFailureImplCopyWithImpl(
      _$CreateCostStateLoadFailureImpl _value,
      $Res Function(_$CreateCostStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CreateCostStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$CreateCostStateLoadFailureImpl implements _CreateCostStateLoadFailure {
  const _$CreateCostStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CreateCostState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCostStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCostStateLoadFailureImplCopyWith<_$CreateCostStateLoadFailureImpl>
      get copyWith => __$$CreateCostStateLoadFailureImplCopyWithImpl<
          _$CreateCostStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(CreateCostEntities createCostEntities)
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
    TResult? Function(CreateCostEntities createCostEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(CreateCostEntities createCostEntities)? loadSuccess,
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
    required TResult Function(_CreateCostStateInitial value) initial,
    required TResult Function(_CreateCostStateLoadFailure value) loadFailure,
    required TResult Function(CreateCostStateLoading value) loading,
    required TResult Function(_CreateCostStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCostStateInitial value)? initial,
    TResult? Function(_CreateCostStateLoadFailure value)? loadFailure,
    TResult? Function(CreateCostStateLoading value)? loading,
    TResult? Function(_CreateCostStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCostStateInitial value)? initial,
    TResult Function(_CreateCostStateLoadFailure value)? loadFailure,
    TResult Function(CreateCostStateLoading value)? loading,
    TResult Function(_CreateCostStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _CreateCostStateLoadFailure implements CreateCostState {
  const factory _CreateCostStateLoadFailure(final Failure failure) =
      _$CreateCostStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$CreateCostStateLoadFailureImplCopyWith<_$CreateCostStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCostStateLoadingImplCopyWith<$Res> {
  factory _$$CreateCostStateLoadingImplCopyWith(
          _$CreateCostStateLoadingImpl value,
          $Res Function(_$CreateCostStateLoadingImpl) then) =
      __$$CreateCostStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateCostStateLoadingImplCopyWithImpl<$Res>
    extends _$CreateCostStateCopyWithImpl<$Res, _$CreateCostStateLoadingImpl>
    implements _$$CreateCostStateLoadingImplCopyWith<$Res> {
  __$$CreateCostStateLoadingImplCopyWithImpl(
      _$CreateCostStateLoadingImpl _value,
      $Res Function(_$CreateCostStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateCostStateLoadingImpl implements CreateCostStateLoading {
  const _$CreateCostStateLoadingImpl();

  @override
  String toString() {
    return 'CreateCostState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCostStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(CreateCostEntities createCostEntities)
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
    TResult? Function(CreateCostEntities createCostEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(CreateCostEntities createCostEntities)? loadSuccess,
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
    required TResult Function(_CreateCostStateInitial value) initial,
    required TResult Function(_CreateCostStateLoadFailure value) loadFailure,
    required TResult Function(CreateCostStateLoading value) loading,
    required TResult Function(_CreateCostStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCostStateInitial value)? initial,
    TResult? Function(_CreateCostStateLoadFailure value)? loadFailure,
    TResult? Function(CreateCostStateLoading value)? loading,
    TResult? Function(_CreateCostStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCostStateInitial value)? initial,
    TResult Function(_CreateCostStateLoadFailure value)? loadFailure,
    TResult Function(CreateCostStateLoading value)? loading,
    TResult Function(_CreateCostStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateCostStateLoading implements CreateCostState {
  const factory CreateCostStateLoading() = _$CreateCostStateLoadingImpl;
}

/// @nodoc
abstract class _$$CreateCostStateLoadSuccessImplCopyWith<$Res> {
  factory _$$CreateCostStateLoadSuccessImplCopyWith(
          _$CreateCostStateLoadSuccessImpl value,
          $Res Function(_$CreateCostStateLoadSuccessImpl) then) =
      __$$CreateCostStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateCostEntities createCostEntities});
}

/// @nodoc
class __$$CreateCostStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$CreateCostStateCopyWithImpl<$Res,
        _$CreateCostStateLoadSuccessImpl>
    implements _$$CreateCostStateLoadSuccessImplCopyWith<$Res> {
  __$$CreateCostStateLoadSuccessImplCopyWithImpl(
      _$CreateCostStateLoadSuccessImpl _value,
      $Res Function(_$CreateCostStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createCostEntities = null,
  }) {
    return _then(_$CreateCostStateLoadSuccessImpl(
      null == createCostEntities
          ? _value.createCostEntities
          : createCostEntities // ignore: cast_nullable_to_non_nullable
              as CreateCostEntities,
    ));
  }
}

/// @nodoc

class _$CreateCostStateLoadSuccessImpl implements _CreateCostStateLoadSuccess {
  const _$CreateCostStateLoadSuccessImpl(this.createCostEntities);

  @override
  final CreateCostEntities createCostEntities;

  @override
  String toString() {
    return 'CreateCostState.loadSuccess(createCostEntities: $createCostEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCostStateLoadSuccessImpl &&
            (identical(other.createCostEntities, createCostEntities) ||
                other.createCostEntities == createCostEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createCostEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCostStateLoadSuccessImplCopyWith<_$CreateCostStateLoadSuccessImpl>
      get copyWith => __$$CreateCostStateLoadSuccessImplCopyWithImpl<
          _$CreateCostStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(CreateCostEntities createCostEntities)
        loadSuccess,
  }) {
    return loadSuccess(createCostEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(CreateCostEntities createCostEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(createCostEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(CreateCostEntities createCostEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(createCostEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateCostStateInitial value) initial,
    required TResult Function(_CreateCostStateLoadFailure value) loadFailure,
    required TResult Function(CreateCostStateLoading value) loading,
    required TResult Function(_CreateCostStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateCostStateInitial value)? initial,
    TResult? Function(_CreateCostStateLoadFailure value)? loadFailure,
    TResult? Function(CreateCostStateLoading value)? loading,
    TResult? Function(_CreateCostStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCostStateInitial value)? initial,
    TResult Function(_CreateCostStateLoadFailure value)? loadFailure,
    TResult Function(CreateCostStateLoading value)? loading,
    TResult Function(_CreateCostStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateCostStateLoadSuccess implements CreateCostState {
  const factory _CreateCostStateLoadSuccess(
          final CreateCostEntities createCostEntities) =
      _$CreateCostStateLoadSuccessImpl;

  CreateCostEntities get createCostEntities;
  @JsonKey(ignore: true)
  _$$CreateCostStateLoadSuccessImplCopyWith<_$CreateCostStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
