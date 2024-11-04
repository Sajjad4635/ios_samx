// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FileListEvent {
  FileListParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FileListParam param) fileListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FileListParam param)? fileListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FileListParam param)? fileListEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FileListEventCalled value) fileListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileListEventCalled value)? fileListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileListEventCalled value)? fileListEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileListEventCopyWith<FileListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileListEventCopyWith<$Res> {
  factory $FileListEventCopyWith(
          FileListEvent value, $Res Function(FileListEvent) then) =
      _$FileListEventCopyWithImpl<$Res, FileListEvent>;
  @useResult
  $Res call({FileListParam param});
}

/// @nodoc
class _$FileListEventCopyWithImpl<$Res, $Val extends FileListEvent>
    implements $FileListEventCopyWith<$Res> {
  _$FileListEventCopyWithImpl(this._value, this._then);

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
              as FileListParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileListEventCalledImplCopyWith<$Res>
    implements $FileListEventCopyWith<$Res> {
  factory _$$FileListEventCalledImplCopyWith(_$FileListEventCalledImpl value,
          $Res Function(_$FileListEventCalledImpl) then) =
      __$$FileListEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FileListParam param});
}

/// @nodoc
class __$$FileListEventCalledImplCopyWithImpl<$Res>
    extends _$FileListEventCopyWithImpl<$Res, _$FileListEventCalledImpl>
    implements _$$FileListEventCalledImplCopyWith<$Res> {
  __$$FileListEventCalledImplCopyWithImpl(_$FileListEventCalledImpl _value,
      $Res Function(_$FileListEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$FileListEventCalledImpl(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as FileListParam,
    ));
  }
}

/// @nodoc

class _$FileListEventCalledImpl implements _FileListEventCalled {
  const _$FileListEventCalledImpl({required this.param});

  @override
  final FileListParam param;

  @override
  String toString() {
    return 'FileListEvent.fileListEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileListEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileListEventCalledImplCopyWith<_$FileListEventCalledImpl> get copyWith =>
      __$$FileListEventCalledImplCopyWithImpl<_$FileListEventCalledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FileListParam param) fileListEventCalled,
  }) {
    return fileListEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FileListParam param)? fileListEventCalled,
  }) {
    return fileListEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FileListParam param)? fileListEventCalled,
    required TResult orElse(),
  }) {
    if (fileListEventCalled != null) {
      return fileListEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FileListEventCalled value) fileListEventCalled,
  }) {
    return fileListEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileListEventCalled value)? fileListEventCalled,
  }) {
    return fileListEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileListEventCalled value)? fileListEventCalled,
    required TResult orElse(),
  }) {
    if (fileListEventCalled != null) {
      return fileListEventCalled(this);
    }
    return orElse();
  }
}

abstract class _FileListEventCalled implements FileListEvent {
  const factory _FileListEventCalled({required final FileListParam param}) =
      _$FileListEventCalledImpl;

