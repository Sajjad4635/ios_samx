// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_profile_picture_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DownloadProfilePictureEvent {
  DownloadProfilePictureParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DownloadProfilePictureParam param)
        profilePictureCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DownloadProfilePictureParam param)? profilePictureCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DownloadProfilePictureParam param)? profilePictureCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfilePictureEventCalled value)
        profilePictureCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfilePictureEventCalled value)? profilePictureCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfilePictureEventCalled value)? profilePictureCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadProfilePictureEventCopyWith<DownloadProfilePictureEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadProfilePictureEventCopyWith<$Res> {
  factory $DownloadProfilePictureEventCopyWith(
          DownloadProfilePictureEvent value,
          $Res Function(DownloadProfilePictureEvent) then) =
      _$DownloadProfilePictureEventCopyWithImpl<$Res,
          DownloadProfilePictureEvent>;
  @useResult
  $Res call({DownloadProfilePictureParam param});
}

/// @nodoc
class _$DownloadProfilePictureEventCopyWithImpl<$Res,
        $Val extends DownloadProfilePictureEvent>
    implements $DownloadProfilePictureEventCopyWith<$Res> {
  _$DownloadProfilePictureEventCopyWithImpl(this._value, this._then);

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
              as DownloadProfilePictureParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfilePictureEventCalledImplCopyWith<$Res>
    implements $DownloadProfilePictureEventCopyWith<$Res> {
  factory _$$ProfilePictureEventCalledImplCopyWith(
          _$ProfilePictureEventCalledImpl value,
          $Res Function(_$ProfilePictureEventCalledImpl) then) =
      __$$ProfilePictureEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DownloadProfilePictureParam param});
}

/// @nodoc
class __$$ProfilePictureEventCalledImplCopyWithImpl<$Res>
    extends _$DownloadProfilePictureEventCopyWithImpl<$Res,
        _$ProfilePictureEventCalledImpl>
    implements _$$ProfilePictureEventCalledImplCopyWith<$Res> {
  __$$ProfilePictureEventCalledImplCopyWithImpl(
      _$ProfilePictureEventCalledImpl _value,
      $Res Function(_$ProfilePictureEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$ProfilePictureEventCalledImpl(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as DownloadProfilePictureParam,
    ));
  }
}

/// @nodoc

class _$ProfilePictureEventCalledImpl implements _ProfilePictureEventCalled {
  const _$ProfilePictureEventCalledImpl({required this.param});

  @override
  final DownloadProfilePictureParam param;

  @override
  String toString() {
    return 'DownloadProfilePictureEvent.profilePictureCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePictureEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePictureEventCalledImplCopyWith<_$ProfilePictureEventCalledImpl>
      get copyWith => __$$ProfilePictureEventCalledImplCopyWithImpl<
          _$ProfilePictureEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DownloadProfilePictureParam param)
        profilePictureCalled,
  }) {
    return profilePictureCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DownloadProfilePictureParam param)? profilePictureCalled,
  }) {
    return profilePictureCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DownloadProfilePictureParam param)? profilePictureCalled,
    required TResult orElse(),
  }) {
    if (profilePictureCalled != null) {
      return profilePictureCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfilePictureEventCalled value)
        profilePictureCalled,
  }) {
    return profilePictureCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProfilePictureEventCalled value)? profilePictureCalled,
  }) {
    return profilePictureCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfilePictureEventCalled value)? profilePictureCalled,
    required TResult orElse(),
  }) {
    if (profilePictureCalled != null) {
      return profilePictureCalled(this);
    }
    return orElse();
  }
}

