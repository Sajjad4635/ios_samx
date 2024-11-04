// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostAccountEvent {
  PostAccountParam get postAccountParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostAccountParam postAccountParam)
        postAccountEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostAccountParam postAccountParam)?
        postAccountEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostAccountParam postAccountParam)? postAccountEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostAccountEventCalled value)
        postAccountEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostAccountEventCalled value)? postAccountEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostAccountEventCalled value)? postAccountEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostAccountEventCopyWith<PostAccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostAccountEventCopyWith<$Res> {
  factory $PostAccountEventCopyWith(
          PostAccountEvent value, $Res Function(PostAccountEvent) then) =
      _$PostAccountEventCopyWithImpl<$Res, PostAccountEvent>;
  @useResult
  $Res call({PostAccountParam postAccountParam});
}

/// @nodoc
class _$PostAccountEventCopyWithImpl<$Res, $Val extends PostAccountEvent>
    implements $PostAccountEventCopyWith<$Res> {
  _$PostAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postAccountParam = null,
  }) {
    return _then(_value.copyWith(
      postAccountParam: null == postAccountParam
          ? _value.postAccountParam
          : postAccountParam // ignore: cast_nullable_to_non_nullable
              as PostAccountParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostAccountEventCalledImplCopyWith<$Res>
    implements $PostAccountEventCopyWith<$Res> {
  factory _$$PostAccountEventCalledImplCopyWith(
          _$PostAccountEventCalledImpl value,
          $Res Function(_$PostAccountEventCalledImpl) then) =
      __$$PostAccountEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostAccountParam postAccountParam});
}

/// @nodoc
class __$$PostAccountEventCalledImplCopyWithImpl<$Res>
    extends _$PostAccountEventCopyWithImpl<$Res, _$PostAccountEventCalledImpl>
    implements _$$PostAccountEventCalledImplCopyWith<$Res> {
  __$$PostAccountEventCalledImplCopyWithImpl(
      _$PostAccountEventCalledImpl _value,
      $Res Function(_$PostAccountEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postAccountParam = null,
  }) {
    return _then(_$PostAccountEventCalledImpl(
      postAccountParam: null == postAccountParam
          ? _value.postAccountParam
          : postAccountParam // ignore: cast_nullable_to_non_nullable
              as PostAccountParam,
    ));
  }
}

/// @nodoc

class _$PostAccountEventCalledImpl implements _PostAccountEventCalled {
  const _$PostAccountEventCalledImpl({required this.postAccountParam});

  @override
  final PostAccountParam postAccountParam;

  @override
  String toString() {
    return 'PostAccountEvent.postAccountEventCalled(postAccountParam: $postAccountParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostAccountEventCalledImpl &&
            (identical(other.postAccountParam, postAccountParam) ||
                other.postAccountParam == postAccountParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postAccountParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostAccountEventCalledImplCopyWith<_$PostAccountEventCalledImpl>
      get copyWith => __$$PostAccountEventCalledImplCopyWithImpl<
          _$PostAccountEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostAccountParam postAccountParam)
        postAccountEventCalled,
  }) {
    return postAccountEventCalled(postAccountParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostAccountParam postAccountParam)?
        postAccountEventCalled,
  }) {
    return postAccountEventCalled?.call(postAccountParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostAccountParam postAccountParam)? postAccountEventCalled,
    required TResult orElse(),
  }) {
    if (postAccountEventCalled != null) {
      return postAccountEventCalled(postAccountParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostAccountEventCalled value)
        postAccountEventCalled,
  }) {
    return postAccountEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostAccountEventCalled value)? postAccountEventCalled,
  }) {
    return postAccountEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostAccountEventCalled value)? postAccountEventCalled,
    required TResult orElse(),
  }) {
    if (postAccountEventCalled != null) {
      return postAccountEventCalled(this);
    }
    return orElse();
  }
}

abstract class _PostAccountEventCalled implements PostAccountEvent {
  const factory _PostAccountEventCalled(
          {required final PostAccountParam postAccountParam}) =
      _$PostAccountEventCalledImpl;

