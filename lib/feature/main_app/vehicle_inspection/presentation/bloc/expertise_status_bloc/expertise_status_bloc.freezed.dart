// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expertise_status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpertiseStatusEvent {
  ExpertiseStatusParam get expertiseStatusParam =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpertiseStatusParam expertiseStatusParam)
        expertiseStatusEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpertiseStatusParam expertiseStatusParam)?
        expertiseStatusEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpertiseStatusParam expertiseStatusParam)?
        expertiseStatusEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpertiseStatusEventCalled value)
        expertiseStatusEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpertiseStatusEventCalled value)?
        expertiseStatusEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpertiseStatusEventCalled value)?
        expertiseStatusEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpertiseStatusEventCopyWith<ExpertiseStatusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertiseStatusEventCopyWith<$Res> {
  factory $ExpertiseStatusEventCopyWith(ExpertiseStatusEvent value,
          $Res Function(ExpertiseStatusEvent) then) =
      _$ExpertiseStatusEventCopyWithImpl<$Res, ExpertiseStatusEvent>;
  @useResult
  $Res call({ExpertiseStatusParam expertiseStatusParam});
}

/// @nodoc
class _$ExpertiseStatusEventCopyWithImpl<$Res,
        $Val extends ExpertiseStatusEvent>
    implements $ExpertiseStatusEventCopyWith<$Res> {
  _$ExpertiseStatusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expertiseStatusParam = null,
  }) {
    return _then(_value.copyWith(
      expertiseStatusParam: null == expertiseStatusParam
          ? _value.expertiseStatusParam
          : expertiseStatusParam // ignore: cast_nullable_to_non_nullable
              as ExpertiseStatusParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpertiseStatusEventCalledImplCopyWith<$Res>
    implements $ExpertiseStatusEventCopyWith<$Res> {
  factory _$$ExpertiseStatusEventCalledImplCopyWith(
          _$ExpertiseStatusEventCalledImpl value,
          $Res Function(_$ExpertiseStatusEventCalledImpl) then) =
      __$$ExpertiseStatusEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpertiseStatusParam expertiseStatusParam});
}

/// @nodoc
class __$$ExpertiseStatusEventCalledImplCopyWithImpl<$Res>
    extends _$ExpertiseStatusEventCopyWithImpl<$Res,
        _$ExpertiseStatusEventCalledImpl>
    implements _$$ExpertiseStatusEventCalledImplCopyWith<$Res> {
  __$$ExpertiseStatusEventCalledImplCopyWithImpl(
      _$ExpertiseStatusEventCalledImpl _value,
      $Res Function(_$ExpertiseStatusEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expertiseStatusParam = null,
  }) {
    return _then(_$ExpertiseStatusEventCalledImpl(
      expertiseStatusParam: null == expertiseStatusParam
          ? _value.expertiseStatusParam
          : expertiseStatusParam // ignore: cast_nullable_to_non_nullable
              as ExpertiseStatusParam,
    ));
  }
}

/// @nodoc

class _$ExpertiseStatusEventCalledImpl implements _ExpertiseStatusEventCalled {
  const _$ExpertiseStatusEventCalledImpl({required this.expertiseStatusParam});

  @override
  final ExpertiseStatusParam expertiseStatusParam;

  @override
  String toString() {
    return 'ExpertiseStatusEvent.expertiseStatusEventCalled(expertiseStatusParam: $expertiseStatusParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertiseStatusEventCalledImpl &&
            (identical(other.expertiseStatusParam, expertiseStatusParam) ||
                other.expertiseStatusParam == expertiseStatusParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expertiseStatusParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpertiseStatusEventCalledImplCopyWith<_$ExpertiseStatusEventCalledImpl>
      get copyWith => __$$ExpertiseStatusEventCalledImplCopyWithImpl<
          _$ExpertiseStatusEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpertiseStatusParam expertiseStatusParam)
        expertiseStatusEventCalled,
  }) {
    return expertiseStatusEventCalled(expertiseStatusParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpertiseStatusParam expertiseStatusParam)?
        expertiseStatusEventCalled,
  }) {
    return expertiseStatusEventCalled?.call(expertiseStatusParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpertiseStatusParam expertiseStatusParam)?
        expertiseStatusEventCalled,
    required TResult orElse(),
  }) {
    if (expertiseStatusEventCalled != null) {
      return expertiseStatusEventCalled(expertiseStatusParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpertiseStatusEventCalled value)
        expertiseStatusEventCalled,
  }) {
    return expertiseStatusEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpertiseStatusEventCalled value)?
        expertiseStatusEventCalled,
  }) {
    return expertiseStatusEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpertiseStatusEventCalled value)?
        expertiseStatusEventCalled,
    required TResult orElse(),
  }) {
    if (expertiseStatusEventCalled != null) {
      return expertiseStatusEventCalled(this);
    }
    return orElse();
  }
}

