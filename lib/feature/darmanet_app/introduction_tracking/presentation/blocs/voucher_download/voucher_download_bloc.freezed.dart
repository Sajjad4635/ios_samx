// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_download_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VoucherDownloadEvent {
  VoucherDownloadParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VoucherDownloadParam param) voucherDownloadEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VoucherDownloadParam param)? voucherDownloadEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VoucherDownloadParam param)? voucherDownloadEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VoucherDownloadEventCalled value)
        voucherDownloadEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherDownloadEventCalled value)? voucherDownloadEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherDownloadEventCalled value)? voucherDownloadEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VoucherDownloadEventCopyWith<VoucherDownloadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherDownloadEventCopyWith<$Res> {
  factory $VoucherDownloadEventCopyWith(VoucherDownloadEvent value,
          $Res Function(VoucherDownloadEvent) then) =
      _$VoucherDownloadEventCopyWithImpl<$Res, VoucherDownloadEvent>;
  @useResult
  $Res call({VoucherDownloadParam param});
}

/// @nodoc
class _$VoucherDownloadEventCopyWithImpl<$Res,
        $Val extends VoucherDownloadEvent>
    implements $VoucherDownloadEventCopyWith<$Res> {
  _$VoucherDownloadEventCopyWithImpl(this._value, this._then);

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
              as VoucherDownloadParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoucherDownloadEventCalledImplCopyWith<$Res>
    implements $VoucherDownloadEventCopyWith<$Res> {
  factory _$$VoucherDownloadEventCalledImplCopyWith(
          _$VoucherDownloadEventCalledImpl value,
          $Res Function(_$VoucherDownloadEventCalledImpl) then) =
      __$$VoucherDownloadEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VoucherDownloadParam param});
}

/// @nodoc
class __$$VoucherDownloadEventCalledImplCopyWithImpl<$Res>
    extends _$VoucherDownloadEventCopyWithImpl<$Res,
        _$VoucherDownloadEventCalledImpl>
    implements _$$VoucherDownloadEventCalledImplCopyWith<$Res> {
  __$$VoucherDownloadEventCalledImplCopyWithImpl(
      _$VoucherDownloadEventCalledImpl _value,
      $Res Function(_$VoucherDownloadEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$VoucherDownloadEventCalledImpl(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as VoucherDownloadParam,
    ));
  }
}

/// @nodoc

class _$VoucherDownloadEventCalledImpl implements _VoucherDownloadEventCalled {
  const _$VoucherDownloadEventCalledImpl({required this.param});

  @override
  final VoucherDownloadParam param;

  @override
  String toString() {
    return 'VoucherDownloadEvent.voucherDownloadEvent(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherDownloadEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherDownloadEventCalledImplCopyWith<_$VoucherDownloadEventCalledImpl>
      get copyWith => __$$VoucherDownloadEventCalledImplCopyWithImpl<
          _$VoucherDownloadEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VoucherDownloadParam param) voucherDownloadEvent,
  }) {
    return voucherDownloadEvent(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VoucherDownloadParam param)? voucherDownloadEvent,
  }) {
    return voucherDownloadEvent?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VoucherDownloadParam param)? voucherDownloadEvent,
    required TResult orElse(),
  }) {
    if (voucherDownloadEvent != null) {
      return voucherDownloadEvent(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VoucherDownloadEventCalled value)
        voucherDownloadEvent,
  }) {
    return voucherDownloadEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherDownloadEventCalled value)? voucherDownloadEvent,
  }) {
    return voucherDownloadEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherDownloadEventCalled value)? voucherDownloadEvent,
    required TResult orElse(),
  }) {
    if (voucherDownloadEvent != null) {
      return voucherDownloadEvent(this);
    }
    return orElse();
  }
}

abstract class _VoucherDownloadEventCalled implements VoucherDownloadEvent {
  const factory _VoucherDownloadEventCalled(
          {required final VoucherDownloadParam param}) =
      _$VoucherDownloadEventCalledImpl;

