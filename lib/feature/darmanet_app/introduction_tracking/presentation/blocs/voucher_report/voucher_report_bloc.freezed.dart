// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VoucherReportEvent {
  VoucherReportParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VoucherReportParam param) voucherReportEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VoucherReportParam param)? voucherReportEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VoucherReportParam param)? voucherReportEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VoucherReportEventCalled value)
        voucherReportEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherReportEventCalled value)? voucherReportEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherReportEventCalled value)? voucherReportEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VoucherReportEventCopyWith<VoucherReportEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherReportEventCopyWith<$Res> {
  factory $VoucherReportEventCopyWith(
          VoucherReportEvent value, $Res Function(VoucherReportEvent) then) =
      _$VoucherReportEventCopyWithImpl<$Res, VoucherReportEvent>;
  @useResult
  $Res call({VoucherReportParam param});
}

/// @nodoc
class _$VoucherReportEventCopyWithImpl<$Res, $Val extends VoucherReportEvent>
    implements $VoucherReportEventCopyWith<$Res> {
  _$VoucherReportEventCopyWithImpl(this._value, this._then);

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
              as VoucherReportParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoucherReportEventCalledImplCopyWith<$Res>
    implements $VoucherReportEventCopyWith<$Res> {
  factory _$$VoucherReportEventCalledImplCopyWith(
          _$VoucherReportEventCalledImpl value,
          $Res Function(_$VoucherReportEventCalledImpl) then) =
      __$$VoucherReportEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VoucherReportParam param});
}

/// @nodoc
class __$$VoucherReportEventCalledImplCopyWithImpl<$Res>
    extends _$VoucherReportEventCopyWithImpl<$Res,
        _$VoucherReportEventCalledImpl>
    implements _$$VoucherReportEventCalledImplCopyWith<$Res> {
  __$$VoucherReportEventCalledImplCopyWithImpl(
      _$VoucherReportEventCalledImpl _value,
      $Res Function(_$VoucherReportEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$VoucherReportEventCalledImpl(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as VoucherReportParam,
    ));
  }
}

/// @nodoc

class _$VoucherReportEventCalledImpl implements _VoucherReportEventCalled {
  const _$VoucherReportEventCalledImpl({required this.param});

  @override
  final VoucherReportParam param;

  @override
  String toString() {
    return 'VoucherReportEvent.voucherReportEvent(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherReportEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherReportEventCalledImplCopyWith<_$VoucherReportEventCalledImpl>
      get copyWith => __$$VoucherReportEventCalledImplCopyWithImpl<
          _$VoucherReportEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VoucherReportParam param) voucherReportEvent,
  }) {
    return voucherReportEvent(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VoucherReportParam param)? voucherReportEvent,
  }) {
    return voucherReportEvent?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VoucherReportParam param)? voucherReportEvent,
    required TResult orElse(),
  }) {
    if (voucherReportEvent != null) {
      return voucherReportEvent(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VoucherReportEventCalled value)
        voucherReportEvent,
  }) {
    return voucherReportEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherReportEventCalled value)? voucherReportEvent,
  }) {
    return voucherReportEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherReportEventCalled value)? voucherReportEvent,
    required TResult orElse(),
  }) {
    if (voucherReportEvent != null) {
      return voucherReportEvent(this);
    }
    return orElse();
  }
}

abstract class _VoucherReportEventCalled implements VoucherReportEvent {
  const factory _VoucherReportEventCalled(
          {required final VoucherReportParam param}) =
      _$VoucherReportEventCalledImpl;