abstract class _ExpertiseStatusEventCalled implements ExpertiseStatusEvent {
  const factory _ExpertiseStatusEventCalled(
          {required final ExpertiseStatusParam expertiseStatusParam}) =
      _$ExpertiseStatusEventCalledImpl;

  @override
  ExpertiseStatusParam get expertiseStatusParam;
  @override
  @JsonKey(ignore: true)
  _$$ExpertiseStatusEventCalledImplCopyWith<_$ExpertiseStatusEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExpertiseStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ExpertiseStatusEntities expertiseStatusEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(ExpertiseStatusEntities expertiseStatusEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(ExpertiseStatusEntities expertiseStatusEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpertiseStatusStateInitial value) initial,
    required TResult Function(_ExpertiseStatusStateLoadFailure value)
        loadFailure,
    required TResult Function(ExpertiseStatusStateLoading value) loading,
    required TResult Function(_ExpertiseStatusStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpertiseStatusStateInitial value)? initial,
    TResult? Function(_ExpertiseStatusStateLoadFailure value)? loadFailure,
    TResult? Function(ExpertiseStatusStateLoading value)? loading,
    TResult? Function(_ExpertiseStatusStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpertiseStatusStateInitial value)? initial,
    TResult Function(_ExpertiseStatusStateLoadFailure value)? loadFailure,
    TResult Function(ExpertiseStatusStateLoading value)? loading,
    TResult Function(_ExpertiseStatusStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertiseStatusStateCopyWith<$Res> {
  factory $ExpertiseStatusStateCopyWith(ExpertiseStatusState value,
          $Res Function(ExpertiseStatusState) then) =
      _$ExpertiseStatusStateCopyWithImpl<$Res, ExpertiseStatusState>;
}

/// @nodoc
class _$ExpertiseStatusStateCopyWithImpl<$Res,
        $Val extends ExpertiseStatusState>
    implements $ExpertiseStatusStateCopyWith<$Res> {
  _$ExpertiseStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExpertiseStatusStateInitialImplCopyWith<$Res> {
  factory _$$ExpertiseStatusStateInitialImplCopyWith(
          _$ExpertiseStatusStateInitialImpl value,
          $Res Function(_$ExpertiseStatusStateInitialImpl) then) =
      __$$ExpertiseStatusStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpertiseStatusStateInitialImplCopyWithImpl<$Res>
    extends _$ExpertiseStatusStateCopyWithImpl<$Res,
        _$ExpertiseStatusStateInitialImpl>
    implements _$$ExpertiseStatusStateInitialImplCopyWith<$Res> {
  __$$ExpertiseStatusStateInitialImplCopyWithImpl(
      _$ExpertiseStatusStateInitialImpl _value,
      $Res Function(_$ExpertiseStatusStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExpertiseStatusStateInitialImpl
    implements _ExpertiseStatusStateInitial {
  const _$ExpertiseStatusStateInitialImpl();

  @override
  String toString() {
    return 'ExpertiseStatusState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertiseStatusStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ExpertiseStatusEntities expertiseStatusEntities)
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
    TResult? Function(ExpertiseStatusEntities expertiseStatusEntities)?
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
    TResult Function(ExpertiseStatusEntities expertiseStatusEntities)?
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
    required TResult Function(_ExpertiseStatusStateInitial value) initial,
    required TResult Function(_ExpertiseStatusStateLoadFailure value)
        loadFailure,
    required TResult Function(ExpertiseStatusStateLoading value) loading,
    required TResult Function(_ExpertiseStatusStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpertiseStatusStateInitial value)? initial,
    TResult? Function(_ExpertiseStatusStateLoadFailure value)? loadFailure,
    TResult? Function(ExpertiseStatusStateLoading value)? loading,
    TResult? Function(_ExpertiseStatusStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpertiseStatusStateInitial value)? initial,
    TResult Function(_ExpertiseStatusStateLoadFailure value)? loadFailure,
    TResult Function(ExpertiseStatusStateLoading value)? loading,
    TResult Function(_ExpertiseStatusStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ExpertiseStatusStateInitial implements ExpertiseStatusState {
  const factory _ExpertiseStatusStateInitial() =
      _$ExpertiseStatusStateInitialImpl;
}

/// @nodoc
abstract class _$$ExpertiseStatusStateLoadFailureImplCopyWith<$Res> {
  factory _$$ExpertiseStatusStateLoadFailureImplCopyWith(
          _$ExpertiseStatusStateLoadFailureImpl value,
          $Res Function(_$ExpertiseStatusStateLoadFailureImpl) then) =
      __$$ExpertiseStatusStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ExpertiseStatusStateLoadFailureImplCopyWithImpl<$Res>
    extends _$ExpertiseStatusStateCopyWithImpl<$Res,
        _$ExpertiseStatusStateLoadFailureImpl>
    implements _$$ExpertiseStatusStateLoadFailureImplCopyWith<$Res> {
  __$$ExpertiseStatusStateLoadFailureImplCopyWithImpl(
      _$ExpertiseStatusStateLoadFailureImpl _value,
      $Res Function(_$ExpertiseStatusStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ExpertiseStatusStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ExpertiseStatusStateLoadFailureImpl
    implements _ExpertiseStatusStateLoadFailure {
  const _$ExpertiseStatusStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ExpertiseStatusState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertiseStatusStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpertiseStatusStateLoadFailureImplCopyWith<
          _$ExpertiseStatusStateLoadFailureImpl>
      get copyWith => __$$ExpertiseStatusStateLoadFailureImplCopyWithImpl<
          _$ExpertiseStatusStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ExpertiseStatusEntities expertiseStatusEntities)
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
    TResult? Function(ExpertiseStatusEntities expertiseStatusEntities)?
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
    TResult Function(ExpertiseStatusEntities expertiseStatusEntities)?
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
    required TResult Function(_ExpertiseStatusStateInitial value) initial,
    required TResult Function(_ExpertiseStatusStateLoadFailure value)
        loadFailure,
    required TResult Function(ExpertiseStatusStateLoading value) loading,
    required TResult Function(_ExpertiseStatusStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpertiseStatusStateInitial value)? initial,
    TResult? Function(_ExpertiseStatusStateLoadFailure value)? loadFailure,
    TResult? Function(ExpertiseStatusStateLoading value)? loading,
    TResult? Function(_ExpertiseStatusStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpertiseStatusStateInitial value)? initial,
    TResult Function(_ExpertiseStatusStateLoadFailure value)? loadFailure,
    TResult Function(ExpertiseStatusStateLoading value)? loading,
    TResult Function(_ExpertiseStatusStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _ExpertiseStatusStateLoadFailure
    implements ExpertiseStatusState {
  const factory _ExpertiseStatusStateLoadFailure(final Failure failure) =
      _$ExpertiseStatusStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ExpertiseStatusStateLoadFailureImplCopyWith<
          _$ExpertiseStatusStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpertiseStatusStateLoadingImplCopyWith<$Res> {
  factory _$$ExpertiseStatusStateLoadingImplCopyWith(
          _$ExpertiseStatusStateLoadingImpl value,
          $Res Function(_$ExpertiseStatusStateLoadingImpl) then) =
      __$$ExpertiseStatusStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpertiseStatusStateLoadingImplCopyWithImpl<$Res>
    extends _$ExpertiseStatusStateCopyWithImpl<$Res,
        _$ExpertiseStatusStateLoadingImpl>
    implements _$$ExpertiseStatusStateLoadingImplCopyWith<$Res> {
  __$$ExpertiseStatusStateLoadingImplCopyWithImpl(
      _$ExpertiseStatusStateLoadingImpl _value,
      $Res Function(_$ExpertiseStatusStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExpertiseStatusStateLoadingImpl implements ExpertiseStatusStateLoading {
  const _$ExpertiseStatusStateLoadingImpl();

  @override
  String toString() {
    return 'ExpertiseStatusState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertiseStatusStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ExpertiseStatusEntities expertiseStatusEntities)
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
    TResult? Function(ExpertiseStatusEntities expertiseStatusEntities)?
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
    TResult Function(ExpertiseStatusEntities expertiseStatusEntities)?
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
    required TResult Function(_ExpertiseStatusStateInitial value) initial,
    required TResult Function(_ExpertiseStatusStateLoadFailure value)
        loadFailure,
    required TResult Function(ExpertiseStatusStateLoading value) loading,
    required TResult Function(_ExpertiseStatusStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpertiseStatusStateInitial value)? initial,
    TResult? Function(_ExpertiseStatusStateLoadFailure value)? loadFailure,
    TResult? Function(ExpertiseStatusStateLoading value)? loading,
    TResult? Function(_ExpertiseStatusStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpertiseStatusStateInitial value)? initial,
    TResult Function(_ExpertiseStatusStateLoadFailure value)? loadFailure,
    TResult Function(ExpertiseStatusStateLoading value)? loading,
    TResult Function(_ExpertiseStatusStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExpertiseStatusStateLoading implements ExpertiseStatusState {
  const factory ExpertiseStatusStateLoading() =
      _$ExpertiseStatusStateLoadingImpl;
}

/// @nodoc
abstract class _$$ExpertiseStatusStateLoadSuccessImplCopyWith<$Res> {
  factory _$$ExpertiseStatusStateLoadSuccessImplCopyWith(
          _$ExpertiseStatusStateLoadSuccessImpl value,
          $Res Function(_$ExpertiseStatusStateLoadSuccessImpl) then) =
      __$$ExpertiseStatusStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpertiseStatusEntities expertiseStatusEntities});
}

/// @nodoc
class __$$ExpertiseStatusStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$ExpertiseStatusStateCopyWithImpl<$Res,
        _$ExpertiseStatusStateLoadSuccessImpl>
    implements _$$ExpertiseStatusStateLoadSuccessImplCopyWith<$Res> {
  __$$ExpertiseStatusStateLoadSuccessImplCopyWithImpl(
      _$ExpertiseStatusStateLoadSuccessImpl _value,
      $Res Function(_$ExpertiseStatusStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expertiseStatusEntities = null,
  }) {
    return _then(_$ExpertiseStatusStateLoadSuccessImpl(
      null == expertiseStatusEntities
          ? _value.expertiseStatusEntities
          : expertiseStatusEntities // ignore: cast_nullable_to_non_nullable
              as ExpertiseStatusEntities,
    ));
  }
}

/// @nodoc

class _$ExpertiseStatusStateLoadSuccessImpl
    implements _ExpertiseStatusStateLoadSuccess {
  const _$ExpertiseStatusStateLoadSuccessImpl(this.expertiseStatusEntities);

  @override
  final ExpertiseStatusEntities expertiseStatusEntities;

  @override
  String toString() {
    return 'ExpertiseStatusState.loadSuccess(expertiseStatusEntities: $expertiseStatusEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertiseStatusStateLoadSuccessImpl &&
            (identical(
                    other.expertiseStatusEntities, expertiseStatusEntities) ||
                other.expertiseStatusEntities == expertiseStatusEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expertiseStatusEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpertiseStatusStateLoadSuccessImplCopyWith<
          _$ExpertiseStatusStateLoadSuccessImpl>
      get copyWith => __$$ExpertiseStatusStateLoadSuccessImplCopyWithImpl<
          _$ExpertiseStatusStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(ExpertiseStatusEntities expertiseStatusEntities)
        loadSuccess,
  }) {
    return loadSuccess(expertiseStatusEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(ExpertiseStatusEntities expertiseStatusEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(expertiseStatusEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(ExpertiseStatusEntities expertiseStatusEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(expertiseStatusEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExpertiseStatusStateInitial value) initial,
    required TResult Function(_ExpertiseStatusStateLoadFailure value)
        loadFailure,
    required TResult Function(ExpertiseStatusStateLoading value) loading,
    required TResult Function(_ExpertiseStatusStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExpertiseStatusStateInitial value)? initial,
    TResult? Function(_ExpertiseStatusStateLoadFailure value)? loadFailure,
    TResult? Function(ExpertiseStatusStateLoading value)? loading,
    TResult? Function(_ExpertiseStatusStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExpertiseStatusStateInitial value)? initial,
    TResult Function(_ExpertiseStatusStateLoadFailure value)? loadFailure,
    TResult Function(ExpertiseStatusStateLoading value)? loading,
    TResult Function(_ExpertiseStatusStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ExpertiseStatusStateLoadSuccess
    implements ExpertiseStatusState {
  const factory _ExpertiseStatusStateLoadSuccess(
          final ExpertiseStatusEntities expertiseStatusEntities) =
      _$ExpertiseStatusStateLoadSuccessImpl;

  ExpertiseStatusEntities get expertiseStatusEntities;
  @JsonKey(ignore: true)
  _$$ExpertiseStatusStateLoadSuccessImplCopyWith<
          _$ExpertiseStatusStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
