// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_vehicle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostVehicleEvent {
  PostVehicleParam get postVehicleParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostVehicleParam postVehicleParam)
        postVehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostVehicleParam postVehicleParam)?
        postVehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostVehicleParam postVehicleParam)? postVehicleEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostVehicleEventCalled value)
        postVehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostVehicleEventCalled value)? postVehicleEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostVehicleEventCalled value)? postVehicleEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostVehicleEventCopyWith<PostVehicleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostVehicleEventCopyWith<$Res> {
  factory $PostVehicleEventCopyWith(
          PostVehicleEvent value, $Res Function(PostVehicleEvent) then) =
      _$PostVehicleEventCopyWithImpl<$Res, PostVehicleEvent>;
  @useResult
  $Res call({PostVehicleParam postVehicleParam});
}

/// @nodoc
class _$PostVehicleEventCopyWithImpl<$Res, $Val extends PostVehicleEvent>
    implements $PostVehicleEventCopyWith<$Res> {
  _$PostVehicleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postVehicleParam = null,
  }) {
    return _then(_value.copyWith(
      postVehicleParam: null == postVehicleParam
          ? _value.postVehicleParam
          : postVehicleParam // ignore: cast_nullable_to_non_nullable
              as PostVehicleParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostVehicleEventCalledImplCopyWith<$Res>
    implements $PostVehicleEventCopyWith<$Res> {
  factory _$$PostVehicleEventCalledImplCopyWith(
          _$PostVehicleEventCalledImpl value,
          $Res Function(_$PostVehicleEventCalledImpl) then) =
      __$$PostVehicleEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostVehicleParam postVehicleParam});
}

/// @nodoc
class __$$PostVehicleEventCalledImplCopyWithImpl<$Res>
    extends _$PostVehicleEventCopyWithImpl<$Res, _$PostVehicleEventCalledImpl>
    implements _$$PostVehicleEventCalledImplCopyWith<$Res> {
  __$$PostVehicleEventCalledImplCopyWithImpl(
      _$PostVehicleEventCalledImpl _value,
      $Res Function(_$PostVehicleEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postVehicleParam = null,
  }) {
    return _then(_$PostVehicleEventCalledImpl(
      postVehicleParam: null == postVehicleParam
          ? _value.postVehicleParam
          : postVehicleParam // ignore: cast_nullable_to_non_nullable
              as PostVehicleParam,
    ));
  }
}

/// @nodoc

class _$PostVehicleEventCalledImpl implements _PostVehicleEventCalled {
  const _$PostVehicleEventCalledImpl({required this.postVehicleParam});

  @override
  final PostVehicleParam postVehicleParam;

  @override
  String toString() {
    return 'PostVehicleEvent.postVehicleEventCalled(postVehicleParam: $postVehicleParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostVehicleEventCalledImpl &&
            (identical(other.postVehicleParam, postVehicleParam) ||
                other.postVehicleParam == postVehicleParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postVehicleParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostVehicleEventCalledImplCopyWith<_$PostVehicleEventCalledImpl>
      get copyWith => __$$PostVehicleEventCalledImplCopyWithImpl<
          _$PostVehicleEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostVehicleParam postVehicleParam)
        postVehicleEventCalled,
  }) {
    return postVehicleEventCalled(postVehicleParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostVehicleParam postVehicleParam)?
        postVehicleEventCalled,
  }) {
    return postVehicleEventCalled?.call(postVehicleParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostVehicleParam postVehicleParam)? postVehicleEventCalled,
    required TResult orElse(),
  }) {
    if (postVehicleEventCalled != null) {
      return postVehicleEventCalled(postVehicleParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostVehicleEventCalled value)
        postVehicleEventCalled,
  }) {
    return postVehicleEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostVehicleEventCalled value)? postVehicleEventCalled,
  }) {
    return postVehicleEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostVehicleEventCalled value)? postVehicleEventCalled,
    required TResult orElse(),
  }) {
    if (postVehicleEventCalled != null) {
      return postVehicleEventCalled(this);
    }
    return orElse();
  }
}

abstract class _PostVehicleEventCalled implements PostVehicleEvent {
  const factory _PostVehicleEventCalled(
          {required final PostVehicleParam postVehicleParam}) =
      _$PostVehicleEventCalledImpl;

