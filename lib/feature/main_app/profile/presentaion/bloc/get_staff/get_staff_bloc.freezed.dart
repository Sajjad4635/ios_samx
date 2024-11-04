// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_staff_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetStaffEvent {
  GetStaffParam get getStaffParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetStaffParam getStaffParam) getStaffEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetStaffParam getStaffParam)? getStaffEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetStaffParam getStaffParam)? getStaffEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStaffEventCalled value) getStaffEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStaffEventCalled value)? getStaffEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStaffEventCalled value)? getStaffEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetStaffEventCopyWith<GetStaffEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStaffEventCopyWith<$Res> {
  factory $GetStaffEventCopyWith(
          GetStaffEvent value, $Res Function(GetStaffEvent) then) =
      _$GetStaffEventCopyWithImpl<$Res, GetStaffEvent>;
  @useResult
  $Res call({GetStaffParam getStaffParam});
}

/// @nodoc
class _$GetStaffEventCopyWithImpl<$Res, $Val extends GetStaffEvent>
    implements $GetStaffEventCopyWith<$Res> {
  _$GetStaffEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getStaffParam = null,
  }) {
    return _then(_value.copyWith(
      getStaffParam: null == getStaffParam
          ? _value.getStaffParam
          : getStaffParam // ignore: cast_nullable_to_non_nullable
              as GetStaffParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetStaffEventCalledImplCopyWith<$Res>
    implements $GetStaffEventCopyWith<$Res> {
  factory _$$GetStaffEventCalledImplCopyWith(_$GetStaffEventCalledImpl value,
          $Res Function(_$GetStaffEventCalledImpl) then) =
      __$$GetStaffEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetStaffParam getStaffParam});
}

/// @nodoc
class __$$GetStaffEventCalledImplCopyWithImpl<$Res>
    extends _$GetStaffEventCopyWithImpl<$Res, _$GetStaffEventCalledImpl>
    implements _$$GetStaffEventCalledImplCopyWith<$Res> {
  __$$GetStaffEventCalledImplCopyWithImpl(_$GetStaffEventCalledImpl _value,
      $Res Function(_$GetStaffEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getStaffParam = null,
  }) {
    return _then(_$GetStaffEventCalledImpl(
      getStaffParam: null == getStaffParam
          ? _value.getStaffParam
          : getStaffParam // ignore: cast_nullable_to_non_nullable
              as GetStaffParam,
    ));
  }
}

/// @nodoc

class _$GetStaffEventCalledImpl implements _GetStaffEventCalled {
  const _$GetStaffEventCalledImpl({required this.getStaffParam});

  @override
  final GetStaffParam getStaffParam;

  @override
  String toString() {
    return 'GetStaffEvent.getStaffEventCalled(getStaffParam: $getStaffParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStaffEventCalledImpl &&
            (identical(other.getStaffParam, getStaffParam) ||
                other.getStaffParam == getStaffParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getStaffParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStaffEventCalledImplCopyWith<_$GetStaffEventCalledImpl> get copyWith =>
      __$$GetStaffEventCalledImplCopyWithImpl<_$GetStaffEventCalledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetStaffParam getStaffParam) getStaffEventCalled,
  }) {
    return getStaffEventCalled(getStaffParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetStaffParam getStaffParam)? getStaffEventCalled,
  }) {
    return getStaffEventCalled?.call(getStaffParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetStaffParam getStaffParam)? getStaffEventCalled,
    required TResult orElse(),
  }) {
    if (getStaffEventCalled != null) {
      return getStaffEventCalled(getStaffParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStaffEventCalled value) getStaffEventCalled,
  }) {
    return getStaffEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStaffEventCalled value)? getStaffEventCalled,
  }) {
    return getStaffEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStaffEventCalled value)? getStaffEventCalled,
    required TResult orElse(),
  }) {
    if (getStaffEventCalled != null) {
      return getStaffEventCalled(this);
    }
    return orElse();
  }
}

abstract class _GetStaffEventCalled implements GetStaffEvent {
  const factory _GetStaffEventCalled(
      {required final GetStaffParam getStaffParam}) = _$GetStaffEventCalledImpl;