  @override
  PostAccountParam get postAccountParam;
  @override
  @JsonKey(ignore: true)
  _$$PostAccountEventCalledImplCopyWith<_$PostAccountEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(PostAccountEntities postAccountEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(PostAccountEntities postAccountEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(PostAccountEntities postAccountEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostAccountStateInitial value) initial,
    required TResult Function(_PostAccountStateLoadFailure value) loadFailure,
    required TResult Function(PostAccountStateLoading value) loading,
    required TResult Function(_PostAccountStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostAccountStateInitial value)? initial,
    TResult? Function(_PostAccountStateLoadFailure value)? loadFailure,
    TResult? Function(PostAccountStateLoading value)? loading,
    TResult? Function(_PostAccountStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostAccountStateInitial value)? initial,
    TResult Function(_PostAccountStateLoadFailure value)? loadFailure,
    TResult Function(PostAccountStateLoading value)? loading,
    TResult Function(_PostAccountStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostAccountStateCopyWith<$Res> {
  factory $PostAccountStateCopyWith(
          PostAccountState value, $Res Function(PostAccountState) then) =
      _$PostAccountStateCopyWithImpl<$Res, PostAccountState>;
}

/// @nodoc
class _$PostAccountStateCopyWithImpl<$Res, $Val extends PostAccountState>
    implements $PostAccountStateCopyWith<$Res> {
  _$PostAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostAccountStateInitialImplCopyWith<$Res> {
  factory _$$PostAccountStateInitialImplCopyWith(
          _$PostAccountStateInitialImpl value,
          $Res Function(_$PostAccountStateInitialImpl) then) =
      __$$PostAccountStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostAccountStateInitialImplCopyWithImpl<$Res>
    extends _$PostAccountStateCopyWithImpl<$Res, _$PostAccountStateInitialImpl>
    implements _$$PostAccountStateInitialImplCopyWith<$Res> {
  __$$PostAccountStateInitialImplCopyWithImpl(
      _$PostAccountStateInitialImpl _value,
      $Res Function(_$PostAccountStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostAccountStateInitialImpl implements _PostAccountStateInitial {
  const _$PostAccountStateInitialImpl();

  @override
  String toString() {
    return 'PostAccountState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostAccountStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(PostAccountEntities postAccountEntities)
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
    TResult? Function(PostAccountEntities postAccountEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(PostAccountEntities postAccountEntities)? loadSuccess,
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
    required TResult Function(_PostAccountStateInitial value) initial,
    required TResult Function(_PostAccountStateLoadFailure value) loadFailure,
    required TResult Function(PostAccountStateLoading value) loading,
    required TResult Function(_PostAccountStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostAccountStateInitial value)? initial,
    TResult? Function(_PostAccountStateLoadFailure value)? loadFailure,
    TResult? Function(PostAccountStateLoading value)? loading,
    TResult? Function(_PostAccountStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostAccountStateInitial value)? initial,
    TResult Function(_PostAccountStateLoadFailure value)? loadFailure,
    TResult Function(PostAccountStateLoading value)? loading,
    TResult Function(_PostAccountStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PostAccountStateInitial implements PostAccountState {
  const factory _PostAccountStateInitial() = _$PostAccountStateInitialImpl;
}

/// @nodoc
abstract class _$$PostAccountStateLoadFailureImplCopyWith<$Res> {
  factory _$$PostAccountStateLoadFailureImplCopyWith(
          _$PostAccountStateLoadFailureImpl value,
          $Res Function(_$PostAccountStateLoadFailureImpl) then) =
      __$$PostAccountStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$PostAccountStateLoadFailureImplCopyWithImpl<$Res>
    extends _$PostAccountStateCopyWithImpl<$Res,
        _$PostAccountStateLoadFailureImpl>
    implements _$$PostAccountStateLoadFailureImplCopyWith<$Res> {
  __$$PostAccountStateLoadFailureImplCopyWithImpl(
      _$PostAccountStateLoadFailureImpl _value,
      $Res Function(_$PostAccountStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$PostAccountStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$PostAccountStateLoadFailureImpl
    implements _PostAccountStateLoadFailure {
  const _$PostAccountStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PostAccountState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostAccountStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostAccountStateLoadFailureImplCopyWith<_$PostAccountStateLoadFailureImpl>
      get copyWith => __$$PostAccountStateLoadFailureImplCopyWithImpl<
          _$PostAccountStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(PostAccountEntities postAccountEntities)
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
    TResult? Function(PostAccountEntities postAccountEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(PostAccountEntities postAccountEntities)? loadSuccess,
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
    required TResult Function(_PostAccountStateInitial value) initial,
    required TResult Function(_PostAccountStateLoadFailure value) loadFailure,
    required TResult Function(PostAccountStateLoading value) loading,
    required TResult Function(_PostAccountStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostAccountStateInitial value)? initial,
    TResult? Function(_PostAccountStateLoadFailure value)? loadFailure,
    TResult? Function(PostAccountStateLoading value)? loading,
    TResult? Function(_PostAccountStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostAccountStateInitial value)? initial,
    TResult Function(_PostAccountStateLoadFailure value)? loadFailure,
    TResult Function(PostAccountStateLoading value)? loading,
    TResult Function(_PostAccountStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _PostAccountStateLoadFailure implements PostAccountState {
  const factory _PostAccountStateLoadFailure(final Failure failure) =
      _$PostAccountStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$PostAccountStateLoadFailureImplCopyWith<_$PostAccountStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostAccountStateLoadingImplCopyWith<$Res> {
  factory _$$PostAccountStateLoadingImplCopyWith(
          _$PostAccountStateLoadingImpl value,
          $Res Function(_$PostAccountStateLoadingImpl) then) =
      __$$PostAccountStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostAccountStateLoadingImplCopyWithImpl<$Res>
    extends _$PostAccountStateCopyWithImpl<$Res, _$PostAccountStateLoadingImpl>
    implements _$$PostAccountStateLoadingImplCopyWith<$Res> {
  __$$PostAccountStateLoadingImplCopyWithImpl(
      _$PostAccountStateLoadingImpl _value,
      $Res Function(_$PostAccountStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostAccountStateLoadingImpl implements PostAccountStateLoading {
  const _$PostAccountStateLoadingImpl();

  @override
  String toString() {
    return 'PostAccountState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostAccountStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(PostAccountEntities postAccountEntities)
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
    TResult? Function(PostAccountEntities postAccountEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(PostAccountEntities postAccountEntities)? loadSuccess,
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
    required TResult Function(_PostAccountStateInitial value) initial,
    required TResult Function(_PostAccountStateLoadFailure value) loadFailure,
    required TResult Function(PostAccountStateLoading value) loading,
    required TResult Function(_PostAccountStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostAccountStateInitial value)? initial,
    TResult? Function(_PostAccountStateLoadFailure value)? loadFailure,
    TResult? Function(PostAccountStateLoading value)? loading,
    TResult? Function(_PostAccountStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostAccountStateInitial value)? initial,
    TResult Function(_PostAccountStateLoadFailure value)? loadFailure,
    TResult Function(PostAccountStateLoading value)? loading,
    TResult Function(_PostAccountStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PostAccountStateLoading implements PostAccountState {
  const factory PostAccountStateLoading() = _$PostAccountStateLoadingImpl;
}

/// @nodoc
abstract class _$$PostAccountStateLoadSuccessImplCopyWith<$Res> {
  factory _$$PostAccountStateLoadSuccessImplCopyWith(
          _$PostAccountStateLoadSuccessImpl value,
          $Res Function(_$PostAccountStateLoadSuccessImpl) then) =
      __$$PostAccountStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PostAccountEntities postAccountEntities});
}

/// @nodoc
class __$$PostAccountStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$PostAccountStateCopyWithImpl<$Res,
        _$PostAccountStateLoadSuccessImpl>
    implements _$$PostAccountStateLoadSuccessImplCopyWith<$Res> {
  __$$PostAccountStateLoadSuccessImplCopyWithImpl(
      _$PostAccountStateLoadSuccessImpl _value,
      $Res Function(_$PostAccountStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postAccountEntities = null,
  }) {
    return _then(_$PostAccountStateLoadSuccessImpl(
      null == postAccountEntities
          ? _value.postAccountEntities
          : postAccountEntities // ignore: cast_nullable_to_non_nullable
              as PostAccountEntities,
    ));
  }
}

/// @nodoc

class _$PostAccountStateLoadSuccessImpl
    implements _PostAccountStateLoadSuccess {
  const _$PostAccountStateLoadSuccessImpl(this.postAccountEntities);

  @override
  final PostAccountEntities postAccountEntities;

  @override
  String toString() {
    return 'PostAccountState.loadSuccess(postAccountEntities: $postAccountEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostAccountStateLoadSuccessImpl &&
            (identical(other.postAccountEntities, postAccountEntities) ||
                other.postAccountEntities == postAccountEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postAccountEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostAccountStateLoadSuccessImplCopyWith<_$PostAccountStateLoadSuccessImpl>
      get copyWith => __$$PostAccountStateLoadSuccessImplCopyWithImpl<
          _$PostAccountStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(PostAccountEntities postAccountEntities)
        loadSuccess,
  }) {
    return loadSuccess(postAccountEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(PostAccountEntities postAccountEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(postAccountEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(PostAccountEntities postAccountEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(postAccountEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostAccountStateInitial value) initial,
    required TResult Function(_PostAccountStateLoadFailure value) loadFailure,
    required TResult Function(PostAccountStateLoading value) loading,
    required TResult Function(_PostAccountStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostAccountStateInitial value)? initial,
    TResult? Function(_PostAccountStateLoadFailure value)? loadFailure,
    TResult? Function(PostAccountStateLoading value)? loading,
    TResult? Function(_PostAccountStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostAccountStateInitial value)? initial,
    TResult Function(_PostAccountStateLoadFailure value)? loadFailure,
    TResult Function(PostAccountStateLoading value)? loading,
    TResult Function(_PostAccountStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _PostAccountStateLoadSuccess implements PostAccountState {
  const factory _PostAccountStateLoadSuccess(
          final PostAccountEntities postAccountEntities) =
      _$PostAccountStateLoadSuccessImpl;

  PostAccountEntities get postAccountEntities;
  @JsonKey(ignore: true)
  _$$PostAccountStateLoadSuccessImplCopyWith<_$PostAccountStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
