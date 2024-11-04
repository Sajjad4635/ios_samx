// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_request_get_by_id_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VoucherRequestGetByIdEvent {
  VoucherRequestGetByIdParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VoucherRequestGetByIdParam param)
        voucherRequestGetByIdEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VoucherRequestGetByIdParam param)?
        voucherRequestGetByIdEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VoucherRequestGetByIdParam param)?
        voucherRequestGetByIdEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VoucherRequestGetByIdEventCalled value)
        voucherRequestGetByIdEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherRequestGetByIdEventCalled value)?
        voucherRequestGetByIdEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherRequestGetByIdEventCalled value)?
        voucherRequestGetByIdEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VoucherRequestGetByIdEventCopyWith<VoucherRequestGetByIdEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherRequestGetByIdEventCopyWith<$Res> {
  factory $VoucherRequestGetByIdEventCopyWith(VoucherRequestGetByIdEvent value,
          $Res Function(VoucherRequestGetByIdEvent) then) =
      _$VoucherRequestGetByIdEventCopyWithImpl<$Res,
          VoucherRequestGetByIdEvent>;
  @useResult
  $Res call({VoucherRequestGetByIdParam param});
}

/// @nodoc
class _$VoucherRequestGetByIdEventCopyWithImpl<$Res,
        $Val extends VoucherRequestGetByIdEvent>
    implements $VoucherRequestGetByIdEventCopyWith<$Res> {
  _$VoucherRequestGetByIdEventCopyWithImpl(this._value, this._then);

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
              as VoucherRequestGetByIdParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoucherRequestGetByIdEventCalledImplCopyWith<$Res>
    implements $VoucherRequestGetByIdEventCopyWith<$Res> {
  factory _$$VoucherRequestGetByIdEventCalledImplCopyWith(
          _$VoucherRequestGetByIdEventCalledImpl value,
          $Res Function(_$VoucherRequestGetByIdEventCalledImpl) then) =
      __$$VoucherRequestGetByIdEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VoucherRequestGetByIdParam param});
}

/// @nodoc
class __$$VoucherRequestGetByIdEventCalledImplCopyWithImpl<$Res>
    extends _$VoucherRequestGetByIdEventCopyWithImpl<$Res,
        _$VoucherRequestGetByIdEventCalledImpl>
    implements _$$VoucherRequestGetByIdEventCalledImplCopyWith<$Res> {
  __$$VoucherRequestGetByIdEventCalledImplCopyWithImpl(
      _$VoucherRequestGetByIdEventCalledImpl _value,
      $Res Function(_$VoucherRequestGetByIdEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$VoucherRequestGetByIdEventCalledImpl(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as VoucherRequestGetByIdParam,
    ));
  }
}

/// @nodoc

class _$VoucherRequestGetByIdEventCalledImpl
    implements _VoucherRequestGetByIdEventCalled {
  const _$VoucherRequestGetByIdEventCalledImpl({required this.param});

  @override
  final VoucherRequestGetByIdParam param;

  @override
  String toString() {
    return 'VoucherRequestGetByIdEvent.voucherRequestGetByIdEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherRequestGetByIdEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherRequestGetByIdEventCalledImplCopyWith<
          _$VoucherRequestGetByIdEventCalledImpl>
      get copyWith => __$$VoucherRequestGetByIdEventCalledImplCopyWithImpl<
          _$VoucherRequestGetByIdEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VoucherRequestGetByIdParam param)
        voucherRequestGetByIdEventCalled,
  }) {
    return voucherRequestGetByIdEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VoucherRequestGetByIdParam param)?
        voucherRequestGetByIdEventCalled,
  }) {
    return voucherRequestGetByIdEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VoucherRequestGetByIdParam param)?
        voucherRequestGetByIdEventCalled,
    required TResult orElse(),
  }) {
    if (voucherRequestGetByIdEventCalled != null) {
      return voucherRequestGetByIdEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VoucherRequestGetByIdEventCalled value)
        voucherRequestGetByIdEventCalled,
  }) {
    return voucherRequestGetByIdEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherRequestGetByIdEventCalled value)?
        voucherRequestGetByIdEventCalled,
  }) {
    return voucherRequestGetByIdEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherRequestGetByIdEventCalled value)?
        voucherRequestGetByIdEventCalled,
    required TResult orElse(),
  }) {
    if (voucherRequestGetByIdEventCalled != null) {
      return voucherRequestGetByIdEventCalled(this);
    }
    return orElse();
  }
}

