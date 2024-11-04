// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadEvent {
  UploadParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UploadParam param) uploadEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UploadParam param)? uploadEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UploadParam param)? uploadEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadEventCalled value) uploadEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadEventCalled value)? uploadEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadEventCalled value)? uploadEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadEventCopyWith<UploadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadEventCopyWith<$Res> {
  factory $UploadEventCopyWith(
          UploadEvent value, $Res Function(UploadEvent) then) =
      _$UploadEventCopyWithImpl<$Res, UploadEvent>;
  @useResult
  $Res call({UploadParam param});
}

/// @nodoc
class _$UploadEventCopyWithImpl<$Res, $Val extends UploadEvent>
    implements $UploadEventCopyWith<$Res> {
  _$UploadEventCopyWithImpl(this._value, this._then);

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
              as UploadParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadEventCalledImplCopyWith<$Res>
    implements $UploadEventCopyWith<$Res> {
  factory _$$UploadEventCalledImplCopyWith(_$UploadEventCalledImpl value,
          $Res Function(_$UploadEventCalledImpl) then) =
      __$$UploadEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UploadParam param});
}

/// @nodoc
class __$$UploadEventCalledImplCopyWithImpl<$Res>
    extends _$UploadEventCopyWithImpl<$Res, _$UploadEventCalledImpl>
    implements _$$UploadEventCalledImplCopyWith<$Res> {
  __$$UploadEventCalledImplCopyWithImpl(_$UploadEventCalledImpl _value,
      $Res Function(_$UploadEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$UploadEventCalledImpl(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as UploadParam,
    ));
  }
}

/// @nodoc

class _$UploadEventCalledImpl implements _UploadEventCalled {
  const _$UploadEventCalledImpl({required this.param});

  @override
  final UploadParam param;

  @override
  String toString() {
    return 'UploadEvent.uploadEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadEventCalledImplCopyWith<_$UploadEventCalledImpl> get copyWith =>
      __$$UploadEventCalledImplCopyWithImpl<_$UploadEventCalledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UploadParam param) uploadEventCalled,
  }) {
    return uploadEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UploadParam param)? uploadEventCalled,
  }) {
    return uploadEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UploadParam param)? uploadEventCalled,
    required TResult orElse(),
  }) {
    if (uploadEventCalled != null) {
      return uploadEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadEventCalled value) uploadEventCalled,
  }) {
    return uploadEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadEventCalled value)? uploadEventCalled,
  }) {
    return uploadEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadEventCalled value)? uploadEventCalled,
    required TResult orElse(),
  }) {
    if (uploadEventCalled != null) {
      return uploadEventCalled(this);
    }
    return orElse();
  }
}

abstract class _UploadEventCalled implements UploadEvent {
  const factory _UploadEventCalled({required final UploadParam param}) =
      _$UploadEventCalledImpl;

