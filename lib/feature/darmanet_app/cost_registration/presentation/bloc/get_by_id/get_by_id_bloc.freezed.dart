// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_by_id_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetByIdEvent {
  GetByIdParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetByIdParam param) getByIdEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetByIdParam param)? getByIdEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetByIdParam param)? getByIdEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByIdEventCalled value) getByIdEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIdEventCalled value)? getByIdEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIdEventCalled value)? getByIdEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetByIdEventCopyWith<GetByIdEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetByIdEventCopyWith<$Res> {
  factory $GetByIdEventCopyWith(
          GetByIdEvent value, $Res Function(GetByIdEvent) then) =
      _$GetByIdEventCopyWithImpl<$Res, GetByIdEvent>;
  @useResult
  $Res call({GetByIdParam param});
}

/// @nodoc
class _$GetByIdEventCopyWithImpl<$Res, $Val extends GetByIdEvent>
    implements $GetByIdEventCopyWith<$Res> {
  _$GetByIdEventCopyWithImpl(this._value, this._then);

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
              as GetByIdParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetByIdEventCalledImplCopyWith<$Res>
    implements $GetByIdEventCopyWith<$Res> {
  factory _$$GetByIdEventCalledImplCopyWith(_$GetByIdEventCalledImpl value,
          $Res Function(_$GetByIdEventCalledImpl) then) =
      __$$GetByIdEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetByIdParam param});
}

/// @nodoc
class __$$GetByIdEventCalledImplCopyWithImpl<$Res>
    extends _$GetByIdEventCopyWithImpl<$Res, _$GetByIdEventCalledImpl>
    implements _$$GetByIdEventCalledImplCopyWith<$Res> {
  __$$GetByIdEventCalledImplCopyWithImpl(_$GetByIdEventCalledImpl _value,
      $Res Function(_$GetByIdEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$GetByIdEventCalledImpl(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as GetByIdParam,
    ));
  }
}

/// @nodoc

class _$GetByIdEventCalledImpl implements _GetByIdEventCalled {
  const _$GetByIdEventCalledImpl({required this.param});

  @override
  final GetByIdParam param;

  @override
  String toString() {
    return 'GetByIdEvent.getByIdEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByIdEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetByIdEventCalledImplCopyWith<_$GetByIdEventCalledImpl> get copyWith =>
      __$$GetByIdEventCalledImplCopyWithImpl<_$GetByIdEventCalledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetByIdParam param) getByIdEventCalled,
  }) {
    return getByIdEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetByIdParam param)? getByIdEventCalled,
  }) {
    return getByIdEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetByIdParam param)? getByIdEventCalled,
    required TResult orElse(),
  }) {
    if (getByIdEventCalled != null) {
      return getByIdEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByIdEventCalled value) getByIdEventCalled,
  }) {
    return getByIdEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIdEventCalled value)? getByIdEventCalled,
  }) {
    return getByIdEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIdEventCalled value)? getByIdEventCalled,
    required TResult orElse(),
  }) {
    if (getByIdEventCalled != null) {
      return getByIdEventCalled(this);
    }
    return orElse();
  }
}

abstract class _GetByIdEventCalled implements GetByIdEvent {
  const factory _GetByIdEventCalled({required final GetByIdParam param}) =
      _$GetByIdEventCalledImpl;

