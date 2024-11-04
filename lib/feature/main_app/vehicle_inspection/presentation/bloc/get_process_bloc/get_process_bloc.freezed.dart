// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_process_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetProcessEvent {
  GetProcessParam get getProcessParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetProcessParam getProcessParam)
        getProcessEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetProcessParam getProcessParam)? getProcessEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetProcessParam getProcessParam)? getProcessEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProcessEventCalled value)
        getProcessEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProcessEventCalled value)? getProcessEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProcessEventCalled value)? getProcessEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetProcessEventCopyWith<GetProcessEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProcessEventCopyWith<$Res> {
  factory $GetProcessEventCopyWith(
          GetProcessEvent value, $Res Function(GetProcessEvent) then) =
      _$GetProcessEventCopyWithImpl<$Res, GetProcessEvent>;
  @useResult
  $Res call({GetProcessParam getProcessParam});
}

/// @nodoc
class _$GetProcessEventCopyWithImpl<$Res, $Val extends GetProcessEvent>
    implements $GetProcessEventCopyWith<$Res> {
  _$GetProcessEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getProcessParam = null,
  }) {
    return _then(_value.copyWith(
      getProcessParam: null == getProcessParam
          ? _value.getProcessParam
          : getProcessParam // ignore: cast_nullable_to_non_nullable
              as GetProcessParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProcessEventCalledImplCopyWith<$Res>
    implements $GetProcessEventCopyWith<$Res> {
  factory _$$GetProcessEventCalledImplCopyWith(
          _$GetProcessEventCalledImpl value,
          $Res Function(_$GetProcessEventCalledImpl) then) =
      __$$GetProcessEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetProcessParam getProcessParam});
}

/// @nodoc
class __$$GetProcessEventCalledImplCopyWithImpl<$Res>
    extends _$GetProcessEventCopyWithImpl<$Res, _$GetProcessEventCalledImpl>
    implements _$$GetProcessEventCalledImplCopyWith<$Res> {
  __$$GetProcessEventCalledImplCopyWithImpl(_$GetProcessEventCalledImpl _value,
      $Res Function(_$GetProcessEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getProcessParam = null,
  }) {
    return _then(_$GetProcessEventCalledImpl(
      getProcessParam: null == getProcessParam
          ? _value.getProcessParam
          : getProcessParam // ignore: cast_nullable_to_non_nullable
              as GetProcessParam,
    ));
  }
}

/// @nodoc

class _$GetProcessEventCalledImpl implements _GetProcessEventCalled {
  const _$GetProcessEventCalledImpl({required this.getProcessParam});

  @override
  final GetProcessParam getProcessParam;

  @override
  String toString() {
    return 'GetProcessEvent.getProcessEventCalled(getProcessParam: $getProcessParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProcessEventCalledImpl &&
            (identical(other.getProcessParam, getProcessParam) ||
                other.getProcessParam == getProcessParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getProcessParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProcessEventCalledImplCopyWith<_$GetProcessEventCalledImpl>
      get copyWith => __$$GetProcessEventCalledImplCopyWithImpl<
          _$GetProcessEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetProcessParam getProcessParam)
        getProcessEventCalled,
  }) {
    return getProcessEventCalled(getProcessParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetProcessParam getProcessParam)? getProcessEventCalled,
  }) {
    return getProcessEventCalled?.call(getProcessParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetProcessParam getProcessParam)? getProcessEventCalled,
    required TResult orElse(),
  }) {
    if (getProcessEventCalled != null) {
      return getProcessEventCalled(getProcessParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProcessEventCalled value)
        getProcessEventCalled,
  }) {
    return getProcessEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProcessEventCalled value)? getProcessEventCalled,
  }) {
    return getProcessEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProcessEventCalled value)? getProcessEventCalled,
    required TResult orElse(),
  }) {
    if (getProcessEventCalled != null) {
      return getProcessEventCalled(this);
    }
    return orElse();
  }
}

abstract class _GetProcessEventCalled implements GetProcessEvent {
  const factory _GetProcessEventCalled(
          {required final GetProcessParam getProcessParam}) =
      _$GetProcessEventCalledImpl;