abstract class _ProfilePictureEventCalled
    implements DownloadProfilePictureEvent {
  const factory _ProfilePictureEventCalled(
          {required final DownloadProfilePictureParam param}) =
      _$ProfilePictureEventCalledImpl;

  @override
  DownloadProfilePictureParam get param;
  @override
  @JsonKey(ignore: true)
  _$$ProfilePictureEventCalledImplCopyWith<_$ProfilePictureEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DownloadProfilePictureState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DownloadProfilePictureEntity profilePictureEntity)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(DownloadProfilePictureEntity profilePictureEntity)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(DownloadProfilePictureEntity profilePictureEntity)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadProfilePictureStateInitial value)
        initial,
    required TResult Function(_DownloadProfilePictureStateLoadFailure value)
        loadFailure,
    required TResult Function(DownloadProfilePictureStateLoading value) loading,
    required TResult Function(_DownloadProfilePictureStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DownloadProfilePictureStateInitial value)? initial,
    TResult? Function(_DownloadProfilePictureStateLoadFailure value)?
        loadFailure,
    TResult? Function(DownloadProfilePictureStateLoading value)? loading,
    TResult? Function(_DownloadProfilePictureStateLoadSuccess value)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadProfilePictureStateInitial value)? initial,
    TResult Function(_DownloadProfilePictureStateLoadFailure value)?
        loadFailure,
    TResult Function(DownloadProfilePictureStateLoading value)? loading,
    TResult Function(_DownloadProfilePictureStateLoadSuccess value)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadProfilePictureStateCopyWith<$Res> {
  factory $DownloadProfilePictureStateCopyWith(
          DownloadProfilePictureState value,
          $Res Function(DownloadProfilePictureState) then) =
      _$DownloadProfilePictureStateCopyWithImpl<$Res,
          DownloadProfilePictureState>;
}