  @override
  FileListParam get param;
  @override
  @JsonKey(ignore: true)
  _$$FileListEventCalledImplCopyWith<_$FileListEventCalledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FileListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(FileListEntities fileListEntities) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(FileListEntities fileListEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(FileListEntities fileListEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FileListStateInitial value) initial,
    required TResult Function(_FileListStateLoadFailure value) loadFailure,
    required TResult Function(FileListStateLoading value) loading,
    required TResult Function(_FileListStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileListStateInitial value)? initial,
    TResult? Function(_FileListStateLoadFailure value)? loadFailure,
    TResult? Function(FileListStateLoading value)? loading,
    TResult? Function(_FileListStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileListStateInitial value)? initial,
    TResult Function(_FileListStateLoadFailure value)? loadFailure,
    TResult Function(FileListStateLoading value)? loading,
    TResult Function(_FileListStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileListStateCopyWith<$Res> {
  factory $FileListStateCopyWith(
          FileListState value, $Res Function(FileListState) then) =
      _$FileListStateCopyWithImpl<$Res, FileListState>;
}

/// @nodoc
class _$FileListStateCopyWithImpl<$Res, $Val extends FileListState>
    implements $FileListStateCopyWith<$Res> {
  _$FileListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FileListStateInitialImplCopyWith<$Res> {
  factory _$$FileListStateInitialImplCopyWith(_$FileListStateInitialImpl value,
          $Res Function(_$FileListStateInitialImpl) then) =
      __$$FileListStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FileListStateInitialImplCopyWithImpl<$Res>
    extends _$FileListStateCopyWithImpl<$Res, _$FileListStateInitialImpl>
    implements _$$FileListStateInitialImplCopyWith<$Res> {
  __$$FileListStateInitialImplCopyWithImpl(_$FileListStateInitialImpl _value,
      $Res Function(_$FileListStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FileListStateInitialImpl implements _FileListStateInitial {
  const _$FileListStateInitialImpl();

  @override
  String toString() {
    return 'FileListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileListStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(FileListEntities fileListEntities) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(FileListEntities fileListEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(FileListEntities fileListEntities)? loadSuccess,
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
    required TResult Function(_FileListStateInitial value) initial,
    required TResult Function(_FileListStateLoadFailure value) loadFailure,
    required TResult Function(FileListStateLoading value) loading,
    required TResult Function(_FileListStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileListStateInitial value)? initial,
    TResult? Function(_FileListStateLoadFailure value)? loadFailure,
    TResult? Function(FileListStateLoading value)? loading,
    TResult? Function(_FileListStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileListStateInitial value)? initial,
    TResult Function(_FileListStateLoadFailure value)? loadFailure,
    TResult Function(FileListStateLoading value)? loading,
    TResult Function(_FileListStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FileListStateInitial implements FileListState {
  const factory _FileListStateInitial() = _$FileListStateInitialImpl;
}

/// @nodoc
abstract class _$$FileListStateLoadFailureImplCopyWith<$Res> {
  factory _$$FileListStateLoadFailureImplCopyWith(
          _$FileListStateLoadFailureImpl value,
          $Res Function(_$FileListStateLoadFailureImpl) then) =
      __$$FileListStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$FileListStateLoadFailureImplCopyWithImpl<$Res>
    extends _$FileListStateCopyWithImpl<$Res, _$FileListStateLoadFailureImpl>
    implements _$$FileListStateLoadFailureImplCopyWith<$Res> {
  __$$FileListStateLoadFailureImplCopyWithImpl(
      _$FileListStateLoadFailureImpl _value,
      $Res Function(_$FileListStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FileListStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$FileListStateLoadFailureImpl implements _FileListStateLoadFailure {
  const _$FileListStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FileListState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileListStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileListStateLoadFailureImplCopyWith<_$FileListStateLoadFailureImpl>
      get copyWith => __$$FileListStateLoadFailureImplCopyWithImpl<
          _$FileListStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(FileListEntities fileListEntities) loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(FileListEntities fileListEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(FileListEntities fileListEntities)? loadSuccess,
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
    required TResult Function(_FileListStateInitial value) initial,
    required TResult Function(_FileListStateLoadFailure value) loadFailure,
    required TResult Function(FileListStateLoading value) loading,
    required TResult Function(_FileListStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileListStateInitial value)? initial,
    TResult? Function(_FileListStateLoadFailure value)? loadFailure,
    TResult? Function(FileListStateLoading value)? loading,
    TResult? Function(_FileListStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileListStateInitial value)? initial,
    TResult Function(_FileListStateLoadFailure value)? loadFailure,
    TResult Function(FileListStateLoading value)? loading,
    TResult Function(_FileListStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _FileListStateLoadFailure implements FileListState {
  const factory _FileListStateLoadFailure(final Failure failure) =
      _$FileListStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FileListStateLoadFailureImplCopyWith<_$FileListStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileListStateLoadingImplCopyWith<$Res> {
  factory _$$FileListStateLoadingImplCopyWith(_$FileListStateLoadingImpl value,
          $Res Function(_$FileListStateLoadingImpl) then) =
      __$$FileListStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FileListStateLoadingImplCopyWithImpl<$Res>
    extends _$FileListStateCopyWithImpl<$Res, _$FileListStateLoadingImpl>
    implements _$$FileListStateLoadingImplCopyWith<$Res> {
  __$$FileListStateLoadingImplCopyWithImpl(_$FileListStateLoadingImpl _value,
      $Res Function(_$FileListStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FileListStateLoadingImpl implements FileListStateLoading {
  const _$FileListStateLoadingImpl();

  @override
  String toString() {
    return 'FileListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileListStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(FileListEntities fileListEntities) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(FileListEntities fileListEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(FileListEntities fileListEntities)? loadSuccess,
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
    required TResult Function(_FileListStateInitial value) initial,
    required TResult Function(_FileListStateLoadFailure value) loadFailure,
    required TResult Function(FileListStateLoading value) loading,
    required TResult Function(_FileListStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileListStateInitial value)? initial,
    TResult? Function(_FileListStateLoadFailure value)? loadFailure,
    TResult? Function(FileListStateLoading value)? loading,
    TResult? Function(_FileListStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileListStateInitial value)? initial,
    TResult Function(_FileListStateLoadFailure value)? loadFailure,
    TResult Function(FileListStateLoading value)? loading,
    TResult Function(_FileListStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FileListStateLoading implements FileListState {
  const factory FileListStateLoading() = _$FileListStateLoadingImpl;
}

/// @nodoc
abstract class _$$FileListStateLoadSuccessImplCopyWith<$Res> {
  factory _$$FileListStateLoadSuccessImplCopyWith(
          _$FileListStateLoadSuccessImpl value,
          $Res Function(_$FileListStateLoadSuccessImpl) then) =
      __$$FileListStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FileListEntities fileListEntities});
}

/// @nodoc
class __$$FileListStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$FileListStateCopyWithImpl<$Res, _$FileListStateLoadSuccessImpl>
    implements _$$FileListStateLoadSuccessImplCopyWith<$Res> {
  __$$FileListStateLoadSuccessImplCopyWithImpl(
      _$FileListStateLoadSuccessImpl _value,
      $Res Function(_$FileListStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileListEntities = null,
  }) {
    return _then(_$FileListStateLoadSuccessImpl(
      null == fileListEntities
          ? _value.fileListEntities
          : fileListEntities // ignore: cast_nullable_to_non_nullable
              as FileListEntities,
    ));
  }
}

/// @nodoc

class _$FileListStateLoadSuccessImpl implements _FileListStateLoadSuccess {
  const _$FileListStateLoadSuccessImpl(this.fileListEntities);

  @override
  final FileListEntities fileListEntities;

  @override
  String toString() {
    return 'FileListState.loadSuccess(fileListEntities: $fileListEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileListStateLoadSuccessImpl &&
            (identical(other.fileListEntities, fileListEntities) ||
                other.fileListEntities == fileListEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileListEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileListStateLoadSuccessImplCopyWith<_$FileListStateLoadSuccessImpl>
      get copyWith => __$$FileListStateLoadSuccessImplCopyWithImpl<
          _$FileListStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(FileListEntities fileListEntities) loadSuccess,
  }) {
    return loadSuccess(fileListEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(FileListEntities fileListEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(fileListEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(FileListEntities fileListEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(fileListEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FileListStateInitial value) initial,
    required TResult Function(_FileListStateLoadFailure value) loadFailure,
    required TResult Function(FileListStateLoading value) loading,
    required TResult Function(_FileListStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileListStateInitial value)? initial,
    TResult? Function(_FileListStateLoadFailure value)? loadFailure,
    TResult? Function(FileListStateLoading value)? loading,
    TResult? Function(_FileListStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileListStateInitial value)? initial,
    TResult Function(_FileListStateLoadFailure value)? loadFailure,
    TResult Function(FileListStateLoading value)? loading,
    TResult Function(_FileListStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _FileListStateLoadSuccess implements FileListState {
  const factory _FileListStateLoadSuccess(
      final FileListEntities fileListEntities) = _$FileListStateLoadSuccessImpl;

  FileListEntities get fileListEntities;
  @JsonKey(ignore: true)
  _$$FileListStateLoadSuccessImplCopyWith<_$FileListStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