  @override
  GetStaffParam get getStaffParam;
  @override
  @JsonKey(ignore: true)
  _$$GetStaffEventCalledImplCopyWith<_$GetStaffEventCalledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetStaffState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetStaffEntities getStaffEntities) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetStaffEntities getStaffEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetStaffEntities getStaffEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStaffStateInitial value) initial,
    required TResult Function(_GetStaffStateLoadFailure value) loadFailure,
    required TResult Function(GetStaffStateLoading value) loading,
    required TResult Function(_GetStaffStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStaffStateInitial value)? initial,
    TResult? Function(_GetStaffStateLoadFailure value)? loadFailure,
    TResult? Function(GetStaffStateLoading value)? loading,
    TResult? Function(_GetStaffStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStaffStateInitial value)? initial,
    TResult Function(_GetStaffStateLoadFailure value)? loadFailure,
    TResult Function(GetStaffStateLoading value)? loading,
    TResult Function(_GetStaffStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStaffStateCopyWith<$Res> {
  factory $GetStaffStateCopyWith(
          GetStaffState value, $Res Function(GetStaffState) then) =
      _$GetStaffStateCopyWithImpl<$Res, GetStaffState>;
}

/// @nodoc
class _$GetStaffStateCopyWithImpl<$Res, $Val extends GetStaffState>
    implements $GetStaffStateCopyWith<$Res> {
  _$GetStaffStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetStaffStateInitialImplCopyWith<$Res> {
  factory _$$GetStaffStateInitialImplCopyWith(_$GetStaffStateInitialImpl value,
          $Res Function(_$GetStaffStateInitialImpl) then) =
      __$$GetStaffStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStaffStateInitialImplCopyWithImpl<$Res>
    extends _$GetStaffStateCopyWithImpl<$Res, _$GetStaffStateInitialImpl>
    implements _$$GetStaffStateInitialImplCopyWith<$Res> {
  __$$GetStaffStateInitialImplCopyWithImpl(_$GetStaffStateInitialImpl _value,
      $Res Function(_$GetStaffStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetStaffStateInitialImpl implements _GetStaffStateInitial {
  const _$GetStaffStateInitialImpl();

  @override
  String toString() {
    return 'GetStaffState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStaffStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetStaffEntities getStaffEntities) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetStaffEntities getStaffEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetStaffEntities getStaffEntities)? loadSuccess,
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
    required TResult Function(_GetStaffStateInitial value) initial,
    required TResult Function(_GetStaffStateLoadFailure value) loadFailure,
    required TResult Function(GetStaffStateLoading value) loading,
    required TResult Function(_GetStaffStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStaffStateInitial value)? initial,
    TResult? Function(_GetStaffStateLoadFailure value)? loadFailure,
    TResult? Function(GetStaffStateLoading value)? loading,
    TResult? Function(_GetStaffStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStaffStateInitial value)? initial,
    TResult Function(_GetStaffStateLoadFailure value)? loadFailure,
    TResult Function(GetStaffStateLoading value)? loading,
    TResult Function(_GetStaffStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetStaffStateInitial implements GetStaffState {
  const factory _GetStaffStateInitial() = _$GetStaffStateInitialImpl;
}

/// @nodoc
abstract class _$$GetStaffStateLoadFailureImplCopyWith<$Res> {
  factory _$$GetStaffStateLoadFailureImplCopyWith(
          _$GetStaffStateLoadFailureImpl value,
          $Res Function(_$GetStaffStateLoadFailureImpl) then) =
      __$$GetStaffStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$GetStaffStateLoadFailureImplCopyWithImpl<$Res>
    extends _$GetStaffStateCopyWithImpl<$Res, _$GetStaffStateLoadFailureImpl>
    implements _$$GetStaffStateLoadFailureImplCopyWith<$Res> {
  __$$GetStaffStateLoadFailureImplCopyWithImpl(
      _$GetStaffStateLoadFailureImpl _value,
      $Res Function(_$GetStaffStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GetStaffStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$GetStaffStateLoadFailureImpl implements _GetStaffStateLoadFailure {
  const _$GetStaffStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetStaffState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStaffStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStaffStateLoadFailureImplCopyWith<_$GetStaffStateLoadFailureImpl>
      get copyWith => __$$GetStaffStateLoadFailureImplCopyWithImpl<
          _$GetStaffStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetStaffEntities getStaffEntities) loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetStaffEntities getStaffEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetStaffEntities getStaffEntities)? loadSuccess,
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
    required TResult Function(_GetStaffStateInitial value) initial,
    required TResult Function(_GetStaffStateLoadFailure value) loadFailure,
    required TResult Function(GetStaffStateLoading value) loading,
    required TResult Function(_GetStaffStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStaffStateInitial value)? initial,
    TResult? Function(_GetStaffStateLoadFailure value)? loadFailure,
    TResult? Function(GetStaffStateLoading value)? loading,
    TResult? Function(_GetStaffStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStaffStateInitial value)? initial,
    TResult Function(_GetStaffStateLoadFailure value)? loadFailure,
    TResult Function(GetStaffStateLoading value)? loading,
    TResult Function(_GetStaffStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _GetStaffStateLoadFailure implements GetStaffState {
  const factory _GetStaffStateLoadFailure(final Failure failure) =
      _$GetStaffStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$GetStaffStateLoadFailureImplCopyWith<_$GetStaffStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStaffStateLoadingImplCopyWith<$Res> {
  factory _$$GetStaffStateLoadingImplCopyWith(_$GetStaffStateLoadingImpl value,
          $Res Function(_$GetStaffStateLoadingImpl) then) =
      __$$GetStaffStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStaffStateLoadingImplCopyWithImpl<$Res>
    extends _$GetStaffStateCopyWithImpl<$Res, _$GetStaffStateLoadingImpl>
    implements _$$GetStaffStateLoadingImplCopyWith<$Res> {
  __$$GetStaffStateLoadingImplCopyWithImpl(_$GetStaffStateLoadingImpl _value,
      $Res Function(_$GetStaffStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetStaffStateLoadingImpl implements GetStaffStateLoading {
  const _$GetStaffStateLoadingImpl();

  @override
  String toString() {
    return 'GetStaffState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStaffStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetStaffEntities getStaffEntities) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetStaffEntities getStaffEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetStaffEntities getStaffEntities)? loadSuccess,
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
    required TResult Function(_GetStaffStateInitial value) initial,
    required TResult Function(_GetStaffStateLoadFailure value) loadFailure,
    required TResult Function(GetStaffStateLoading value) loading,
    required TResult Function(_GetStaffStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStaffStateInitial value)? initial,
    TResult? Function(_GetStaffStateLoadFailure value)? loadFailure,
    TResult? Function(GetStaffStateLoading value)? loading,
    TResult? Function(_GetStaffStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStaffStateInitial value)? initial,
    TResult Function(_GetStaffStateLoadFailure value)? loadFailure,
    TResult Function(GetStaffStateLoading value)? loading,
    TResult Function(_GetStaffStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetStaffStateLoading implements GetStaffState {
  const factory GetStaffStateLoading() = _$GetStaffStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetStaffStateLoadSuccessImplCopyWith<$Res> {
  factory _$$GetStaffStateLoadSuccessImplCopyWith(
          _$GetStaffStateLoadSuccessImpl value,
          $Res Function(_$GetStaffStateLoadSuccessImpl) then) =
      __$$GetStaffStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetStaffEntities getStaffEntities});
}

/// @nodoc
class __$$GetStaffStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$GetStaffStateCopyWithImpl<$Res, _$GetStaffStateLoadSuccessImpl>
    implements _$$GetStaffStateLoadSuccessImplCopyWith<$Res> {
  __$$GetStaffStateLoadSuccessImplCopyWithImpl(
      _$GetStaffStateLoadSuccessImpl _value,
      $Res Function(_$GetStaffStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getStaffEntities = null,
  }) {
    return _then(_$GetStaffStateLoadSuccessImpl(
      null == getStaffEntities
          ? _value.getStaffEntities
          : getStaffEntities // ignore: cast_nullable_to_non_nullable
              as GetStaffEntities,
    ));
  }
}

/// @nodoc

class _$GetStaffStateLoadSuccessImpl implements _GetStaffStateLoadSuccess {
  const _$GetStaffStateLoadSuccessImpl(this.getStaffEntities);

  @override
  final GetStaffEntities getStaffEntities;

  @override
  String toString() {
    return 'GetStaffState.loadSuccess(getStaffEntities: $getStaffEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStaffStateLoadSuccessImpl &&
            (identical(other.getStaffEntities, getStaffEntities) ||
                other.getStaffEntities == getStaffEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getStaffEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStaffStateLoadSuccessImplCopyWith<_$GetStaffStateLoadSuccessImpl>
      get copyWith => __$$GetStaffStateLoadSuccessImplCopyWithImpl<
          _$GetStaffStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetStaffEntities getStaffEntities) loadSuccess,
  }) {
    return loadSuccess(getStaffEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetStaffEntities getStaffEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(getStaffEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetStaffEntities getStaffEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(getStaffEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStaffStateInitial value) initial,
    required TResult Function(_GetStaffStateLoadFailure value) loadFailure,
    required TResult Function(GetStaffStateLoading value) loading,
    required TResult Function(_GetStaffStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStaffStateInitial value)? initial,
    TResult? Function(_GetStaffStateLoadFailure value)? loadFailure,
    TResult? Function(GetStaffStateLoading value)? loading,
    TResult? Function(_GetStaffStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStaffStateInitial value)? initial,
    TResult Function(_GetStaffStateLoadFailure value)? loadFailure,
    TResult Function(GetStaffStateLoading value)? loading,
    TResult Function(_GetStaffStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetStaffStateLoadSuccess implements GetStaffState {
  const factory _GetStaffStateLoadSuccess(
      final GetStaffEntities getStaffEntities) = _$GetStaffStateLoadSuccessImpl;

  GetStaffEntities get getStaffEntities;
  @JsonKey(ignore: true)
  _$$GetStaffStateLoadSuccessImplCopyWith<_$GetStaffStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
