// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetProfileEvent {
  NoParams get noParams => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoParams noParams) getProfileEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoParams noParams)? getProfileEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoParams noParams)? getProfileEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileEventCalled value)
        getProfileEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileEventCalled value)? getProfileEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileEventCalled value)? getProfileEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetProfileEventCopyWith<GetProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileEventCopyWith<$Res> {
  factory $GetProfileEventCopyWith(
          GetProfileEvent value, $Res Function(GetProfileEvent) then) =
      _$GetProfileEventCopyWithImpl<$Res, GetProfileEvent>;
  @useResult
  $Res call({NoParams noParams});
}

/// @nodoc
class _$GetProfileEventCopyWithImpl<$Res, $Val extends GetProfileEvent>
    implements $GetProfileEventCopyWith<$Res> {
  _$GetProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noParams = null,
  }) {
    return _then(_value.copyWith(
      noParams: null == noParams
          ? _value.noParams
          : noParams // ignore: cast_nullable_to_non_nullable
              as NoParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProfileEventCalledImplCopyWith<$Res>
    implements $GetProfileEventCopyWith<$Res> {
  factory _$$GetProfileEventCalledImplCopyWith(
          _$GetProfileEventCalledImpl value,
          $Res Function(_$GetProfileEventCalledImpl) then) =
      __$$GetProfileEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoParams noParams});
}

/// @nodoc
class __$$GetProfileEventCalledImplCopyWithImpl<$Res>
    extends _$GetProfileEventCopyWithImpl<$Res, _$GetProfileEventCalledImpl>
    implements _$$GetProfileEventCalledImplCopyWith<$Res> {
  __$$GetProfileEventCalledImplCopyWithImpl(_$GetProfileEventCalledImpl _value,
      $Res Function(_$GetProfileEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noParams = null,
  }) {
    return _then(_$GetProfileEventCalledImpl(
      noParams: null == noParams
          ? _value.noParams
          : noParams // ignore: cast_nullable_to_non_nullable
              as NoParams,
    ));
  }
}

/// @nodoc

class _$GetProfileEventCalledImpl implements _GetProfileEventCalled {
  const _$GetProfileEventCalledImpl({required this.noParams});

  @override
  final NoParams noParams;

  @override
  String toString() {
    return 'GetProfileEvent.getProfileEventCalled(noParams: $noParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileEventCalledImpl &&
            (identical(other.noParams, noParams) ||
                other.noParams == noParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileEventCalledImplCopyWith<_$GetProfileEventCalledImpl>
      get copyWith => __$$GetProfileEventCalledImplCopyWithImpl<
          _$GetProfileEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoParams noParams) getProfileEventCalled,
  }) {
    return getProfileEventCalled(noParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoParams noParams)? getProfileEventCalled,
  }) {
    return getProfileEventCalled?.call(noParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoParams noParams)? getProfileEventCalled,
    required TResult orElse(),
  }) {
    if (getProfileEventCalled != null) {
      return getProfileEventCalled(noParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileEventCalled value)
        getProfileEventCalled,
  }) {
    return getProfileEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileEventCalled value)? getProfileEventCalled,
  }) {
    return getProfileEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileEventCalled value)? getProfileEventCalled,
    required TResult orElse(),
  }) {
    if (getProfileEventCalled != null) {
      return getProfileEventCalled(this);
    }
    return orElse();
  }
}

abstract class _GetProfileEventCalled implements GetProfileEvent {
  const factory _GetProfileEventCalled({required final NoParams noParams}) =
      _$GetProfileEventCalledImpl;