  @override
  GetByIdParam get param;
  @override
  @JsonKey(ignore: true)
  _$$GetByIdEventCalledImplCopyWith<_$GetByIdEventCalledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetByIdState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetByIdEntities getAllCostDescEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetByIdEntities getAllCostDescEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetByIdEntities getAllCostDescEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByIdStateInitial value) initial,
    required TResult Function(_GetByIdStateLoadFailure value) loadFailure,
    required TResult Function(GetByIdStateLoading value) loading,
    required TResult Function(_GetByIdStateStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIdStateInitial value)? initial,
    TResult? Function(_GetByIdStateLoadFailure value)? loadFailure,
    TResult? Function(GetByIdStateLoading value)? loading,
    TResult? Function(_GetByIdStateStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIdStateInitial value)? initial,
    TResult Function(_GetByIdStateLoadFailure value)? loadFailure,
    TResult Function(GetByIdStateLoading value)? loading,
    TResult Function(_GetByIdStateStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetByIdStateCopyWith<$Res> {
  factory $GetByIdStateCopyWith(
          GetByIdState value, $Res Function(GetByIdState) then) =
      _$GetByIdStateCopyWithImpl<$Res, GetByIdState>;
}

/// @nodoc
class _$GetByIdStateCopyWithImpl<$Res, $Val extends GetByIdState>
    implements $GetByIdStateCopyWith<$Res> {
  _$GetByIdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetByIdStateInitialImplCopyWith<$Res> {
  factory _$$GetByIdStateInitialImplCopyWith(_$GetByIdStateInitialImpl value,
          $Res Function(_$GetByIdStateInitialImpl) then) =
      __$$GetByIdStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetByIdStateInitialImplCopyWithImpl<$Res>
    extends _$GetByIdStateCopyWithImpl<$Res, _$GetByIdStateInitialImpl>
    implements _$$GetByIdStateInitialImplCopyWith<$Res> {
  __$$GetByIdStateInitialImplCopyWithImpl(_$GetByIdStateInitialImpl _value,
      $Res Function(_$GetByIdStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetByIdStateInitialImpl implements _GetByIdStateInitial {
  const _$GetByIdStateInitialImpl();

  @override
  String toString() {
    return 'GetByIdState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByIdStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetByIdEntities getAllCostDescEntities)
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
    TResult? Function(GetByIdEntities getAllCostDescEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetByIdEntities getAllCostDescEntities)? loadSuccess,
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
    required TResult Function(_GetByIdStateInitial value) initial,
    required TResult Function(_GetByIdStateLoadFailure value) loadFailure,
    required TResult Function(GetByIdStateLoading value) loading,
    required TResult Function(_GetByIdStateStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIdStateInitial value)? initial,
    TResult? Function(_GetByIdStateLoadFailure value)? loadFailure,
    TResult? Function(GetByIdStateLoading value)? loading,
    TResult? Function(_GetByIdStateStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIdStateInitial value)? initial,
    TResult Function(_GetByIdStateLoadFailure value)? loadFailure,
    TResult Function(GetByIdStateLoading value)? loading,
    TResult Function(_GetByIdStateStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetByIdStateInitial implements GetByIdState {
  const factory _GetByIdStateInitial() = _$GetByIdStateInitialImpl;
}

/// @nodoc
abstract class _$$GetByIdStateLoadFailureImplCopyWith<$Res> {
  factory _$$GetByIdStateLoadFailureImplCopyWith(
          _$GetByIdStateLoadFailureImpl value,
          $Res Function(_$GetByIdStateLoadFailureImpl) then) =
      __$$GetByIdStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$GetByIdStateLoadFailureImplCopyWithImpl<$Res>
    extends _$GetByIdStateCopyWithImpl<$Res, _$GetByIdStateLoadFailureImpl>
    implements _$$GetByIdStateLoadFailureImplCopyWith<$Res> {
  __$$GetByIdStateLoadFailureImplCopyWithImpl(
      _$GetByIdStateLoadFailureImpl _value,
      $Res Function(_$GetByIdStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GetByIdStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$GetByIdStateLoadFailureImpl implements _GetByIdStateLoadFailure {
  const _$GetByIdStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetByIdState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByIdStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetByIdStateLoadFailureImplCopyWith<_$GetByIdStateLoadFailureImpl>
      get copyWith => __$$GetByIdStateLoadFailureImplCopyWithImpl<
          _$GetByIdStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetByIdEntities getAllCostDescEntities)
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
    TResult? Function(GetByIdEntities getAllCostDescEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetByIdEntities getAllCostDescEntities)? loadSuccess,
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
    required TResult Function(_GetByIdStateInitial value) initial,
    required TResult Function(_GetByIdStateLoadFailure value) loadFailure,
    required TResult Function(GetByIdStateLoading value) loading,
    required TResult Function(_GetByIdStateStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIdStateInitial value)? initial,
    TResult? Function(_GetByIdStateLoadFailure value)? loadFailure,
    TResult? Function(GetByIdStateLoading value)? loading,
    TResult? Function(_GetByIdStateStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIdStateInitial value)? initial,
    TResult Function(_GetByIdStateLoadFailure value)? loadFailure,
    TResult Function(GetByIdStateLoading value)? loading,
    TResult Function(_GetByIdStateStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _GetByIdStateLoadFailure implements GetByIdState {
  const factory _GetByIdStateLoadFailure(final Failure failure) =
      _$GetByIdStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$GetByIdStateLoadFailureImplCopyWith<_$GetByIdStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetByIdStateLoadingImplCopyWith<$Res> {
  factory _$$GetByIdStateLoadingImplCopyWith(_$GetByIdStateLoadingImpl value,
          $Res Function(_$GetByIdStateLoadingImpl) then) =
      __$$GetByIdStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetByIdStateLoadingImplCopyWithImpl<$Res>
    extends _$GetByIdStateCopyWithImpl<$Res, _$GetByIdStateLoadingImpl>
    implements _$$GetByIdStateLoadingImplCopyWith<$Res> {
  __$$GetByIdStateLoadingImplCopyWithImpl(_$GetByIdStateLoadingImpl _value,
      $Res Function(_$GetByIdStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetByIdStateLoadingImpl implements GetByIdStateLoading {
  const _$GetByIdStateLoadingImpl();

  @override
  String toString() {
    return 'GetByIdState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByIdStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetByIdEntities getAllCostDescEntities)
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
    TResult? Function(GetByIdEntities getAllCostDescEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetByIdEntities getAllCostDescEntities)? loadSuccess,
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
    required TResult Function(_GetByIdStateInitial value) initial,
    required TResult Function(_GetByIdStateLoadFailure value) loadFailure,
    required TResult Function(GetByIdStateLoading value) loading,
    required TResult Function(_GetByIdStateStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIdStateInitial value)? initial,
    TResult? Function(_GetByIdStateLoadFailure value)? loadFailure,
    TResult? Function(GetByIdStateLoading value)? loading,
    TResult? Function(_GetByIdStateStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIdStateInitial value)? initial,
    TResult Function(_GetByIdStateLoadFailure value)? loadFailure,
    TResult Function(GetByIdStateLoading value)? loading,
    TResult Function(_GetByIdStateStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetByIdStateLoading implements GetByIdState {
  const factory GetByIdStateLoading() = _$GetByIdStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetByIdStateStateLoadSuccessImplCopyWith<$Res> {
  factory _$$GetByIdStateStateLoadSuccessImplCopyWith(
          _$GetByIdStateStateLoadSuccessImpl value,
          $Res Function(_$GetByIdStateStateLoadSuccessImpl) then) =
      __$$GetByIdStateStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetByIdEntities getAllCostDescEntities});
}

/// @nodoc
class __$$GetByIdStateStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$GetByIdStateCopyWithImpl<$Res, _$GetByIdStateStateLoadSuccessImpl>
    implements _$$GetByIdStateStateLoadSuccessImplCopyWith<$Res> {
  __$$GetByIdStateStateLoadSuccessImplCopyWithImpl(
      _$GetByIdStateStateLoadSuccessImpl _value,
      $Res Function(_$GetByIdStateStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAllCostDescEntities = null,
  }) {
    return _then(_$GetByIdStateStateLoadSuccessImpl(
      null == getAllCostDescEntities
          ? _value.getAllCostDescEntities
          : getAllCostDescEntities // ignore: cast_nullable_to_non_nullable
              as GetByIdEntities,
    ));
  }
}

/// @nodoc

class _$GetByIdStateStateLoadSuccessImpl
    implements _GetByIdStateStateLoadSuccess {
  const _$GetByIdStateStateLoadSuccessImpl(this.getAllCostDescEntities);

  @override
  final GetByIdEntities getAllCostDescEntities;

  @override
  String toString() {
    return 'GetByIdState.loadSuccess(getAllCostDescEntities: $getAllCostDescEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetByIdStateStateLoadSuccessImpl &&
            (identical(other.getAllCostDescEntities, getAllCostDescEntities) ||
                other.getAllCostDescEntities == getAllCostDescEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getAllCostDescEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetByIdStateStateLoadSuccessImplCopyWith<
          _$GetByIdStateStateLoadSuccessImpl>
      get copyWith => __$$GetByIdStateStateLoadSuccessImplCopyWithImpl<
          _$GetByIdStateStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetByIdEntities getAllCostDescEntities)
        loadSuccess,
  }) {
    return loadSuccess(getAllCostDescEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetByIdEntities getAllCostDescEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(getAllCostDescEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetByIdEntities getAllCostDescEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(getAllCostDescEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetByIdStateInitial value) initial,
    required TResult Function(_GetByIdStateLoadFailure value) loadFailure,
    required TResult Function(GetByIdStateLoading value) loading,
    required TResult Function(_GetByIdStateStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetByIdStateInitial value)? initial,
    TResult? Function(_GetByIdStateLoadFailure value)? loadFailure,
    TResult? Function(GetByIdStateLoading value)? loading,
    TResult? Function(_GetByIdStateStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetByIdStateInitial value)? initial,
    TResult Function(_GetByIdStateLoadFailure value)? loadFailure,
    TResult Function(GetByIdStateLoading value)? loading,
    TResult Function(_GetByIdStateStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetByIdStateStateLoadSuccess implements GetByIdState {
  const factory _GetByIdStateStateLoadSuccess(
          final GetByIdEntities getAllCostDescEntities) =
      _$GetByIdStateStateLoadSuccessImpl;

  GetByIdEntities get getAllCostDescEntities;
  @JsonKey(ignore: true)
  _$$GetByIdStateStateLoadSuccessImplCopyWith<
          _$GetByIdStateStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