abstract class _VoucherRequestGetByIdEventCalled
    implements VoucherRequestGetByIdEvent {
  const factory _VoucherRequestGetByIdEventCalled(
          {required final VoucherRequestGetByIdParam param}) =
      _$VoucherRequestGetByIdEventCalledImpl;

  @override
  VoucherRequestGetByIdParam get param;
  @override
  @JsonKey(ignore: true)
  _$$VoucherRequestGetByIdEventCalledImplCopyWith<
          _$VoucherRequestGetByIdEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VoucherRequestGetByIdState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VoucherRequestGetByIdStateInitial value) initial,
    required TResult Function(_VoucherRequestGetByIdStateLoadFailure value)
        loadFailure,
    required TResult Function(VoucherRequestGetByIdStateLoading value) loading,
    required TResult Function(_VoucherRequestGetByIdStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherRequestGetByIdStateInitial value)? initial,
    TResult? Function(_VoucherRequestGetByIdStateLoadFailure value)?
        loadFailure,
    TResult? Function(VoucherRequestGetByIdStateLoading value)? loading,
    TResult? Function(_VoucherRequestGetByIdStateLoadSuccess value)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherRequestGetByIdStateInitial value)? initial,
    TResult Function(_VoucherRequestGetByIdStateLoadFailure value)? loadFailure,
    TResult Function(VoucherRequestGetByIdStateLoading value)? loading,
    TResult Function(_VoucherRequestGetByIdStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherRequestGetByIdStateCopyWith<$Res> {
  factory $VoucherRequestGetByIdStateCopyWith(VoucherRequestGetByIdState value,
          $Res Function(VoucherRequestGetByIdState) then) =
      _$VoucherRequestGetByIdStateCopyWithImpl<$Res,
          VoucherRequestGetByIdState>;
}

/// @nodoc
class _$VoucherRequestGetByIdStateCopyWithImpl<$Res,
        $Val extends VoucherRequestGetByIdState>
    implements $VoucherRequestGetByIdStateCopyWith<$Res> {
  _$VoucherRequestGetByIdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VoucherRequestGetByIdStateInitialImplCopyWith<$Res> {
  factory _$$VoucherRequestGetByIdStateInitialImplCopyWith(
          _$VoucherRequestGetByIdStateInitialImpl value,
          $Res Function(_$VoucherRequestGetByIdStateInitialImpl) then) =
      __$$VoucherRequestGetByIdStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoucherRequestGetByIdStateInitialImplCopyWithImpl<$Res>
    extends _$VoucherRequestGetByIdStateCopyWithImpl<$Res,
        _$VoucherRequestGetByIdStateInitialImpl>
    implements _$$VoucherRequestGetByIdStateInitialImplCopyWith<$Res> {
  __$$VoucherRequestGetByIdStateInitialImplCopyWithImpl(
      _$VoucherRequestGetByIdStateInitialImpl _value,
      $Res Function(_$VoucherRequestGetByIdStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VoucherRequestGetByIdStateInitialImpl
    implements _VoucherRequestGetByIdStateInitial {
  const _$VoucherRequestGetByIdStateInitialImpl();

  @override
  String toString() {
    return 'VoucherRequestGetByIdState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherRequestGetByIdStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)
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
    TResult? Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)?
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
    TResult Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)?
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
    required TResult Function(_VoucherRequestGetByIdStateInitial value) initial,
    required TResult Function(_VoucherRequestGetByIdStateLoadFailure value)
        loadFailure,
    required TResult Function(VoucherRequestGetByIdStateLoading value) loading,
    required TResult Function(_VoucherRequestGetByIdStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherRequestGetByIdStateInitial value)? initial,
    TResult? Function(_VoucherRequestGetByIdStateLoadFailure value)?
        loadFailure,
    TResult? Function(VoucherRequestGetByIdStateLoading value)? loading,
    TResult? Function(_VoucherRequestGetByIdStateLoadSuccess value)?
        loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherRequestGetByIdStateInitial value)? initial,
    TResult Function(_VoucherRequestGetByIdStateLoadFailure value)? loadFailure,
    TResult Function(VoucherRequestGetByIdStateLoading value)? loading,
    TResult Function(_VoucherRequestGetByIdStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _VoucherRequestGetByIdStateInitial
    implements VoucherRequestGetByIdState {
  const factory _VoucherRequestGetByIdStateInitial() =
      _$VoucherRequestGetByIdStateInitialImpl;
}

/// @nodoc
abstract class _$$VoucherRequestGetByIdStateLoadFailureImplCopyWith<$Res> {
  factory _$$VoucherRequestGetByIdStateLoadFailureImplCopyWith(
          _$VoucherRequestGetByIdStateLoadFailureImpl value,
          $Res Function(_$VoucherRequestGetByIdStateLoadFailureImpl) then) =
      __$$VoucherRequestGetByIdStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$VoucherRequestGetByIdStateLoadFailureImplCopyWithImpl<$Res>
    extends _$VoucherRequestGetByIdStateCopyWithImpl<$Res,
        _$VoucherRequestGetByIdStateLoadFailureImpl>
    implements _$$VoucherRequestGetByIdStateLoadFailureImplCopyWith<$Res> {
  __$$VoucherRequestGetByIdStateLoadFailureImplCopyWithImpl(
      _$VoucherRequestGetByIdStateLoadFailureImpl _value,
      $Res Function(_$VoucherRequestGetByIdStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$VoucherRequestGetByIdStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$VoucherRequestGetByIdStateLoadFailureImpl
    implements _VoucherRequestGetByIdStateLoadFailure {
  const _$VoucherRequestGetByIdStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'VoucherRequestGetByIdState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherRequestGetByIdStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherRequestGetByIdStateLoadFailureImplCopyWith<
          _$VoucherRequestGetByIdStateLoadFailureImpl>
      get copyWith => __$$VoucherRequestGetByIdStateLoadFailureImplCopyWithImpl<
          _$VoucherRequestGetByIdStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)
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
    TResult? Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)?
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
    TResult Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)?
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
    required TResult Function(_VoucherRequestGetByIdStateInitial value) initial,
    required TResult Function(_VoucherRequestGetByIdStateLoadFailure value)
        loadFailure,
    required TResult Function(VoucherRequestGetByIdStateLoading value) loading,
    required TResult Function(_VoucherRequestGetByIdStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherRequestGetByIdStateInitial value)? initial,
    TResult? Function(_VoucherRequestGetByIdStateLoadFailure value)?
        loadFailure,
    TResult? Function(VoucherRequestGetByIdStateLoading value)? loading,
    TResult? Function(_VoucherRequestGetByIdStateLoadSuccess value)?
        loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherRequestGetByIdStateInitial value)? initial,
    TResult Function(_VoucherRequestGetByIdStateLoadFailure value)? loadFailure,
    TResult Function(VoucherRequestGetByIdStateLoading value)? loading,
    TResult Function(_VoucherRequestGetByIdStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _VoucherRequestGetByIdStateLoadFailure
    implements VoucherRequestGetByIdState {
  const factory _VoucherRequestGetByIdStateLoadFailure(final Failure failure) =
      _$VoucherRequestGetByIdStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$VoucherRequestGetByIdStateLoadFailureImplCopyWith<
          _$VoucherRequestGetByIdStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoucherRequestGetByIdStateLoadingImplCopyWith<$Res> {
  factory _$$VoucherRequestGetByIdStateLoadingImplCopyWith(
          _$VoucherRequestGetByIdStateLoadingImpl value,
          $Res Function(_$VoucherRequestGetByIdStateLoadingImpl) then) =
      __$$VoucherRequestGetByIdStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoucherRequestGetByIdStateLoadingImplCopyWithImpl<$Res>
    extends _$VoucherRequestGetByIdStateCopyWithImpl<$Res,
        _$VoucherRequestGetByIdStateLoadingImpl>
    implements _$$VoucherRequestGetByIdStateLoadingImplCopyWith<$Res> {
  __$$VoucherRequestGetByIdStateLoadingImplCopyWithImpl(
      _$VoucherRequestGetByIdStateLoadingImpl _value,
      $Res Function(_$VoucherRequestGetByIdStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VoucherRequestGetByIdStateLoadingImpl
    implements VoucherRequestGetByIdStateLoading {
  const _$VoucherRequestGetByIdStateLoadingImpl();

  @override
  String toString() {
    return 'VoucherRequestGetByIdState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherRequestGetByIdStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)
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
    TResult? Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)?
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
    TResult Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)?
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
    required TResult Function(_VoucherRequestGetByIdStateInitial value) initial,
    required TResult Function(_VoucherRequestGetByIdStateLoadFailure value)
        loadFailure,
    required TResult Function(VoucherRequestGetByIdStateLoading value) loading,
    required TResult Function(_VoucherRequestGetByIdStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherRequestGetByIdStateInitial value)? initial,
    TResult? Function(_VoucherRequestGetByIdStateLoadFailure value)?
        loadFailure,
    TResult? Function(VoucherRequestGetByIdStateLoading value)? loading,
    TResult? Function(_VoucherRequestGetByIdStateLoadSuccess value)?
        loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherRequestGetByIdStateInitial value)? initial,
    TResult Function(_VoucherRequestGetByIdStateLoadFailure value)? loadFailure,
    TResult Function(VoucherRequestGetByIdStateLoading value)? loading,
    TResult Function(_VoucherRequestGetByIdStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VoucherRequestGetByIdStateLoading
    implements VoucherRequestGetByIdState {
  const factory VoucherRequestGetByIdStateLoading() =
      _$VoucherRequestGetByIdStateLoadingImpl;
}

/// @nodoc
abstract class _$$VoucherRequestGetByIdStateLoadSuccessImplCopyWith<$Res> {
  factory _$$VoucherRequestGetByIdStateLoadSuccessImplCopyWith(
          _$VoucherRequestGetByIdStateLoadSuccessImpl value,
          $Res Function(_$VoucherRequestGetByIdStateLoadSuccessImpl) then) =
      __$$VoucherRequestGetByIdStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoucherRequestGetByIdEntities voucherRequestGetByIdEntities});
}

/// @nodoc
class __$$VoucherRequestGetByIdStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$VoucherRequestGetByIdStateCopyWithImpl<$Res,
        _$VoucherRequestGetByIdStateLoadSuccessImpl>
    implements _$$VoucherRequestGetByIdStateLoadSuccessImplCopyWith<$Res> {
  __$$VoucherRequestGetByIdStateLoadSuccessImplCopyWithImpl(
      _$VoucherRequestGetByIdStateLoadSuccessImpl _value,
      $Res Function(_$VoucherRequestGetByIdStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucherRequestGetByIdEntities = null,
  }) {
    return _then(_$VoucherRequestGetByIdStateLoadSuccessImpl(
      null == voucherRequestGetByIdEntities
          ? _value.voucherRequestGetByIdEntities
          : voucherRequestGetByIdEntities // ignore: cast_nullable_to_non_nullable
              as VoucherRequestGetByIdEntities,
    ));
  }
}

/// @nodoc

class _$VoucherRequestGetByIdStateLoadSuccessImpl
    implements _VoucherRequestGetByIdStateLoadSuccess {
  const _$VoucherRequestGetByIdStateLoadSuccessImpl(
      this.voucherRequestGetByIdEntities);

  @override
  final VoucherRequestGetByIdEntities voucherRequestGetByIdEntities;

  @override
  String toString() {
    return 'VoucherRequestGetByIdState.loadSuccess(voucherRequestGetByIdEntities: $voucherRequestGetByIdEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherRequestGetByIdStateLoadSuccessImpl &&
            (identical(other.voucherRequestGetByIdEntities,
                    voucherRequestGetByIdEntities) ||
                other.voucherRequestGetByIdEntities ==
                    voucherRequestGetByIdEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voucherRequestGetByIdEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherRequestGetByIdStateLoadSuccessImplCopyWith<
          _$VoucherRequestGetByIdStateLoadSuccessImpl>
      get copyWith => __$$VoucherRequestGetByIdStateLoadSuccessImplCopyWithImpl<
          _$VoucherRequestGetByIdStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)
        loadSuccess,
  }) {
    return loadSuccess(voucherRequestGetByIdEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(voucherRequestGetByIdEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            VoucherRequestGetByIdEntities voucherRequestGetByIdEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(voucherRequestGetByIdEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VoucherRequestGetByIdStateInitial value) initial,
    required TResult Function(_VoucherRequestGetByIdStateLoadFailure value)
        loadFailure,
    required TResult Function(VoucherRequestGetByIdStateLoading value) loading,
    required TResult Function(_VoucherRequestGetByIdStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VoucherRequestGetByIdStateInitial value)? initial,
    TResult? Function(_VoucherRequestGetByIdStateLoadFailure value)?
        loadFailure,
    TResult? Function(VoucherRequestGetByIdStateLoading value)? loading,
    TResult? Function(_VoucherRequestGetByIdStateLoadSuccess value)?
        loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VoucherRequestGetByIdStateInitial value)? initial,
    TResult Function(_VoucherRequestGetByIdStateLoadFailure value)? loadFailure,
    TResult Function(VoucherRequestGetByIdStateLoading value)? loading,
    TResult Function(_VoucherRequestGetByIdStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _VoucherRequestGetByIdStateLoadSuccess
    implements VoucherRequestGetByIdState {
  const factory _VoucherRequestGetByIdStateLoadSuccess(
          final VoucherRequestGetByIdEntities voucherRequestGetByIdEntities) =
      _$VoucherRequestGetByIdStateLoadSuccessImpl;

  VoucherRequestGetByIdEntities get voucherRequestGetByIdEntities;
  @JsonKey(ignore: true)
  _$$VoucherRequestGetByIdStateLoadSuccessImplCopyWith<
          _$VoucherRequestGetByIdStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
