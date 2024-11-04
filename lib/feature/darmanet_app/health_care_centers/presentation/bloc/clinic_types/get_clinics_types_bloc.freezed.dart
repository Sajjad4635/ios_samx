// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_clinics_types_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetClinicsTypesEvent {
  GetClinicsTypesParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetClinicsTypesParams params)
        getClinicsTypesCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetClinicsTypesParams params)? getClinicsTypesCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetClinicsTypesParams params)? getClinicsTypesCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClinicsTypesEventCalled value)
        getClinicsTypesCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClinicsTypesEventCalled value)? getClinicsTypesCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClinicsTypesEventCalled value)? getClinicsTypesCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetClinicsTypesEventCopyWith<GetClinicsTypesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClinicsTypesEventCopyWith<$Res> {
  factory $GetClinicsTypesEventCopyWith(GetClinicsTypesEvent value,
          $Res Function(GetClinicsTypesEvent) then) =
      _$GetClinicsTypesEventCopyWithImpl<$Res, GetClinicsTypesEvent>;
  @useResult
  $Res call({GetClinicsTypesParams params});
}

/// @nodoc
class _$GetClinicsTypesEventCopyWithImpl<$Res,
        $Val extends GetClinicsTypesEvent>
    implements $GetClinicsTypesEventCopyWith<$Res> {
  _$GetClinicsTypesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetClinicsTypesParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetClinicsTypesEventCalledImplCopyWith<$Res>
    implements $GetClinicsTypesEventCopyWith<$Res> {
  factory _$$GetClinicsTypesEventCalledImplCopyWith(
          _$GetClinicsTypesEventCalledImpl value,
          $Res Function(_$GetClinicsTypesEventCalledImpl) then) =
      __$$GetClinicsTypesEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetClinicsTypesParams params});
}

/// @nodoc
class __$$GetClinicsTypesEventCalledImplCopyWithImpl<$Res>
    extends _$GetClinicsTypesEventCopyWithImpl<$Res,
        _$GetClinicsTypesEventCalledImpl>
    implements _$$GetClinicsTypesEventCalledImplCopyWith<$Res> {
  __$$GetClinicsTypesEventCalledImplCopyWithImpl(
      _$GetClinicsTypesEventCalledImpl _value,
      $Res Function(_$GetClinicsTypesEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$GetClinicsTypesEventCalledImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetClinicsTypesParams,
    ));
  }
}

/// @nodoc

class _$GetClinicsTypesEventCalledImpl implements _GetClinicsTypesEventCalled {
  const _$GetClinicsTypesEventCalledImpl({required this.params});

  @override
  final GetClinicsTypesParams params;

  @override
  String toString() {
    return 'GetClinicsTypesEvent.getClinicsTypesCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClinicsTypesEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClinicsTypesEventCalledImplCopyWith<_$GetClinicsTypesEventCalledImpl>
      get copyWith => __$$GetClinicsTypesEventCalledImplCopyWithImpl<
          _$GetClinicsTypesEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetClinicsTypesParams params)
        getClinicsTypesCalled,
  }) {
    return getClinicsTypesCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetClinicsTypesParams params)? getClinicsTypesCalled,
  }) {
    return getClinicsTypesCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetClinicsTypesParams params)? getClinicsTypesCalled,
    required TResult orElse(),
  }) {
    if (getClinicsTypesCalled != null) {
      return getClinicsTypesCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClinicsTypesEventCalled value)
        getClinicsTypesCalled,
  }) {
    return getClinicsTypesCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClinicsTypesEventCalled value)? getClinicsTypesCalled,
  }) {
    return getClinicsTypesCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClinicsTypesEventCalled value)? getClinicsTypesCalled,
    required TResult orElse(),
  }) {
    if (getClinicsTypesCalled != null) {
      return getClinicsTypesCalled(this);
    }
    return orElse();
  }
}

abstract class _GetClinicsTypesEventCalled implements GetClinicsTypesEvent {
  const factory _GetClinicsTypesEventCalled(
          {required final GetClinicsTypesParams params}) =
      _$GetClinicsTypesEventCalledImpl;