  @override
  NoParams get noParams;
  @override
  @JsonKey(ignore: true)
  _$$GetProfileEventCalledImplCopyWith<_$GetProfileEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetProfileEntities getProfileEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetProfileEntities getProfileEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetProfileEntities getProfileEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileStateInitial value) initial,
    required TResult Function(_GetProfileStateLoadFailure value) loadFailure,
    required TResult Function(GetUserProfileStateLoading value) loading,
    required TResult Function(_GetProfileStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial value)? initial,
    TResult? Function(_GetProfileStateLoadFailure value)? loadFailure,
    TResult? Function(GetUserProfileStateLoading value)? loading,
    TResult? Function(_GetProfileStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial value)? initial,
    TResult Function(_GetProfileStateLoadFailure value)? loadFailure,
    TResult Function(GetUserProfileStateLoading value)? loading,
    TResult Function(_GetProfileStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileStateCopyWith<$Res> {
  factory $GetProfileStateCopyWith(
          GetProfileState value, $Res Function(GetProfileState) then) =
      _$GetProfileStateCopyWithImpl<$Res, GetProfileState>;
}

/// @nodoc
class _$GetProfileStateCopyWithImpl<$Res, $Val extends GetProfileState>
    implements $GetProfileStateCopyWith<$Res> {
  _$GetProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProfileStateInitialImplCopyWith<$Res> {
  factory _$$GetProfileStateInitialImplCopyWith(
          _$GetProfileStateInitialImpl value,
          $Res Function(_$GetProfileStateInitialImpl) then) =
      __$$GetProfileStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProfileStateInitialImplCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res, _$GetProfileStateInitialImpl>
    implements _$$GetProfileStateInitialImplCopyWith<$Res> {
  __$$GetProfileStateInitialImplCopyWithImpl(
      _$GetProfileStateInitialImpl _value,
      $Res Function(_$GetProfileStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProfileStateInitialImpl implements _GetProfileStateInitial {
  const _$GetProfileStateInitialImpl();

  @override
  String toString() {
    return 'GetProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetProfileEntities getProfileEntities)
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
    TResult? Function(GetProfileEntities getProfileEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetProfileEntities getProfileEntities)? loadSuccess,
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
    required TResult Function(_GetProfileStateInitial value) initial,
    required TResult Function(_GetProfileStateLoadFailure value) loadFailure,
    required TResult Function(GetUserProfileStateLoading value) loading,
    required TResult Function(_GetProfileStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial value)? initial,
    TResult? Function(_GetProfileStateLoadFailure value)? loadFailure,
    TResult? Function(GetUserProfileStateLoading value)? loading,
    TResult? Function(_GetProfileStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial value)? initial,
    TResult Function(_GetProfileStateLoadFailure value)? loadFailure,
    TResult Function(GetUserProfileStateLoading value)? loading,
    TResult Function(_GetProfileStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetProfileStateInitial implements GetProfileState {
  const factory _GetProfileStateInitial() = _$GetProfileStateInitialImpl;
}

/// @nodoc
abstract class _$$GetProfileStateLoadFailureImplCopyWith<$Res> {
  factory _$$GetProfileStateLoadFailureImplCopyWith(
          _$GetProfileStateLoadFailureImpl value,
          $Res Function(_$GetProfileStateLoadFailureImpl) then) =
      __$$GetProfileStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$GetProfileStateLoadFailureImplCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res,
        _$GetProfileStateLoadFailureImpl>
    implements _$$GetProfileStateLoadFailureImplCopyWith<$Res> {
  __$$GetProfileStateLoadFailureImplCopyWithImpl(
      _$GetProfileStateLoadFailureImpl _value,
      $Res Function(_$GetProfileStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GetProfileStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$GetProfileStateLoadFailureImpl implements _GetProfileStateLoadFailure {
  const _$GetProfileStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetProfileState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileStateLoadFailureImplCopyWith<_$GetProfileStateLoadFailureImpl>
      get copyWith => __$$GetProfileStateLoadFailureImplCopyWithImpl<
          _$GetProfileStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetProfileEntities getProfileEntities)
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
    TResult? Function(GetProfileEntities getProfileEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetProfileEntities getProfileEntities)? loadSuccess,
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
    required TResult Function(_GetProfileStateInitial value) initial,
    required TResult Function(_GetProfileStateLoadFailure value) loadFailure,
    required TResult Function(GetUserProfileStateLoading value) loading,
    required TResult Function(_GetProfileStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial value)? initial,
    TResult? Function(_GetProfileStateLoadFailure value)? loadFailure,
    TResult? Function(GetUserProfileStateLoading value)? loading,
    TResult? Function(_GetProfileStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial value)? initial,
    TResult Function(_GetProfileStateLoadFailure value)? loadFailure,
    TResult Function(GetUserProfileStateLoading value)? loading,
    TResult Function(_GetProfileStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _GetProfileStateLoadFailure implements GetProfileState {
  const factory _GetProfileStateLoadFailure(final Failure failure) =
      _$GetProfileStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$GetProfileStateLoadFailureImplCopyWith<_$GetProfileStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserProfileStateLoadingImplCopyWith<$Res> {
  factory _$$GetUserProfileStateLoadingImplCopyWith(
          _$GetUserProfileStateLoadingImpl value,
          $Res Function(_$GetUserProfileStateLoadingImpl) then) =
      __$$GetUserProfileStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserProfileStateLoadingImplCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res,
        _$GetUserProfileStateLoadingImpl>
    implements _$$GetUserProfileStateLoadingImplCopyWith<$Res> {
  __$$GetUserProfileStateLoadingImplCopyWithImpl(
      _$GetUserProfileStateLoadingImpl _value,
      $Res Function(_$GetUserProfileStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserProfileStateLoadingImpl implements GetUserProfileStateLoading {
  const _$GetUserProfileStateLoadingImpl();

  @override
  String toString() {
    return 'GetProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserProfileStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetProfileEntities getProfileEntities)
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
    TResult? Function(GetProfileEntities getProfileEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetProfileEntities getProfileEntities)? loadSuccess,
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
    required TResult Function(_GetProfileStateInitial value) initial,
    required TResult Function(_GetProfileStateLoadFailure value) loadFailure,
    required TResult Function(GetUserProfileStateLoading value) loading,
    required TResult Function(_GetProfileStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial value)? initial,
    TResult? Function(_GetProfileStateLoadFailure value)? loadFailure,
    TResult? Function(GetUserProfileStateLoading value)? loading,
    TResult? Function(_GetProfileStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial value)? initial,
    TResult Function(_GetProfileStateLoadFailure value)? loadFailure,
    TResult Function(GetUserProfileStateLoading value)? loading,
    TResult Function(_GetProfileStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetUserProfileStateLoading implements GetProfileState {
  const factory GetUserProfileStateLoading() = _$GetUserProfileStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetProfileStateLoadSuccessImplCopyWith<$Res> {
  factory _$$GetProfileStateLoadSuccessImplCopyWith(
          _$GetProfileStateLoadSuccessImpl value,
          $Res Function(_$GetProfileStateLoadSuccessImpl) then) =
      __$$GetProfileStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetProfileEntities getProfileEntities});
}

/// @nodoc
class __$$GetProfileStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res,
        _$GetProfileStateLoadSuccessImpl>
    implements _$$GetProfileStateLoadSuccessImplCopyWith<$Res> {
  __$$GetProfileStateLoadSuccessImplCopyWithImpl(
      _$GetProfileStateLoadSuccessImpl _value,
      $Res Function(_$GetProfileStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getProfileEntities = null,
  }) {
    return _then(_$GetProfileStateLoadSuccessImpl(
      null == getProfileEntities
          ? _value.getProfileEntities
          : getProfileEntities // ignore: cast_nullable_to_non_nullable
              as GetProfileEntities,
    ));
  }
}

/// @nodoc

class _$GetProfileStateLoadSuccessImpl implements _GetProfileStateLoadSuccess {
  const _$GetProfileStateLoadSuccessImpl(this.getProfileEntities);

  @override
  final GetProfileEntities getProfileEntities;

  @override
  String toString() {
    return 'GetProfileState.loadSuccess(getProfileEntities: $getProfileEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileStateLoadSuccessImpl &&
            (identical(other.getProfileEntities, getProfileEntities) ||
                other.getProfileEntities == getProfileEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getProfileEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileStateLoadSuccessImplCopyWith<_$GetProfileStateLoadSuccessImpl>
      get copyWith => __$$GetProfileStateLoadSuccessImplCopyWithImpl<
          _$GetProfileStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetProfileEntities getProfileEntities)
        loadSuccess,
  }) {
    return loadSuccess(getProfileEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetProfileEntities getProfileEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(getProfileEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetProfileEntities getProfileEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(getProfileEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileStateInitial value) initial,
    required TResult Function(_GetProfileStateLoadFailure value) loadFailure,
    required TResult Function(GetUserProfileStateLoading value) loading,
    required TResult Function(_GetProfileStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial value)? initial,
    TResult? Function(_GetProfileStateLoadFailure value)? loadFailure,
    TResult? Function(GetUserProfileStateLoading value)? loading,
    TResult? Function(_GetProfileStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial value)? initial,
    TResult Function(_GetProfileStateLoadFailure value)? loadFailure,
    TResult Function(GetUserProfileStateLoading value)? loading,
    TResult Function(_GetProfileStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetProfileStateLoadSuccess implements GetProfileState {
  const factory _GetProfileStateLoadSuccess(
          final GetProfileEntities getProfileEntities) =
      _$GetProfileStateLoadSuccessImpl;

  GetProfileEntities get getProfileEntities;
  @JsonKey(ignore: true)
  _$$GetProfileStateLoadSuccessImplCopyWith<_$GetProfileStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