  @override
  PostVehicleParam get postVehicleParam;
  @override
  @JsonKey(ignore: true)
  _$$PostVehicleEventCalledImplCopyWith<_$PostVehicleEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostVehicleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(PostVehicleEntities postVehicleEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(PostVehicleEntities postVehicleEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(PostVehicleEntities postVehicleEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostVehicleStateInitial value) initial,
    required TResult Function(_PostVehicleStateLoadFailure value) loadFailure,
    required TResult Function(PostVehicleStateLoading value) loading,
    required TResult Function(_PostVehicleStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostVehicleStateInitial value)? initial,
    TResult? Function(_PostVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(PostVehicleStateLoading value)? loading,
    TResult? Function(_PostVehicleStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostVehicleStateInitial value)? initial,
    TResult Function(_PostVehicleStateLoadFailure value)? loadFailure,
    TResult Function(PostVehicleStateLoading value)? loading,
    TResult Function(_PostVehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostVehicleStateCopyWith<$Res> {
  factory $PostVehicleStateCopyWith(
          PostVehicleState value, $Res Function(PostVehicleState) then) =
      _$PostVehicleStateCopyWithImpl<$Res, PostVehicleState>;
}

/// @nodoc
class _$PostVehicleStateCopyWithImpl<$Res, $Val extends PostVehicleState>
    implements $PostVehicleStateCopyWith<$Res> {
  _$PostVehicleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostVehicleStateInitialImplCopyWith<$Res> {
  factory _$$PostVehicleStateInitialImplCopyWith(
          _$PostVehicleStateInitialImpl value,
          $Res Function(_$PostVehicleStateInitialImpl) then) =
      __$$PostVehicleStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostVehicleStateInitialImplCopyWithImpl<$Res>
    extends _$PostVehicleStateCopyWithImpl<$Res, _$PostVehicleStateInitialImpl>
    implements _$$PostVehicleStateInitialImplCopyWith<$Res> {
  __$$PostVehicleStateInitialImplCopyWithImpl(
      _$PostVehicleStateInitialImpl _value,
      $Res Function(_$PostVehicleStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostVehicleStateInitialImpl implements _PostVehicleStateInitial {
  const _$PostVehicleStateInitialImpl();

  @override
  String toString() {
    return 'PostVehicleState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostVehicleStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(PostVehicleEntities postVehicleEntities)
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
    TResult? Function(PostVehicleEntities postVehicleEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(PostVehicleEntities postVehicleEntities)? loadSuccess,
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
    required TResult Function(_PostVehicleStateInitial value) initial,
    required TResult Function(_PostVehicleStateLoadFailure value) loadFailure,
    required TResult Function(PostVehicleStateLoading value) loading,
    required TResult Function(_PostVehicleStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostVehicleStateInitial value)? initial,
    TResult? Function(_PostVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(PostVehicleStateLoading value)? loading,
    TResult? Function(_PostVehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostVehicleStateInitial value)? initial,
    TResult Function(_PostVehicleStateLoadFailure value)? loadFailure,
    TResult Function(PostVehicleStateLoading value)? loading,
    TResult Function(_PostVehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PostVehicleStateInitial implements PostVehicleState {
  const factory _PostVehicleStateInitial() = _$PostVehicleStateInitialImpl;
}

/// @nodoc
abstract class _$$PostVehicleStateLoadFailureImplCopyWith<$Res> {
  factory _$$PostVehicleStateLoadFailureImplCopyWith(
          _$PostVehicleStateLoadFailureImpl value,
          $Res Function(_$PostVehicleStateLoadFailureImpl) then) =
      __$$PostVehicleStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$PostVehicleStateLoadFailureImplCopyWithImpl<$Res>
    extends _$PostVehicleStateCopyWithImpl<$Res,
        _$PostVehicleStateLoadFailureImpl>
    implements _$$PostVehicleStateLoadFailureImplCopyWith<$Res> {
  __$$PostVehicleStateLoadFailureImplCopyWithImpl(
      _$PostVehicleStateLoadFailureImpl _value,
      $Res Function(_$PostVehicleStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$PostVehicleStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$PostVehicleStateLoadFailureImpl
    implements _PostVehicleStateLoadFailure {
  const _$PostVehicleStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PostVehicleState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostVehicleStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostVehicleStateLoadFailureImplCopyWith<_$PostVehicleStateLoadFailureImpl>
      get copyWith => __$$PostVehicleStateLoadFailureImplCopyWithImpl<
          _$PostVehicleStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(PostVehicleEntities postVehicleEntities)
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
    TResult? Function(PostVehicleEntities postVehicleEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(PostVehicleEntities postVehicleEntities)? loadSuccess,
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
    required TResult Function(_PostVehicleStateInitial value) initial,
    required TResult Function(_PostVehicleStateLoadFailure value) loadFailure,
    required TResult Function(PostVehicleStateLoading value) loading,
    required TResult Function(_PostVehicleStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostVehicleStateInitial value)? initial,
    TResult? Function(_PostVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(PostVehicleStateLoading value)? loading,
    TResult? Function(_PostVehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostVehicleStateInitial value)? initial,
    TResult Function(_PostVehicleStateLoadFailure value)? loadFailure,
    TResult Function(PostVehicleStateLoading value)? loading,
    TResult Function(_PostVehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _PostVehicleStateLoadFailure implements PostVehicleState {
  const factory _PostVehicleStateLoadFailure(final Failure failure) =
      _$PostVehicleStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$PostVehicleStateLoadFailureImplCopyWith<_$PostVehicleStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostVehicleStateLoadingImplCopyWith<$Res> {
  factory _$$PostVehicleStateLoadingImplCopyWith(
          _$PostVehicleStateLoadingImpl value,
          $Res Function(_$PostVehicleStateLoadingImpl) then) =
      __$$PostVehicleStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostVehicleStateLoadingImplCopyWithImpl<$Res>
    extends _$PostVehicleStateCopyWithImpl<$Res, _$PostVehicleStateLoadingImpl>
    implements _$$PostVehicleStateLoadingImplCopyWith<$Res> {
  __$$PostVehicleStateLoadingImplCopyWithImpl(
      _$PostVehicleStateLoadingImpl _value,
      $Res Function(_$PostVehicleStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostVehicleStateLoadingImpl implements PostVehicleStateLoading {
  const _$PostVehicleStateLoadingImpl();

  @override
  String toString() {
    return 'PostVehicleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostVehicleStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(PostVehicleEntities postVehicleEntities)
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
    TResult? Function(PostVehicleEntities postVehicleEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(PostVehicleEntities postVehicleEntities)? loadSuccess,
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
    required TResult Function(_PostVehicleStateInitial value) initial,
    required TResult Function(_PostVehicleStateLoadFailure value) loadFailure,
    required TResult Function(PostVehicleStateLoading value) loading,
    required TResult Function(_PostVehicleStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostVehicleStateInitial value)? initial,
    TResult? Function(_PostVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(PostVehicleStateLoading value)? loading,
    TResult? Function(_PostVehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostVehicleStateInitial value)? initial,
    TResult Function(_PostVehicleStateLoadFailure value)? loadFailure,
    TResult Function(PostVehicleStateLoading value)? loading,
    TResult Function(_PostVehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PostVehicleStateLoading implements PostVehicleState {
  const factory PostVehicleStateLoading() = _$PostVehicleStateLoadingImpl;
}

/// @nodoc
abstract class _$$PostVehicleStateLoadSuccessImplCopyWith<$Res> {
  factory _$$PostVehicleStateLoadSuccessImplCopyWith(
          _$PostVehicleStateLoadSuccessImpl value,
          $Res Function(_$PostVehicleStateLoadSuccessImpl) then) =
      __$$PostVehicleStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PostVehicleEntities postVehicleEntities});
}

/// @nodoc
class __$$PostVehicleStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$PostVehicleStateCopyWithImpl<$Res,
        _$PostVehicleStateLoadSuccessImpl>
    implements _$$PostVehicleStateLoadSuccessImplCopyWith<$Res> {
  __$$PostVehicleStateLoadSuccessImplCopyWithImpl(
      _$PostVehicleStateLoadSuccessImpl _value,
      $Res Function(_$PostVehicleStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postVehicleEntities = null,
  }) {
    return _then(_$PostVehicleStateLoadSuccessImpl(
      null == postVehicleEntities
          ? _value.postVehicleEntities
          : postVehicleEntities // ignore: cast_nullable_to_non_nullable
              as PostVehicleEntities,
    ));
  }
}

/// @nodoc

class _$PostVehicleStateLoadSuccessImpl
    implements _PostVehicleStateLoadSuccess {
  const _$PostVehicleStateLoadSuccessImpl(this.postVehicleEntities);

  @override
  final PostVehicleEntities postVehicleEntities;

  @override
  String toString() {
    return 'PostVehicleState.loadSuccess(postVehicleEntities: $postVehicleEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostVehicleStateLoadSuccessImpl &&
            (identical(other.postVehicleEntities, postVehicleEntities) ||
                other.postVehicleEntities == postVehicleEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postVehicleEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostVehicleStateLoadSuccessImplCopyWith<_$PostVehicleStateLoadSuccessImpl>
      get copyWith => __$$PostVehicleStateLoadSuccessImplCopyWithImpl<
          _$PostVehicleStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(PostVehicleEntities postVehicleEntities)
        loadSuccess,
  }) {
    return loadSuccess(postVehicleEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(PostVehicleEntities postVehicleEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(postVehicleEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(PostVehicleEntities postVehicleEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(postVehicleEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostVehicleStateInitial value) initial,
    required TResult Function(_PostVehicleStateLoadFailure value) loadFailure,
    required TResult Function(PostVehicleStateLoading value) loading,
    required TResult Function(_PostVehicleStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostVehicleStateInitial value)? initial,
    TResult? Function(_PostVehicleStateLoadFailure value)? loadFailure,
    TResult? Function(PostVehicleStateLoading value)? loading,
    TResult? Function(_PostVehicleStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostVehicleStateInitial value)? initial,
    TResult Function(_PostVehicleStateLoadFailure value)? loadFailure,
    TResult Function(PostVehicleStateLoading value)? loading,
    TResult Function(_PostVehicleStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _PostVehicleStateLoadSuccess implements PostVehicleState {
  const factory _PostVehicleStateLoadSuccess(
          final PostVehicleEntities postVehicleEntities) =
      _$PostVehicleStateLoadSuccessImpl;

  PostVehicleEntities get postVehicleEntities;
  @JsonKey(ignore: true)
  _$$PostVehicleStateLoadSuccessImplCopyWith<_$PostVehicleStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