  @override
  UploadParam get param;
  @override
  @JsonKey(ignore: true)
  _$$UploadEventCalledImplCopyWith<_$UploadEventCalledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(UploadEntities uploadEntities) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(UploadEntities uploadEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(UploadEntities uploadEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadStateInitial value) initial,
    required TResult Function(_UploadStateLoadFailure value) loadFailure,
    required TResult Function(UploadStateLoading value) loading,
    required TResult Function(_UploadStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadStateInitial value)? initial,
    TResult? Function(_UploadStateLoadFailure value)? loadFailure,
    TResult? Function(UploadStateLoading value)? loading,
    TResult? Function(_UploadStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadStateInitial value)? initial,
    TResult Function(_UploadStateLoadFailure value)? loadFailure,
    TResult Function(UploadStateLoading value)? loading,
    TResult Function(_UploadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadStateCopyWith<$Res> {
  factory $UploadStateCopyWith(
          UploadState value, $Res Function(UploadState) then) =
      _$UploadStateCopyWithImpl<$Res, UploadState>;
}

/// @nodoc
class _$UploadStateCopyWithImpl<$Res, $Val extends UploadState>
    implements $UploadStateCopyWith<$Res> {
  _$UploadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UploadStateInitialImplCopyWith<$Res> {
  factory _$$UploadStateInitialImplCopyWith(_$UploadStateInitialImpl value,
          $Res Function(_$UploadStateInitialImpl) then) =
      __$$UploadStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadStateInitialImplCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res, _$UploadStateInitialImpl>
    implements _$$UploadStateInitialImplCopyWith<$Res> {
  __$$UploadStateInitialImplCopyWithImpl(_$UploadStateInitialImpl _value,
      $Res Function(_$UploadStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadStateInitialImpl implements _UploadStateInitial {
  const _$UploadStateInitialImpl();

  @override
  String toString() {
    return 'UploadState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(UploadEntities uploadEntities) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(UploadEntities uploadEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(UploadEntities uploadEntities)? loadSuccess,
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
    required TResult Function(_UploadStateInitial value) initial,
    required TResult Function(_UploadStateLoadFailure value) loadFailure,
    required TResult Function(UploadStateLoading value) loading,
    required TResult Function(_UploadStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadStateInitial value)? initial,
    TResult? Function(_UploadStateLoadFailure value)? loadFailure,
    TResult? Function(UploadStateLoading value)? loading,
    TResult? Function(_UploadStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadStateInitial value)? initial,
    TResult Function(_UploadStateLoadFailure value)? loadFailure,
    TResult Function(UploadStateLoading value)? loading,
    TResult Function(_UploadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UploadStateInitial implements UploadState {
  const factory _UploadStateInitial() = _$UploadStateInitialImpl;
}

/// @nodoc
abstract class _$$UploadStateLoadFailureImplCopyWith<$Res> {
  factory _$$UploadStateLoadFailureImplCopyWith(
          _$UploadStateLoadFailureImpl value,
          $Res Function(_$UploadStateLoadFailureImpl) then) =
      __$$UploadStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$UploadStateLoadFailureImplCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res, _$UploadStateLoadFailureImpl>
    implements _$$UploadStateLoadFailureImplCopyWith<$Res> {
  __$$UploadStateLoadFailureImplCopyWithImpl(
      _$UploadStateLoadFailureImpl _value,
      $Res Function(_$UploadStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$UploadStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$UploadStateLoadFailureImpl implements _UploadStateLoadFailure {
  const _$UploadStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'UploadState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadStateLoadFailureImplCopyWith<_$UploadStateLoadFailureImpl>
      get copyWith => __$$UploadStateLoadFailureImplCopyWithImpl<
          _$UploadStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(UploadEntities uploadEntities) loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(UploadEntities uploadEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(UploadEntities uploadEntities)? loadSuccess,
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
    required TResult Function(_UploadStateInitial value) initial,
    required TResult Function(_UploadStateLoadFailure value) loadFailure,
    required TResult Function(UploadStateLoading value) loading,
    required TResult Function(_UploadStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadStateInitial value)? initial,
    TResult? Function(_UploadStateLoadFailure value)? loadFailure,
    TResult? Function(UploadStateLoading value)? loading,
    TResult? Function(_UploadStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadStateInitial value)? initial,
    TResult Function(_UploadStateLoadFailure value)? loadFailure,
    TResult Function(UploadStateLoading value)? loading,
    TResult Function(_UploadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _UploadStateLoadFailure implements UploadState {
  const factory _UploadStateLoadFailure(final Failure failure) =
      _$UploadStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$UploadStateLoadFailureImplCopyWith<_$UploadStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadStateLoadingImplCopyWith<$Res> {
  factory _$$UploadStateLoadingImplCopyWith(_$UploadStateLoadingImpl value,
          $Res Function(_$UploadStateLoadingImpl) then) =
      __$$UploadStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadStateLoadingImplCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res, _$UploadStateLoadingImpl>
    implements _$$UploadStateLoadingImplCopyWith<$Res> {
  __$$UploadStateLoadingImplCopyWithImpl(_$UploadStateLoadingImpl _value,
      $Res Function(_$UploadStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadStateLoadingImpl implements UploadStateLoading {
  const _$UploadStateLoadingImpl();

  @override
  String toString() {
    return 'UploadState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(UploadEntities uploadEntities) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(UploadEntities uploadEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(UploadEntities uploadEntities)? loadSuccess,
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
    required TResult Function(_UploadStateInitial value) initial,
    required TResult Function(_UploadStateLoadFailure value) loadFailure,
    required TResult Function(UploadStateLoading value) loading,
    required TResult Function(_UploadStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadStateInitial value)? initial,
    TResult? Function(_UploadStateLoadFailure value)? loadFailure,
    TResult? Function(UploadStateLoading value)? loading,
    TResult? Function(_UploadStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadStateInitial value)? initial,
    TResult Function(_UploadStateLoadFailure value)? loadFailure,
    TResult Function(UploadStateLoading value)? loading,
    TResult Function(_UploadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UploadStateLoading implements UploadState {
  const factory UploadStateLoading() = _$UploadStateLoadingImpl;
}

/// @nodoc
abstract class _$$UploadStateLoadSuccessImplCopyWith<$Res> {
  factory _$$UploadStateLoadSuccessImplCopyWith(
          _$UploadStateLoadSuccessImpl value,
          $Res Function(_$UploadStateLoadSuccessImpl) then) =
      __$$UploadStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UploadEntities uploadEntities});
}

/// @nodoc
class __$$UploadStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res, _$UploadStateLoadSuccessImpl>
    implements _$$UploadStateLoadSuccessImplCopyWith<$Res> {
  __$$UploadStateLoadSuccessImplCopyWithImpl(
      _$UploadStateLoadSuccessImpl _value,
      $Res Function(_$UploadStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadEntities = null,
  }) {
    return _then(_$UploadStateLoadSuccessImpl(
      null == uploadEntities
          ? _value.uploadEntities
          : uploadEntities // ignore: cast_nullable_to_non_nullable
              as UploadEntities,
    ));
  }
}

/// @nodoc

class _$UploadStateLoadSuccessImpl implements _UploadStateLoadSuccess {
  const _$UploadStateLoadSuccessImpl(this.uploadEntities);

  @override
  final UploadEntities uploadEntities;

  @override
  String toString() {
    return 'UploadState.loadSuccess(uploadEntities: $uploadEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadStateLoadSuccessImpl &&
            (identical(other.uploadEntities, uploadEntities) ||
                other.uploadEntities == uploadEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uploadEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadStateLoadSuccessImplCopyWith<_$UploadStateLoadSuccessImpl>
      get copyWith => __$$UploadStateLoadSuccessImplCopyWithImpl<
          _$UploadStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(UploadEntities uploadEntities) loadSuccess,
  }) {
    return loadSuccess(uploadEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(UploadEntities uploadEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(uploadEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(UploadEntities uploadEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(uploadEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadStateInitial value) initial,
    required TResult Function(_UploadStateLoadFailure value) loadFailure,
    required TResult Function(UploadStateLoading value) loading,
    required TResult Function(_UploadStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadStateInitial value)? initial,
    TResult? Function(_UploadStateLoadFailure value)? loadFailure,
    TResult? Function(UploadStateLoading value)? loading,
    TResult? Function(_UploadStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadStateInitial value)? initial,
    TResult Function(_UploadStateLoadFailure value)? loadFailure,
    TResult Function(UploadStateLoading value)? loading,
    TResult Function(_UploadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _UploadStateLoadSuccess implements UploadState {
  const factory _UploadStateLoadSuccess(final UploadEntities uploadEntities) =
      _$UploadStateLoadSuccessImpl;

  UploadEntities get uploadEntities;
  @JsonKey(ignore: true)
  _$$UploadStateLoadSuccessImplCopyWith<_$UploadStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