/// @nodoc
class _$DownloadProfilePictureStateCopyWithImpl<$Res,
        $Val extends DownloadProfilePictureState>
    implements $DownloadProfilePictureStateCopyWith<$Res> {
  _$DownloadProfilePictureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DownloadProfilePictureStateInitialImplCopyWith<$Res> {
  factory _$$DownloadProfilePictureStateInitialImplCopyWith(
          _$DownloadProfilePictureStateInitialImpl value,
          $Res Function(_$DownloadProfilePictureStateInitialImpl) then) =
      __$$DownloadProfilePictureStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DownloadProfilePictureStateInitialImplCopyWithImpl<$Res>
    extends _$DownloadProfilePictureStateCopyWithImpl<$Res,
        _$DownloadProfilePictureStateInitialImpl>
    implements _$$DownloadProfilePictureStateInitialImplCopyWith<$Res> {
  __$$DownloadProfilePictureStateInitialImplCopyWithImpl(
      _$DownloadProfilePictureStateInitialImpl _value,
      $Res Function(_$DownloadProfilePictureStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DownloadProfilePictureStateInitialImpl
    implements _DownloadProfilePictureStateInitial {
  const _$DownloadProfilePictureStateInitialImpl();

  @override
  String toString() {
    return 'DownloadProfilePictureState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadProfilePictureStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DownloadProfilePictureEntity profilePictureEntity)
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
    TResult? Function(DownloadProfilePictureEntity profilePictureEntity)?
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
    TResult Function(DownloadProfilePictureEntity profilePictureEntity)?
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
    required TResult Function(_DownloadProfilePictureStateInitial value)
        initial,
    required TResult Function(_DownloadProfilePictureStateLoadFailure value)
        loadFailure,
    required TResult Function(DownloadProfilePictureStateLoading value) loading,
    required TResult Function(_DownloadProfilePictureStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DownloadProfilePictureStateInitial value)? initial,
    TResult? Function(_DownloadProfilePictureStateLoadFailure value)?
        loadFailure,
    TResult? Function(DownloadProfilePictureStateLoading value)? loading,
    TResult? Function(_DownloadProfilePictureStateLoadSuccess value)?
        loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadProfilePictureStateInitial value)? initial,
    TResult Function(_DownloadProfilePictureStateLoadFailure value)?
        loadFailure,
    TResult Function(DownloadProfilePictureStateLoading value)? loading,
    TResult Function(_DownloadProfilePictureStateLoadSuccess value)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DownloadProfilePictureStateInitial
    implements DownloadProfilePictureState {
  const factory _DownloadProfilePictureStateInitial() =
      _$DownloadProfilePictureStateInitialImpl;
}

/// @nodoc
abstract class _$$DownloadProfilePictureStateLoadFailureImplCopyWith<$Res> {
  factory _$$DownloadProfilePictureStateLoadFailureImplCopyWith(
          _$DownloadProfilePictureStateLoadFailureImpl value,
          $Res Function(_$DownloadProfilePictureStateLoadFailureImpl) then) =
      __$$DownloadProfilePictureStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$DownloadProfilePictureStateLoadFailureImplCopyWithImpl<$Res>
    extends _$DownloadProfilePictureStateCopyWithImpl<$Res,
        _$DownloadProfilePictureStateLoadFailureImpl>
    implements _$$DownloadProfilePictureStateLoadFailureImplCopyWith<$Res> {
  __$$DownloadProfilePictureStateLoadFailureImplCopyWithImpl(
      _$DownloadProfilePictureStateLoadFailureImpl _value,
      $Res Function(_$DownloadProfilePictureStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$DownloadProfilePictureStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$DownloadProfilePictureStateLoadFailureImpl
    implements _DownloadProfilePictureStateLoadFailure {
  const _$DownloadProfilePictureStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'DownloadProfilePictureState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadProfilePictureStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadProfilePictureStateLoadFailureImplCopyWith<
          _$DownloadProfilePictureStateLoadFailureImpl>
      get copyWith =>
          __$$DownloadProfilePictureStateLoadFailureImplCopyWithImpl<
              _$DownloadProfilePictureStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DownloadProfilePictureEntity profilePictureEntity)
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
    TResult? Function(DownloadProfilePictureEntity profilePictureEntity)?
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
    TResult Function(DownloadProfilePictureEntity profilePictureEntity)?
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
    required TResult Function(_DownloadProfilePictureStateInitial value)
        initial,
    required TResult Function(_DownloadProfilePictureStateLoadFailure value)
        loadFailure,
    required TResult Function(DownloadProfilePictureStateLoading value) loading,
    required TResult Function(_DownloadProfilePictureStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DownloadProfilePictureStateInitial value)? initial,
    TResult? Function(_DownloadProfilePictureStateLoadFailure value)?
        loadFailure,
    TResult? Function(DownloadProfilePictureStateLoading value)? loading,
    TResult? Function(_DownloadProfilePictureStateLoadSuccess value)?
        loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadProfilePictureStateInitial value)? initial,
    TResult Function(_DownloadProfilePictureStateLoadFailure value)?
        loadFailure,
    TResult Function(DownloadProfilePictureStateLoading value)? loading,
    TResult Function(_DownloadProfilePictureStateLoadSuccess value)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _DownloadProfilePictureStateLoadFailure
    implements DownloadProfilePictureState {
  const factory _DownloadProfilePictureStateLoadFailure(final Failure failure) =
      _$DownloadProfilePictureStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$DownloadProfilePictureStateLoadFailureImplCopyWith<
          _$DownloadProfilePictureStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadProfilePictureStateLoadingImplCopyWith<$Res> {
  factory _$$DownloadProfilePictureStateLoadingImplCopyWith(
          _$DownloadProfilePictureStateLoadingImpl value,
          $Res Function(_$DownloadProfilePictureStateLoadingImpl) then) =
      __$$DownloadProfilePictureStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DownloadProfilePictureStateLoadingImplCopyWithImpl<$Res>
    extends _$DownloadProfilePictureStateCopyWithImpl<$Res,
        _$DownloadProfilePictureStateLoadingImpl>
    implements _$$DownloadProfilePictureStateLoadingImplCopyWith<$Res> {
  __$$DownloadProfilePictureStateLoadingImplCopyWithImpl(
      _$DownloadProfilePictureStateLoadingImpl _value,
      $Res Function(_$DownloadProfilePictureStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DownloadProfilePictureStateLoadingImpl
    implements DownloadProfilePictureStateLoading {
  const _$DownloadProfilePictureStateLoadingImpl();

  @override
  String toString() {
    return 'DownloadProfilePictureState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadProfilePictureStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DownloadProfilePictureEntity profilePictureEntity)
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
    TResult? Function(DownloadProfilePictureEntity profilePictureEntity)?
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
    TResult Function(DownloadProfilePictureEntity profilePictureEntity)?
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
    required TResult Function(_DownloadProfilePictureStateInitial value)
        initial,
    required TResult Function(_DownloadProfilePictureStateLoadFailure value)
        loadFailure,
    required TResult Function(DownloadProfilePictureStateLoading value) loading,
    required TResult Function(_DownloadProfilePictureStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DownloadProfilePictureStateInitial value)? initial,
    TResult? Function(_DownloadProfilePictureStateLoadFailure value)?
        loadFailure,
    TResult? Function(DownloadProfilePictureStateLoading value)? loading,
    TResult? Function(_DownloadProfilePictureStateLoadSuccess value)?
        loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadProfilePictureStateInitial value)? initial,
    TResult Function(_DownloadProfilePictureStateLoadFailure value)?
        loadFailure,
    TResult Function(DownloadProfilePictureStateLoading value)? loading,
    TResult Function(_DownloadProfilePictureStateLoadSuccess value)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DownloadProfilePictureStateLoading
    implements DownloadProfilePictureState {
  const factory DownloadProfilePictureStateLoading() =
      _$DownloadProfilePictureStateLoadingImpl;
}

/// @nodoc
abstract class _$$DownloadProfilePictureStateLoadSuccessImplCopyWith<$Res> {
  factory _$$DownloadProfilePictureStateLoadSuccessImplCopyWith(
          _$DownloadProfilePictureStateLoadSuccessImpl value,
          $Res Function(_$DownloadProfilePictureStateLoadSuccessImpl) then) =
      __$$DownloadProfilePictureStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DownloadProfilePictureEntity profilePictureEntity});
}

/// @nodoc
class __$$DownloadProfilePictureStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$DownloadProfilePictureStateCopyWithImpl<$Res,
        _$DownloadProfilePictureStateLoadSuccessImpl>
    implements _$$DownloadProfilePictureStateLoadSuccessImplCopyWith<$Res> {
  __$$DownloadProfilePictureStateLoadSuccessImplCopyWithImpl(
      _$DownloadProfilePictureStateLoadSuccessImpl _value,
      $Res Function(_$DownloadProfilePictureStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profilePictureEntity = null,
  }) {
    return _then(_$DownloadProfilePictureStateLoadSuccessImpl(
      null == profilePictureEntity
          ? _value.profilePictureEntity
          : profilePictureEntity // ignore: cast_nullable_to_non_nullable
              as DownloadProfilePictureEntity,
    ));
  }
}

/// @nodoc

class _$DownloadProfilePictureStateLoadSuccessImpl
    implements _DownloadProfilePictureStateLoadSuccess {
  const _$DownloadProfilePictureStateLoadSuccessImpl(this.profilePictureEntity);

  @override
  final DownloadProfilePictureEntity profilePictureEntity;

  @override
  String toString() {
    return 'DownloadProfilePictureState.loadSuccess(profilePictureEntity: $profilePictureEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadProfilePictureStateLoadSuccessImpl &&
            (identical(other.profilePictureEntity, profilePictureEntity) ||
                other.profilePictureEntity == profilePictureEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profilePictureEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadProfilePictureStateLoadSuccessImplCopyWith<
          _$DownloadProfilePictureStateLoadSuccessImpl>
      get copyWith =>
          __$$DownloadProfilePictureStateLoadSuccessImplCopyWithImpl<
              _$DownloadProfilePictureStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DownloadProfilePictureEntity profilePictureEntity)
        loadSuccess,
  }) {
    return loadSuccess(profilePictureEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(DownloadProfilePictureEntity profilePictureEntity)?
        loadSuccess,
  }) {
    return loadSuccess?.call(profilePictureEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(DownloadProfilePictureEntity profilePictureEntity)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(profilePictureEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DownloadProfilePictureStateInitial value)
        initial,
    required TResult Function(_DownloadProfilePictureStateLoadFailure value)
        loadFailure,
    required TResult Function(DownloadProfilePictureStateLoading value) loading,
    required TResult Function(_DownloadProfilePictureStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DownloadProfilePictureStateInitial value)? initial,
    TResult? Function(_DownloadProfilePictureStateLoadFailure value)?
        loadFailure,
    TResult? Function(DownloadProfilePictureStateLoading value)? loading,
    TResult? Function(_DownloadProfilePictureStateLoadSuccess value)?
        loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DownloadProfilePictureStateInitial value)? initial,
    TResult Function(_DownloadProfilePictureStateLoadFailure value)?
        loadFailure,
    TResult Function(DownloadProfilePictureStateLoading value)? loading,
    TResult Function(_DownloadProfilePictureStateLoadSuccess value)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _DownloadProfilePictureStateLoadSuccess
    implements DownloadProfilePictureState {
  const factory _DownloadProfilePictureStateLoadSuccess(
          final DownloadProfilePictureEntity profilePictureEntity) =
      _$DownloadProfilePictureStateLoadSuccessImpl;

  DownloadProfilePictureEntity get profilePictureEntity;
  @JsonKey(ignore: true)
  _$$DownloadProfilePictureStateLoadSuccessImplCopyWith<
          _$DownloadProfilePictureStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