  @override
  VoucherReportParam get param;
  @override
  @JsonKey(ignore: true)
  _$$VoucherReportEventCalledImplCopyWith<_$VoucherReportEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VoucherReportState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VoucherReportEntities voucherReportEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VoucherReportEntities voucherReportEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VoucherReportEntities voucherReportEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VoucherReportStateInitial value) initial,
    required TResult Function(_VoucherReportStateLoadFailure value) loadFailure,
    required TResult Function(VoucherReportStateLoading value) loading,
    required TResult Function(_VoucherReportStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherReportStateInitial value)? initial,
    TResult? Function(_VoucherReportStateLoadFailure value)? loadFailure,
    TResult? Function(VoucherReportStateLoading value)? loading,
    TResult? Function(_VoucherReportStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherReportStateInitial value)? initial,
    TResult Function(_VoucherReportStateLoadFailure value)? loadFailure,
    TResult Function(VoucherReportStateLoading value)? loading,
    TResult Function(_VoucherReportStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherReportStateCopyWith<$Res> {
  factory $VoucherReportStateCopyWith(
          VoucherReportState value, $Res Function(VoucherReportState) then) =
      _$VoucherReportStateCopyWithImpl<$Res, VoucherReportState>;
}

/// @nodoc
class _$VoucherReportStateCopyWithImpl<$Res, $Val extends VoucherReportState>
    implements $VoucherReportStateCopyWith<$Res> {
  _$VoucherReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VoucherReportStateInitialImplCopyWith<$Res> {
  factory _$$VoucherReportStateInitialImplCopyWith(
          _$VoucherReportStateInitialImpl value,
          $Res Function(_$VoucherReportStateInitialImpl) then) =
      __$$VoucherReportStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoucherReportStateInitialImplCopyWithImpl<$Res>
    extends _$VoucherReportStateCopyWithImpl<$Res,
        _$VoucherReportStateInitialImpl>
    implements _$$VoucherReportStateInitialImplCopyWith<$Res> {
  __$$VoucherReportStateInitialImplCopyWithImpl(
      _$VoucherReportStateInitialImpl _value,
      $Res Function(_$VoucherReportStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VoucherReportStateInitialImpl implements _VoucherReportStateInitial {
  const _$VoucherReportStateInitialImpl();

  @override
  String toString() {
    return 'VoucherReportState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherReportStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VoucherReportEntities voucherReportEntities)
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
    TResult? Function(VoucherReportEntities voucherReportEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VoucherReportEntities voucherReportEntities)? loadSuccess,
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
    required TResult Function(_VoucherReportStateInitial value) initial,
    required TResult Function(_VoucherReportStateLoadFailure value) loadFailure,
    required TResult Function(VoucherReportStateLoading value) loading,
    required TResult Function(_VoucherReportStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherReportStateInitial value)? initial,
    TResult? Function(_VoucherReportStateLoadFailure value)? loadFailure,
    TResult? Function(VoucherReportStateLoading value)? loading,
    TResult? Function(_VoucherReportStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherReportStateInitial value)? initial,
    TResult Function(_VoucherReportStateLoadFailure value)? loadFailure,
    TResult Function(VoucherReportStateLoading value)? loading,
    TResult Function(_VoucherReportStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _VoucherReportStateInitial implements VoucherReportState {
  const factory _VoucherReportStateInitial() = _$VoucherReportStateInitialImpl;
}

/// @nodoc
abstract class _$$VoucherReportStateLoadFailureImplCopyWith<$Res> {
  factory _$$VoucherReportStateLoadFailureImplCopyWith(
          _$VoucherReportStateLoadFailureImpl value,
          $Res Function(_$VoucherReportStateLoadFailureImpl) then) =
      __$$VoucherReportStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$VoucherReportStateLoadFailureImplCopyWithImpl<$Res>
    extends _$VoucherReportStateCopyWithImpl<$Res,
        _$VoucherReportStateLoadFailureImpl>
    implements _$$VoucherReportStateLoadFailureImplCopyWith<$Res> {
  __$$VoucherReportStateLoadFailureImplCopyWithImpl(
      _$VoucherReportStateLoadFailureImpl _value,
      $Res Function(_$VoucherReportStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$VoucherReportStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$VoucherReportStateLoadFailureImpl
    implements _VoucherReportStateLoadFailure {
  const _$VoucherReportStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'VoucherReportState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherReportStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherReportStateLoadFailureImplCopyWith<
          _$VoucherReportStateLoadFailureImpl>
      get copyWith => __$$VoucherReportStateLoadFailureImplCopyWithImpl<
          _$VoucherReportStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VoucherReportEntities voucherReportEntities)
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
    TResult? Function(VoucherReportEntities voucherReportEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VoucherReportEntities voucherReportEntities)? loadSuccess,
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
    required TResult Function(_VoucherReportStateInitial value) initial,
    required TResult Function(_VoucherReportStateLoadFailure value) loadFailure,
    required TResult Function(VoucherReportStateLoading value) loading,
    required TResult Function(_VoucherReportStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherReportStateInitial value)? initial,
    TResult? Function(_VoucherReportStateLoadFailure value)? loadFailure,
    TResult? Function(VoucherReportStateLoading value)? loading,
    TResult? Function(_VoucherReportStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherReportStateInitial value)? initial,
    TResult Function(_VoucherReportStateLoadFailure value)? loadFailure,
    TResult Function(VoucherReportStateLoading value)? loading,
    TResult Function(_VoucherReportStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _VoucherReportStateLoadFailure implements VoucherReportState {
  const factory _VoucherReportStateLoadFailure(final Failure failure) =
      _$VoucherReportStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$VoucherReportStateLoadFailureImplCopyWith<
          _$VoucherReportStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoucherReportStateLoadingImplCopyWith<$Res> {
  factory _$$VoucherReportStateLoadingImplCopyWith(
          _$VoucherReportStateLoadingImpl value,
          $Res Function(_$VoucherReportStateLoadingImpl) then) =
      __$$VoucherReportStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoucherReportStateLoadingImplCopyWithImpl<$Res>
    extends _$VoucherReportStateCopyWithImpl<$Res,
        _$VoucherReportStateLoadingImpl>
    implements _$$VoucherReportStateLoadingImplCopyWith<$Res> {
  __$$VoucherReportStateLoadingImplCopyWithImpl(
      _$VoucherReportStateLoadingImpl _value,
      $Res Function(_$VoucherReportStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VoucherReportStateLoadingImpl implements VoucherReportStateLoading {
  const _$VoucherReportStateLoadingImpl();

  @override
  String toString() {
    return 'VoucherReportState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherReportStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VoucherReportEntities voucherReportEntities)
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
    TResult? Function(VoucherReportEntities voucherReportEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VoucherReportEntities voucherReportEntities)? loadSuccess,
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
    required TResult Function(_VoucherReportStateInitial value) initial,
    required TResult Function(_VoucherReportStateLoadFailure value) loadFailure,
    required TResult Function(VoucherReportStateLoading value) loading,
    required TResult Function(_VoucherReportStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherReportStateInitial value)? initial,
    TResult? Function(_VoucherReportStateLoadFailure value)? loadFailure,
    TResult? Function(VoucherReportStateLoading value)? loading,
    TResult? Function(_VoucherReportStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherReportStateInitial value)? initial,
    TResult Function(_VoucherReportStateLoadFailure value)? loadFailure,
    TResult Function(VoucherReportStateLoading value)? loading,
    TResult Function(_VoucherReportStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VoucherReportStateLoading implements VoucherReportState {
  const factory VoucherReportStateLoading() = _$VoucherReportStateLoadingImpl;
}

/// @nodoc
abstract class _$$VoucherReportStateLoadSuccessImplCopyWith<$Res> {
  factory _$$VoucherReportStateLoadSuccessImplCopyWith(
          _$VoucherReportStateLoadSuccessImpl value,
          $Res Function(_$VoucherReportStateLoadSuccessImpl) then) =
      __$$VoucherReportStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoucherReportEntities voucherReportEntities});
}

/// @nodoc
class __$$VoucherReportStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$VoucherReportStateCopyWithImpl<$Res,
        _$VoucherReportStateLoadSuccessImpl>
    implements _$$VoucherReportStateLoadSuccessImplCopyWith<$Res> {
  __$$VoucherReportStateLoadSuccessImplCopyWithImpl(
      _$VoucherReportStateLoadSuccessImpl _value,
      $Res Function(_$VoucherReportStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucherReportEntities = null,
  }) {
    return _then(_$VoucherReportStateLoadSuccessImpl(
      null == voucherReportEntities
          ? _value.voucherReportEntities
          : voucherReportEntities // ignore: cast_nullable_to_non_nullable
              as VoucherReportEntities,
    ));
  }
}

/// @nodoc

class _$VoucherReportStateLoadSuccessImpl
    implements _VoucherReportStateLoadSuccess {
  const _$VoucherReportStateLoadSuccessImpl(this.voucherReportEntities);

  @override
  final VoucherReportEntities voucherReportEntities;

  @override
  String toString() {
    return 'VoucherReportState.loadSuccess(voucherReportEntities: $voucherReportEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherReportStateLoadSuccessImpl &&
            (identical(other.voucherReportEntities, voucherReportEntities) ||
                other.voucherReportEntities == voucherReportEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voucherReportEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherReportStateLoadSuccessImplCopyWith<
          _$VoucherReportStateLoadSuccessImpl>
      get copyWith => __$$VoucherReportStateLoadSuccessImplCopyWithImpl<
          _$VoucherReportStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(VoucherReportEntities voucherReportEntities)
        loadSuccess,
  }) {
    return loadSuccess(voucherReportEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(VoucherReportEntities voucherReportEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(voucherReportEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(VoucherReportEntities voucherReportEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(voucherReportEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VoucherReportStateInitial value) initial,
    required TResult Function(_VoucherReportStateLoadFailure value) loadFailure,
    required TResult Function(VoucherReportStateLoading value) loading,
    required TResult Function(_VoucherReportStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherReportStateInitial value)? initial,
    TResult? Function(_VoucherReportStateLoadFailure value)? loadFailure,
    TResult? Function(VoucherReportStateLoading value)? loading,
    TResult? Function(_VoucherReportStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherReportStateInitial value)? initial,
    TResult Function(_VoucherReportStateLoadFailure value)? loadFailure,
    TResult Function(VoucherReportStateLoading value)? loading,
    TResult Function(_VoucherReportStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _VoucherReportStateLoadSuccess implements VoucherReportState {
  const factory _VoucherReportStateLoadSuccess(
          final VoucherReportEntities voucherReportEntities) =
      _$VoucherReportStateLoadSuccessImpl;

  VoucherReportEntities get voucherReportEntities;
  @JsonKey(ignore: true)
  _$$VoucherReportStateLoadSuccessImplCopyWith<
          _$VoucherReportStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