  @override
  GetProcessParam get getProcessParam;
  @override
  @JsonKey(ignore: true)
  _$$GetProcessEventCalledImplCopyWith<_$GetProcessEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetProcessState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetProcessEntities getProcessEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetProcessEntities getProcessEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetProcessEntities getProcessEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProcessStateInitial value) initial,
    required TResult Function(_GetProcessStateLoadFailure value) loadFailure,
    required TResult Function(GetProcessStateLoading value) loading,
    required TResult Function(_GetProcessStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProcessStateInitial value)? initial,
    TResult? Function(_GetProcessStateLoadFailure value)? loadFailure,
    TResult? Function(GetProcessStateLoading value)? loading,
    TResult? Function(_GetProcessStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProcessStateInitial value)? initial,
    TResult Function(_GetProcessStateLoadFailure value)? loadFailure,
    TResult Function(GetProcessStateLoading value)? loading,
    TResult Function(_GetProcessStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProcessStateCopyWith<$Res> {
  factory $GetProcessStateCopyWith(
          GetProcessState value, $Res Function(GetProcessState) then) =
      _$GetProcessStateCopyWithImpl<$Res, GetProcessState>;
}

/// @nodoc
class _$GetProcessStateCopyWithImpl<$Res, $Val extends GetProcessState>
    implements $GetProcessStateCopyWith<$Res> {
  _$GetProcessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProcessStateInitialImplCopyWith<$Res> {
  factory _$$GetProcessStateInitialImplCopyWith(
          _$GetProcessStateInitialImpl value,
          $Res Function(_$GetProcessStateInitialImpl) then) =
      __$$GetProcessStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProcessStateInitialImplCopyWithImpl<$Res>
    extends _$GetProcessStateCopyWithImpl<$Res, _$GetProcessStateInitialImpl>
    implements _$$GetProcessStateInitialImplCopyWith<$Res> {
  __$$GetProcessStateInitialImplCopyWithImpl(
      _$GetProcessStateInitialImpl _value,
      $Res Function(_$GetProcessStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProcessStateInitialImpl implements _GetProcessStateInitial {
  const _$GetProcessStateInitialImpl();

  @override
  String toString() {
    return 'GetProcessState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProcessStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetProcessEntities getProcessEntities)
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
    TResult? Function(GetProcessEntities getProcessEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetProcessEntities getProcessEntities)? loadSuccess,
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
    required TResult Function(_GetProcessStateInitial value) initial,
    required TResult Function(_GetProcessStateLoadFailure value) loadFailure,
    required TResult Function(GetProcessStateLoading value) loading,
    required TResult Function(_GetProcessStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProcessStateInitial value)? initial,
    TResult? Function(_GetProcessStateLoadFailure value)? loadFailure,
    TResult? Function(GetProcessStateLoading value)? loading,
    TResult? Function(_GetProcessStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProcessStateInitial value)? initial,
    TResult Function(_GetProcessStateLoadFailure value)? loadFailure,
    TResult Function(GetProcessStateLoading value)? loading,
    TResult Function(_GetProcessStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetProcessStateInitial implements GetProcessState {
  const factory _GetProcessStateInitial() = _$GetProcessStateInitialImpl;
}

/// @nodoc
abstract class _$$GetProcessStateLoadFailureImplCopyWith<$Res> {
  factory _$$GetProcessStateLoadFailureImplCopyWith(
          _$GetProcessStateLoadFailureImpl value,
          $Res Function(_$GetProcessStateLoadFailureImpl) then) =
      __$$GetProcessStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$GetProcessStateLoadFailureImplCopyWithImpl<$Res>
    extends _$GetProcessStateCopyWithImpl<$Res,
        _$GetProcessStateLoadFailureImpl>
    implements _$$GetProcessStateLoadFailureImplCopyWith<$Res> {
  __$$GetProcessStateLoadFailureImplCopyWithImpl(
      _$GetProcessStateLoadFailureImpl _value,
      $Res Function(_$GetProcessStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GetProcessStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$GetProcessStateLoadFailureImpl implements _GetProcessStateLoadFailure {
  const _$GetProcessStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetProcessState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProcessStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProcessStateLoadFailureImplCopyWith<_$GetProcessStateLoadFailureImpl>
      get copyWith => __$$GetProcessStateLoadFailureImplCopyWithImpl<
          _$GetProcessStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetProcessEntities getProcessEntities)
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
    TResult? Function(GetProcessEntities getProcessEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetProcessEntities getProcessEntities)? loadSuccess,
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
    required TResult Function(_GetProcessStateInitial value) initial,
    required TResult Function(_GetProcessStateLoadFailure value) loadFailure,
    required TResult Function(GetProcessStateLoading value) loading,
    required TResult Function(_GetProcessStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProcessStateInitial value)? initial,
    TResult? Function(_GetProcessStateLoadFailure value)? loadFailure,
    TResult? Function(GetProcessStateLoading value)? loading,
    TResult? Function(_GetProcessStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProcessStateInitial value)? initial,
    TResult Function(_GetProcessStateLoadFailure value)? loadFailure,
    TResult Function(GetProcessStateLoading value)? loading,
    TResult Function(_GetProcessStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _GetProcessStateLoadFailure implements GetProcessState {
  const factory _GetProcessStateLoadFailure(final Failure failure) =
      _$GetProcessStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$GetProcessStateLoadFailureImplCopyWith<_$GetProcessStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProcessStateLoadingImplCopyWith<$Res> {
  factory _$$GetProcessStateLoadingImplCopyWith(
          _$GetProcessStateLoadingImpl value,
          $Res Function(_$GetProcessStateLoadingImpl) then) =
      __$$GetProcessStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProcessStateLoadingImplCopyWithImpl<$Res>
    extends _$GetProcessStateCopyWithImpl<$Res, _$GetProcessStateLoadingImpl>
    implements _$$GetProcessStateLoadingImplCopyWith<$Res> {
  __$$GetProcessStateLoadingImplCopyWithImpl(
      _$GetProcessStateLoadingImpl _value,
      $Res Function(_$GetProcessStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProcessStateLoadingImpl implements GetProcessStateLoading {
  const _$GetProcessStateLoadingImpl();

  @override
  String toString() {
    return 'GetProcessState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProcessStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetProcessEntities getProcessEntities)
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
    TResult? Function(GetProcessEntities getProcessEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetProcessEntities getProcessEntities)? loadSuccess,
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
    required TResult Function(_GetProcessStateInitial value) initial,
    required TResult Function(_GetProcessStateLoadFailure value) loadFailure,
    required TResult Function(GetProcessStateLoading value) loading,
    required TResult Function(_GetProcessStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProcessStateInitial value)? initial,
    TResult? Function(_GetProcessStateLoadFailure value)? loadFailure,
    TResult? Function(GetProcessStateLoading value)? loading,
    TResult? Function(_GetProcessStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProcessStateInitial value)? initial,
    TResult Function(_GetProcessStateLoadFailure value)? loadFailure,
    TResult Function(GetProcessStateLoading value)? loading,
    TResult Function(_GetProcessStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetProcessStateLoading implements GetProcessState {
  const factory GetProcessStateLoading() = _$GetProcessStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetProcessStateLoadSuccessImplCopyWith<$Res> {
  factory _$$GetProcessStateLoadSuccessImplCopyWith(
          _$GetProcessStateLoadSuccessImpl value,
          $Res Function(_$GetProcessStateLoadSuccessImpl) then) =
      __$$GetProcessStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetProcessEntities getProcessEntities});
}

/// @nodoc
class __$$GetProcessStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$GetProcessStateCopyWithImpl<$Res,
        _$GetProcessStateLoadSuccessImpl>
    implements _$$GetProcessStateLoadSuccessImplCopyWith<$Res> {
  __$$GetProcessStateLoadSuccessImplCopyWithImpl(
      _$GetProcessStateLoadSuccessImpl _value,
      $Res Function(_$GetProcessStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getProcessEntities = null,
  }) {
    return _then(_$GetProcessStateLoadSuccessImpl(
      null == getProcessEntities
          ? _value.getProcessEntities
          : getProcessEntities // ignore: cast_nullable_to_non_nullable
              as GetProcessEntities,
    ));
  }
}

/// @nodoc

class _$GetProcessStateLoadSuccessImpl implements _GetProcessStateLoadSuccess {
  const _$GetProcessStateLoadSuccessImpl(this.getProcessEntities);

  @override
  final GetProcessEntities getProcessEntities;

  @override
  String toString() {
    return 'GetProcessState.loadSuccess(getProcessEntities: $getProcessEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProcessStateLoadSuccessImpl &&
            (identical(other.getProcessEntities, getProcessEntities) ||
                other.getProcessEntities == getProcessEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getProcessEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProcessStateLoadSuccessImplCopyWith<_$GetProcessStateLoadSuccessImpl>
      get copyWith => __$$GetProcessStateLoadSuccessImplCopyWithImpl<
          _$GetProcessStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetProcessEntities getProcessEntities)
        loadSuccess,
  }) {
    return loadSuccess(getProcessEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetProcessEntities getProcessEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(getProcessEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetProcessEntities getProcessEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(getProcessEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProcessStateInitial value) initial,
    required TResult Function(_GetProcessStateLoadFailure value) loadFailure,
    required TResult Function(GetProcessStateLoading value) loading,
    required TResult Function(_GetProcessStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProcessStateInitial value)? initial,
    TResult? Function(_GetProcessStateLoadFailure value)? loadFailure,
    TResult? Function(GetProcessStateLoading value)? loading,
    TResult? Function(_GetProcessStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProcessStateInitial value)? initial,
    TResult Function(_GetProcessStateLoadFailure value)? loadFailure,
    TResult Function(GetProcessStateLoading value)? loading,
    TResult Function(_GetProcessStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetProcessStateLoadSuccess implements GetProcessState {
  const factory _GetProcessStateLoadSuccess(
          final GetProcessEntities getProcessEntities) =
      _$GetProcessStateLoadSuccessImpl;

  GetProcessEntities get getProcessEntities;
  @JsonKey(ignore: true)
  _$$GetProcessStateLoadSuccessImplCopyWith<_$GetProcessStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