  @override
  GetClinicsTypesParams get params;
  @override
  @JsonKey(ignore: true)
  _$$GetClinicsTypesEventCalledImplCopyWith<_$GetClinicsTypesEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetClinicsTypesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetClinicsTypesEntity getClinicsTypesEntity)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetClinicsTypesEntity getClinicsTypesEntity)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetClinicsTypesEntity getClinicsTypesEntity)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClinicTypesStateInitial value) initial,
    required TResult Function(_GetClinicsTypeLoadFailure value) loadFailure,
    required TResult Function(GetClinicsTypesStateLoading value) loading,
    required TResult Function(_GetClinicsTypesStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClinicTypesStateInitial value)? initial,
    TResult? Function(_GetClinicsTypeLoadFailure value)? loadFailure,
    TResult? Function(GetClinicsTypesStateLoading value)? loading,
    TResult? Function(_GetClinicsTypesStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClinicTypesStateInitial value)? initial,
    TResult Function(_GetClinicsTypeLoadFailure value)? loadFailure,
    TResult Function(GetClinicsTypesStateLoading value)? loading,
    TResult Function(_GetClinicsTypesStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClinicsTypesStateCopyWith<$Res> {
  factory $GetClinicsTypesStateCopyWith(GetClinicsTypesState value,
          $Res Function(GetClinicsTypesState) then) =
      _$GetClinicsTypesStateCopyWithImpl<$Res, GetClinicsTypesState>;
}

/// @nodoc
class _$GetClinicsTypesStateCopyWithImpl<$Res,
        $Val extends GetClinicsTypesState>
    implements $GetClinicsTypesStateCopyWith<$Res> {
  _$GetClinicsTypesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetClinicTypesStateInitialImplCopyWith<$Res> {
  factory _$$GetClinicTypesStateInitialImplCopyWith(
          _$GetClinicTypesStateInitialImpl value,
          $Res Function(_$GetClinicTypesStateInitialImpl) then) =
      __$$GetClinicTypesStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetClinicTypesStateInitialImplCopyWithImpl<$Res>
    extends _$GetClinicsTypesStateCopyWithImpl<$Res,
        _$GetClinicTypesStateInitialImpl>
    implements _$$GetClinicTypesStateInitialImplCopyWith<$Res> {
  __$$GetClinicTypesStateInitialImplCopyWithImpl(
      _$GetClinicTypesStateInitialImpl _value,
      $Res Function(_$GetClinicTypesStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetClinicTypesStateInitialImpl implements _GetClinicTypesStateInitial {
  const _$GetClinicTypesStateInitialImpl();

  @override
  String toString() {
    return 'GetClinicsTypesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClinicTypesStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetClinicsTypesEntity getClinicsTypesEntity)
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
    TResult? Function(GetClinicsTypesEntity getClinicsTypesEntity)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetClinicsTypesEntity getClinicsTypesEntity)? loadSuccess,
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
    required TResult Function(_GetClinicTypesStateInitial value) initial,
    required TResult Function(_GetClinicsTypeLoadFailure value) loadFailure,
    required TResult Function(GetClinicsTypesStateLoading value) loading,
    required TResult Function(_GetClinicsTypesStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClinicTypesStateInitial value)? initial,
    TResult? Function(_GetClinicsTypeLoadFailure value)? loadFailure,
    TResult? Function(GetClinicsTypesStateLoading value)? loading,
    TResult? Function(_GetClinicsTypesStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClinicTypesStateInitial value)? initial,
    TResult Function(_GetClinicsTypeLoadFailure value)? loadFailure,
    TResult Function(GetClinicsTypesStateLoading value)? loading,
    TResult Function(_GetClinicsTypesStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetClinicTypesStateInitial implements GetClinicsTypesState {
  const factory _GetClinicTypesStateInitial() =
      _$GetClinicTypesStateInitialImpl;
}

/// @nodoc
abstract class _$$GetClinicsTypeLoadFailureImplCopyWith<$Res> {
  factory _$$GetClinicsTypeLoadFailureImplCopyWith(
          _$GetClinicsTypeLoadFailureImpl value,
          $Res Function(_$GetClinicsTypeLoadFailureImpl) then) =
      __$$GetClinicsTypeLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$GetClinicsTypeLoadFailureImplCopyWithImpl<$Res>
    extends _$GetClinicsTypesStateCopyWithImpl<$Res,
        _$GetClinicsTypeLoadFailureImpl>
    implements _$$GetClinicsTypeLoadFailureImplCopyWith<$Res> {
  __$$GetClinicsTypeLoadFailureImplCopyWithImpl(
      _$GetClinicsTypeLoadFailureImpl _value,
      $Res Function(_$GetClinicsTypeLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GetClinicsTypeLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$GetClinicsTypeLoadFailureImpl implements _GetClinicsTypeLoadFailure {
  const _$GetClinicsTypeLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetClinicsTypesState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClinicsTypeLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClinicsTypeLoadFailureImplCopyWith<_$GetClinicsTypeLoadFailureImpl>
      get copyWith => __$$GetClinicsTypeLoadFailureImplCopyWithImpl<
          _$GetClinicsTypeLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetClinicsTypesEntity getClinicsTypesEntity)
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
    TResult? Function(GetClinicsTypesEntity getClinicsTypesEntity)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetClinicsTypesEntity getClinicsTypesEntity)? loadSuccess,
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
    required TResult Function(_GetClinicTypesStateInitial value) initial,
    required TResult Function(_GetClinicsTypeLoadFailure value) loadFailure,
    required TResult Function(GetClinicsTypesStateLoading value) loading,
    required TResult Function(_GetClinicsTypesStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClinicTypesStateInitial value)? initial,
    TResult? Function(_GetClinicsTypeLoadFailure value)? loadFailure,
    TResult? Function(GetClinicsTypesStateLoading value)? loading,
    TResult? Function(_GetClinicsTypesStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClinicTypesStateInitial value)? initial,
    TResult Function(_GetClinicsTypeLoadFailure value)? loadFailure,
    TResult Function(GetClinicsTypesStateLoading value)? loading,
    TResult Function(_GetClinicsTypesStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _GetClinicsTypeLoadFailure implements GetClinicsTypesState {
  const factory _GetClinicsTypeLoadFailure(final Failure failure) =
      _$GetClinicsTypeLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$GetClinicsTypeLoadFailureImplCopyWith<_$GetClinicsTypeLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetClinicsTypesStateLoadingImplCopyWith<$Res> {
  factory _$$GetClinicsTypesStateLoadingImplCopyWith(
          _$GetClinicsTypesStateLoadingImpl value,
          $Res Function(_$GetClinicsTypesStateLoadingImpl) then) =
      __$$GetClinicsTypesStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetClinicsTypesStateLoadingImplCopyWithImpl<$Res>
    extends _$GetClinicsTypesStateCopyWithImpl<$Res,
        _$GetClinicsTypesStateLoadingImpl>
    implements _$$GetClinicsTypesStateLoadingImplCopyWith<$Res> {
  __$$GetClinicsTypesStateLoadingImplCopyWithImpl(
      _$GetClinicsTypesStateLoadingImpl _value,
      $Res Function(_$GetClinicsTypesStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetClinicsTypesStateLoadingImpl implements GetClinicsTypesStateLoading {
  const _$GetClinicsTypesStateLoadingImpl();

  @override
  String toString() {
    return 'GetClinicsTypesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClinicsTypesStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetClinicsTypesEntity getClinicsTypesEntity)
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
    TResult? Function(GetClinicsTypesEntity getClinicsTypesEntity)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetClinicsTypesEntity getClinicsTypesEntity)? loadSuccess,
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
    required TResult Function(_GetClinicTypesStateInitial value) initial,
    required TResult Function(_GetClinicsTypeLoadFailure value) loadFailure,
    required TResult Function(GetClinicsTypesStateLoading value) loading,
    required TResult Function(_GetClinicsTypesStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClinicTypesStateInitial value)? initial,
    TResult? Function(_GetClinicsTypeLoadFailure value)? loadFailure,
    TResult? Function(GetClinicsTypesStateLoading value)? loading,
    TResult? Function(_GetClinicsTypesStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClinicTypesStateInitial value)? initial,
    TResult Function(_GetClinicsTypeLoadFailure value)? loadFailure,
    TResult Function(GetClinicsTypesStateLoading value)? loading,
    TResult Function(_GetClinicsTypesStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetClinicsTypesStateLoading implements GetClinicsTypesState {
  const factory GetClinicsTypesStateLoading() =
      _$GetClinicsTypesStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetClinicsTypesStateLoadSuccessImplCopyWith<$Res> {
  factory _$$GetClinicsTypesStateLoadSuccessImplCopyWith(
          _$GetClinicsTypesStateLoadSuccessImpl value,
          $Res Function(_$GetClinicsTypesStateLoadSuccessImpl) then) =
      __$$GetClinicsTypesStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetClinicsTypesEntity getClinicsTypesEntity});
}

/// @nodoc
class __$$GetClinicsTypesStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$GetClinicsTypesStateCopyWithImpl<$Res,
        _$GetClinicsTypesStateLoadSuccessImpl>
    implements _$$GetClinicsTypesStateLoadSuccessImplCopyWith<$Res> {
  __$$GetClinicsTypesStateLoadSuccessImplCopyWithImpl(
      _$GetClinicsTypesStateLoadSuccessImpl _value,
      $Res Function(_$GetClinicsTypesStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getClinicsTypesEntity = null,
  }) {
    return _then(_$GetClinicsTypesStateLoadSuccessImpl(
      null == getClinicsTypesEntity
          ? _value.getClinicsTypesEntity
          : getClinicsTypesEntity // ignore: cast_nullable_to_non_nullable
              as GetClinicsTypesEntity,
    ));
  }
}

/// @nodoc

class _$GetClinicsTypesStateLoadSuccessImpl
    implements _GetClinicsTypesStateLoadSuccess {
  const _$GetClinicsTypesStateLoadSuccessImpl(this.getClinicsTypesEntity);

  @override
  final GetClinicsTypesEntity getClinicsTypesEntity;

  @override
  String toString() {
    return 'GetClinicsTypesState.loadSuccess(getClinicsTypesEntity: $getClinicsTypesEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClinicsTypesStateLoadSuccessImpl &&
            (identical(other.getClinicsTypesEntity, getClinicsTypesEntity) ||
                other.getClinicsTypesEntity == getClinicsTypesEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getClinicsTypesEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClinicsTypesStateLoadSuccessImplCopyWith<
          _$GetClinicsTypesStateLoadSuccessImpl>
      get copyWith => __$$GetClinicsTypesStateLoadSuccessImplCopyWithImpl<
          _$GetClinicsTypesStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetClinicsTypesEntity getClinicsTypesEntity)
        loadSuccess,
  }) {
    return loadSuccess(getClinicsTypesEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetClinicsTypesEntity getClinicsTypesEntity)? loadSuccess,
  }) {
    return loadSuccess?.call(getClinicsTypesEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetClinicsTypesEntity getClinicsTypesEntity)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(getClinicsTypesEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClinicTypesStateInitial value) initial,
    required TResult Function(_GetClinicsTypeLoadFailure value) loadFailure,
    required TResult Function(GetClinicsTypesStateLoading value) loading,
    required TResult Function(_GetClinicsTypesStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClinicTypesStateInitial value)? initial,
    TResult? Function(_GetClinicsTypeLoadFailure value)? loadFailure,
    TResult? Function(GetClinicsTypesStateLoading value)? loading,
    TResult? Function(_GetClinicsTypesStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClinicTypesStateInitial value)? initial,
    TResult Function(_GetClinicsTypeLoadFailure value)? loadFailure,
    TResult Function(GetClinicsTypesStateLoading value)? loading,
    TResult Function(_GetClinicsTypesStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetClinicsTypesStateLoadSuccess
    implements GetClinicsTypesState {
  const factory _GetClinicsTypesStateLoadSuccess(
          final GetClinicsTypesEntity getClinicsTypesEntity) =
      _$GetClinicsTypesStateLoadSuccessImpl;

  GetClinicsTypesEntity get getClinicsTypesEntity;
  @JsonKey(ignore: true)
  _$$GetClinicsTypesStateLoadSuccessImplCopyWith<
          _$GetClinicsTypesStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