  @override
  VoucherDownloadParam get param;
  @override
  @JsonKey(ignore: true)
  _$$VoucherDownloadEventCalledImplCopyWith<_$VoucherDownloadEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VoucherDownloadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VoucherDownloadEntities voucherDownloadEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VoucherDownloadEntities voucherDownloadEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VoucherDownloadEntities voucherDownloadEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VoucherDownloadStateInitial value) initial,
    required TResult Function(_VoucherDownloadStateLoadFailure value)
        loadFailure,
    required TResult Function(VoucherDownloadStateLoading value) loading,
    required TResult Function(_VoucherDownloadStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherDownloadStateInitial value)? initial,
    TResult? Function(_VoucherDownloadStateLoadFailure value)? loadFailure,
    TResult? Function(VoucherDownloadStateLoading value)? loading,
    TResult? Function(_VoucherDownloadStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherDownloadStateInitial value)? initial,
    TResult Function(_VoucherDownloadStateLoadFailure value)? loadFailure,
    TResult Function(VoucherDownloadStateLoading value)? loading,
    TResult Function(_VoucherDownloadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherDownloadStateCopyWith<$Res> {
  factory $VoucherDownloadStateCopyWith(VoucherDownloadState value,
          $Res Function(VoucherDownloadState) then) =
      _$VoucherDownloadStateCopyWithImpl<$Res, VoucherDownloadState>;
}

/// @nodoc
class _$VoucherDownloadStateCopyWithImpl<$Res,
        $Val extends VoucherDownloadState>
    implements $VoucherDownloadStateCopyWith<$Res> {
  _$VoucherDownloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VoucherDownloadStateInitialImplCopyWith<$Res> {
  factory _$$VoucherDownloadStateInitialImplCopyWith(
          _$VoucherDownloadStateInitialImpl value,
          $Res Function(_$VoucherDownloadStateInitialImpl) then) =
      __$$VoucherDownloadStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoucherDownloadStateInitialImplCopyWithImpl<$Res>
    extends _$VoucherDownloadStateCopyWithImpl<$Res,
        _$VoucherDownloadStateInitialImpl>
    implements _$$VoucherDownloadStateInitialImplCopyWith<$Res> {
  __$$VoucherDownloadStateInitialImplCopyWithImpl(
      _$VoucherDownloadStateInitialImpl _value,
      $Res Function(_$VoucherDownloadStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VoucherDownloadStateInitialImpl
    implements _VoucherDownloadStateInitial {
  const _$VoucherDownloadStateInitialImpl();

  @override
  String toString() {
    return 'VoucherDownloadState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherDownloadStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VoucherDownloadEntities voucherDownloadEntities)
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
    TResult? Function(VoucherDownloadEntities voucherDownloadEntities)?
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
    TResult Function(VoucherDownloadEntities voucherDownloadEntities)?
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
    required TResult Function(_VoucherDownloadStateInitial value) initial,
    required TResult Function(_VoucherDownloadStateLoadFailure value)
        loadFailure,
    required TResult Function(VoucherDownloadStateLoading value) loading,
    required TResult Function(_VoucherDownloadStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherDownloadStateInitial value)? initial,
    TResult? Function(_VoucherDownloadStateLoadFailure value)? loadFailure,
    TResult? Function(VoucherDownloadStateLoading value)? loading,
    TResult? Function(_VoucherDownloadStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherDownloadStateInitial value)? initial,
    TResult Function(_VoucherDownloadStateLoadFailure value)? loadFailure,
    TResult Function(VoucherDownloadStateLoading value)? loading,
    TResult Function(_VoucherDownloadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _VoucherDownloadStateInitial implements VoucherDownloadState {
  const factory _VoucherDownloadStateInitial() =
      _$VoucherDownloadStateInitialImpl;
}

/// @nodoc
abstract class _$$VoucherDownloadStateLoadFailureImplCopyWith<$Res> {
  factory _$$VoucherDownloadStateLoadFailureImplCopyWith(
          _$VoucherDownloadStateLoadFailureImpl value,
          $Res Function(_$VoucherDownloadStateLoadFailureImpl) then) =
      __$$VoucherDownloadStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$VoucherDownloadStateLoadFailureImplCopyWithImpl<$Res>
    extends _$VoucherDownloadStateCopyWithImpl<$Res,
        _$VoucherDownloadStateLoadFailureImpl>
    implements _$$VoucherDownloadStateLoadFailureImplCopyWith<$Res> {
  __$$VoucherDownloadStateLoadFailureImplCopyWithImpl(
      _$VoucherDownloadStateLoadFailureImpl _value,
      $Res Function(_$VoucherDownloadStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$VoucherDownloadStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$VoucherDownloadStateLoadFailureImpl
    implements _VoucherDownloadStateLoadFailure {
  const _$VoucherDownloadStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'VoucherDownloadState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherDownloadStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherDownloadStateLoadFailureImplCopyWith<
          _$VoucherDownloadStateLoadFailureImpl>
      get copyWith => __$$VoucherDownloadStateLoadFailureImplCopyWithImpl<
          _$VoucherDownloadStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VoucherDownloadEntities voucherDownloadEntities)
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
    TResult? Function(VoucherDownloadEntities voucherDownloadEntities)?
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
    TResult Function(VoucherDownloadEntities voucherDownloadEntities)?
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
    required TResult Function(_VoucherDownloadStateInitial value) initial,
    required TResult Function(_VoucherDownloadStateLoadFailure value)
        loadFailure,
    required TResult Function(VoucherDownloadStateLoading value) loading,
    required TResult Function(_VoucherDownloadStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherDownloadStateInitial value)? initial,
    TResult? Function(_VoucherDownloadStateLoadFailure value)? loadFailure,
    TResult? Function(VoucherDownloadStateLoading value)? loading,
    TResult? Function(_VoucherDownloadStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherDownloadStateInitial value)? initial,
    TResult Function(_VoucherDownloadStateLoadFailure value)? loadFailure,
    TResult Function(VoucherDownloadStateLoading value)? loading,
    TResult Function(_VoucherDownloadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _VoucherDownloadStateLoadFailure
    implements VoucherDownloadState {
  const factory _VoucherDownloadStateLoadFailure(final Failure failure) =
      _$VoucherDownloadStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$VoucherDownloadStateLoadFailureImplCopyWith<
          _$VoucherDownloadStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoucherDownloadStateLoadingImplCopyWith<$Res> {
  factory _$$VoucherDownloadStateLoadingImplCopyWith(
          _$VoucherDownloadStateLoadingImpl value,
          $Res Function(_$VoucherDownloadStateLoadingImpl) then) =
      __$$VoucherDownloadStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoucherDownloadStateLoadingImplCopyWithImpl<$Res>
    extends _$VoucherDownloadStateCopyWithImpl<$Res,
        _$VoucherDownloadStateLoadingImpl>
    implements _$$VoucherDownloadStateLoadingImplCopyWith<$Res> {
  __$$VoucherDownloadStateLoadingImplCopyWithImpl(
      _$VoucherDownloadStateLoadingImpl _value,
      $Res Function(_$VoucherDownloadStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VoucherDownloadStateLoadingImpl implements VoucherDownloadStateLoading {
  const _$VoucherDownloadStateLoadingImpl();

  @override
  String toString() {
    return 'VoucherDownloadState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherDownloadStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VoucherDownloadEntities voucherDownloadEntities)
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
    TResult? Function(VoucherDownloadEntities voucherDownloadEntities)?
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
    TResult Function(VoucherDownloadEntities voucherDownloadEntities)?
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
    required TResult Function(_VoucherDownloadStateInitial value) initial,
    required TResult Function(_VoucherDownloadStateLoadFailure value)
        loadFailure,
    required TResult Function(VoucherDownloadStateLoading value) loading,
    required TResult Function(_VoucherDownloadStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherDownloadStateInitial value)? initial,
    TResult? Function(_VoucherDownloadStateLoadFailure value)? loadFailure,
    TResult? Function(VoucherDownloadStateLoading value)? loading,
    TResult? Function(_VoucherDownloadStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherDownloadStateInitial value)? initial,
    TResult Function(_VoucherDownloadStateLoadFailure value)? loadFailure,
    TResult Function(VoucherDownloadStateLoading value)? loading,
    TResult Function(_VoucherDownloadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VoucherDownloadStateLoading implements VoucherDownloadState {
  const factory VoucherDownloadStateLoading() =
      _$VoucherDownloadStateLoadingImpl;
}

/// @nodoc
abstract class _$$VoucherDownloadStateLoadSuccessImplCopyWith<$Res> {
  factory _$$VoucherDownloadStateLoadSuccessImplCopyWith(
          _$VoucherDownloadStateLoadSuccessImpl value,
          $Res Function(_$VoucherDownloadStateLoadSuccessImpl) then) =
      __$$VoucherDownloadStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoucherDownloadEntities voucherDownloadEntities});
}

/// @nodoc
class __$$VoucherDownloadStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$VoucherDownloadStateCopyWithImpl<$Res,
        _$VoucherDownloadStateLoadSuccessImpl>
    implements _$$VoucherDownloadStateLoadSuccessImplCopyWith<$Res> {
  __$$VoucherDownloadStateLoadSuccessImplCopyWithImpl(
      _$VoucherDownloadStateLoadSuccessImpl _value,
      $Res Function(_$VoucherDownloadStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucherDownloadEntities = null,
  }) {
    return _then(_$VoucherDownloadStateLoadSuccessImpl(
      null == voucherDownloadEntities
          ? _value.voucherDownloadEntities
          : voucherDownloadEntities // ignore: cast_nullable_to_non_nullable
              as VoucherDownloadEntities,
    ));
  }
}

/// @nodoc

class _$VoucherDownloadStateLoadSuccessImpl
    implements _VoucherDownloadStateLoadSuccess {
  const _$VoucherDownloadStateLoadSuccessImpl(this.voucherDownloadEntities);

  @override
  final VoucherDownloadEntities voucherDownloadEntities;

  @override
  String toString() {
    return 'VoucherDownloadState.loadSuccess(voucherDownloadEntities: $voucherDownloadEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherDownloadStateLoadSuccessImpl &&
            (identical(
                    other.voucherDownloadEntities, voucherDownloadEntities) ||
                other.voucherDownloadEntities == voucherDownloadEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voucherDownloadEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherDownloadStateLoadSuccessImplCopyWith<
          _$VoucherDownloadStateLoadSuccessImpl>
      get copyWith => __$$VoucherDownloadStateLoadSuccessImplCopyWithImpl<
          _$VoucherDownloadStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VoucherDownloadEntities voucherDownloadEntities)
        loadSuccess,
  }) {
    return loadSuccess(voucherDownloadEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VoucherDownloadEntities voucherDownloadEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(voucherDownloadEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VoucherDownloadEntities voucherDownloadEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(voucherDownloadEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VoucherDownloadStateInitial value) initial,
    required TResult Function(_VoucherDownloadStateLoadFailure value)
        loadFailure,
    required TResult Function(VoucherDownloadStateLoading value) loading,
    required TResult Function(_VoucherDownloadStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherDownloadStateInitial value)? initial,
    TResult? Function(_VoucherDownloadStateLoadFailure value)? loadFailure,
    TResult? Function(VoucherDownloadStateLoading value)? loading,
    TResult? Function(_VoucherDownloadStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherDownloadStateInitial value)? initial,
    TResult Function(_VoucherDownloadStateLoadFailure value)? loadFailure,
    TResult Function(VoucherDownloadStateLoading value)? loading,
    TResult Function(_VoucherDownloadStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _VoucherDownloadStateLoadSuccess
    implements VoucherDownloadState {
  const factory _VoucherDownloadStateLoadSuccess(
          final VoucherDownloadEntities voucherDownloadEntities) =
      _$VoucherDownloadStateLoadSuccessImpl;

  VoucherDownloadEntities get voucherDownloadEntities;
  @JsonKey(ignore: true)
  _$$VoucherDownloadStateLoadSuccessImplCopyWith<
          _$VoucherDownloadStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
