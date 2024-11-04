// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateWalletEvent {
  CreateWalletParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateWalletParam param) createWalletEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateWalletParam param)? createWalletEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateWalletParam param)? createWalletEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWalletEventCalled value)
        createWalletEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWalletEventCalled value)? createWalletEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWalletEventCalled value)? createWalletEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateWalletEventCopyWith<CreateWalletEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWalletEventCopyWith<$Res> {
  factory $CreateWalletEventCopyWith(
          CreateWalletEvent value, $Res Function(CreateWalletEvent) then) =
      _$CreateWalletEventCopyWithImpl<$Res, CreateWalletEvent>;
  @useResult
  $Res call({CreateWalletParam param});
}

/// @nodoc
class _$CreateWalletEventCopyWithImpl<$Res, $Val extends CreateWalletEvent>
    implements $CreateWalletEventCopyWith<$Res> {
  _$CreateWalletEventCopyWithImpl(this._value, this._then);

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
              as CreateWalletParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateWalletEventCalledImplCopyWith<$Res>
    implements $CreateWalletEventCopyWith<$Res> {
  factory _$$CreateWalletEventCalledImplCopyWith(
          _$CreateWalletEventCalledImpl value,
          $Res Function(_$CreateWalletEventCalledImpl) then) =
      __$$CreateWalletEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateWalletParam param});
}

/// @nodoc
class __$$CreateWalletEventCalledImplCopyWithImpl<$Res>
    extends _$CreateWalletEventCopyWithImpl<$Res, _$CreateWalletEventCalledImpl>
    implements _$$CreateWalletEventCalledImplCopyWith<$Res> {
  __$$CreateWalletEventCalledImplCopyWithImpl(
      _$CreateWalletEventCalledImpl _value,
      $Res Function(_$CreateWalletEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$CreateWalletEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as CreateWalletParam,
    ));
  }
}

/// @nodoc

class _$CreateWalletEventCalledImpl implements _CreateWalletEventCalled {
  const _$CreateWalletEventCalledImpl(this.param);

  @override
  final CreateWalletParam param;

  @override
  String toString() {
    return 'CreateWalletEvent.createWalletEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWalletEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWalletEventCalledImplCopyWith<_$CreateWalletEventCalledImpl>
      get copyWith => __$$CreateWalletEventCalledImplCopyWithImpl<
          _$CreateWalletEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateWalletParam param) createWalletEventCalled,
  }) {
    return createWalletEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateWalletParam param)? createWalletEventCalled,
  }) {
    return createWalletEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateWalletParam param)? createWalletEventCalled,
    required TResult orElse(),
  }) {
    if (createWalletEventCalled != null) {
      return createWalletEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWalletEventCalled value)
        createWalletEventCalled,
  }) {
    return createWalletEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWalletEventCalled value)? createWalletEventCalled,
  }) {
    return createWalletEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWalletEventCalled value)? createWalletEventCalled,
    required TResult orElse(),
  }) {
    if (createWalletEventCalled != null) {
      return createWalletEventCalled(this);
    }
    return orElse();
  }
}

abstract class _CreateWalletEventCalled implements CreateWalletEvent {
  const factory _CreateWalletEventCalled(final CreateWalletParam param) =
      _$CreateWalletEventCalledImpl;

  @override
  CreateWalletParam get param;
  @override
  @JsonKey(ignore: true)
  _$$CreateWalletEventCalledImplCopyWith<_$CreateWalletEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateWalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateWalletEntities createWalletEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateWalletEntities createWalletEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateWalletEntities createWalletEntities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWalletStateInitial value) initial,
    required TResult Function(CreateWalletStateLoading value) loading,
    required TResult Function(_CreateWalletStateLoadSuccess value) loadSuccess,
    required TResult Function(_CreateWalletStateLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWalletStateInitial value)? initial,
    TResult? Function(CreateWalletStateLoading value)? loading,
    TResult? Function(_CreateWalletStateLoadSuccess value)? loadSuccess,
    TResult? Function(_CreateWalletStateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWalletStateInitial value)? initial,
    TResult Function(CreateWalletStateLoading value)? loading,
    TResult Function(_CreateWalletStateLoadSuccess value)? loadSuccess,
    TResult Function(_CreateWalletStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWalletStateCopyWith<$Res> {
  factory $CreateWalletStateCopyWith(
          CreateWalletState value, $Res Function(CreateWalletState) then) =
      _$CreateWalletStateCopyWithImpl<$Res, CreateWalletState>;
}

/// @nodoc
class _$CreateWalletStateCopyWithImpl<$Res, $Val extends CreateWalletState>
    implements $CreateWalletStateCopyWith<$Res> {
  _$CreateWalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateWalletStateInitialImplCopyWith<$Res> {
  factory _$$CreateWalletStateInitialImplCopyWith(
          _$CreateWalletStateInitialImpl value,
          $Res Function(_$CreateWalletStateInitialImpl) then) =
      __$$CreateWalletStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateWalletStateInitialImplCopyWithImpl<$Res>
    extends _$CreateWalletStateCopyWithImpl<$Res,
        _$CreateWalletStateInitialImpl>
    implements _$$CreateWalletStateInitialImplCopyWith<$Res> {
  __$$CreateWalletStateInitialImplCopyWithImpl(
      _$CreateWalletStateInitialImpl _value,
      $Res Function(_$CreateWalletStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateWalletStateInitialImpl implements _CreateWalletStateInitial {
  const _$CreateWalletStateInitialImpl();

  @override
  String toString() {
    return 'CreateWalletState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWalletStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateWalletEntities createWalletEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateWalletEntities createWalletEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateWalletEntities createWalletEntities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
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
    required TResult Function(_CreateWalletStateInitial value) initial,
    required TResult Function(CreateWalletStateLoading value) loading,
    required TResult Function(_CreateWalletStateLoadSuccess value) loadSuccess,
    required TResult Function(_CreateWalletStateLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWalletStateInitial value)? initial,
    TResult? Function(CreateWalletStateLoading value)? loading,
    TResult? Function(_CreateWalletStateLoadSuccess value)? loadSuccess,
    TResult? Function(_CreateWalletStateLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWalletStateInitial value)? initial,
    TResult Function(CreateWalletStateLoading value)? loading,
    TResult Function(_CreateWalletStateLoadSuccess value)? loadSuccess,
    TResult Function(_CreateWalletStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateWalletStateInitial implements CreateWalletState {
  const factory _CreateWalletStateInitial() = _$CreateWalletStateInitialImpl;
}

/// @nodoc
abstract class _$$CreateWalletStateLoadingImplCopyWith<$Res> {
  factory _$$CreateWalletStateLoadingImplCopyWith(
          _$CreateWalletStateLoadingImpl value,
          $Res Function(_$CreateWalletStateLoadingImpl) then) =
      __$$CreateWalletStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateWalletStateLoadingImplCopyWithImpl<$Res>
    extends _$CreateWalletStateCopyWithImpl<$Res,
        _$CreateWalletStateLoadingImpl>
    implements _$$CreateWalletStateLoadingImplCopyWith<$Res> {
  __$$CreateWalletStateLoadingImplCopyWithImpl(
      _$CreateWalletStateLoadingImpl _value,
      $Res Function(_$CreateWalletStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateWalletStateLoadingImpl implements CreateWalletStateLoading {
  const _$CreateWalletStateLoadingImpl();

  @override
  String toString() {
    return 'CreateWalletState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWalletStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateWalletEntities createWalletEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateWalletEntities createWalletEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateWalletEntities createWalletEntities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
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
    required TResult Function(_CreateWalletStateInitial value) initial,
    required TResult Function(CreateWalletStateLoading value) loading,
    required TResult Function(_CreateWalletStateLoadSuccess value) loadSuccess,
    required TResult Function(_CreateWalletStateLoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWalletStateInitial value)? initial,
    TResult? Function(CreateWalletStateLoading value)? loading,
    TResult? Function(_CreateWalletStateLoadSuccess value)? loadSuccess,
    TResult? Function(_CreateWalletStateLoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWalletStateInitial value)? initial,
    TResult Function(CreateWalletStateLoading value)? loading,
    TResult Function(_CreateWalletStateLoadSuccess value)? loadSuccess,
    TResult Function(_CreateWalletStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateWalletStateLoading implements CreateWalletState {
  const factory CreateWalletStateLoading() = _$CreateWalletStateLoadingImpl;
}

/// @nodoc
abstract class _$$CreateWalletStateLoadSuccessImplCopyWith<$Res> {
  factory _$$CreateWalletStateLoadSuccessImplCopyWith(
          _$CreateWalletStateLoadSuccessImpl value,
          $Res Function(_$CreateWalletStateLoadSuccessImpl) then) =
      __$$CreateWalletStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateWalletEntities createWalletEntities});
}

/// @nodoc
class __$$CreateWalletStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$CreateWalletStateCopyWithImpl<$Res,
        _$CreateWalletStateLoadSuccessImpl>
    implements _$$CreateWalletStateLoadSuccessImplCopyWith<$Res> {
  __$$CreateWalletStateLoadSuccessImplCopyWithImpl(
      _$CreateWalletStateLoadSuccessImpl _value,
      $Res Function(_$CreateWalletStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createWalletEntities = null,
  }) {
    return _then(_$CreateWalletStateLoadSuccessImpl(
      null == createWalletEntities
          ? _value.createWalletEntities
          : createWalletEntities // ignore: cast_nullable_to_non_nullable
              as CreateWalletEntities,
    ));
  }
}

/// @nodoc

class _$CreateWalletStateLoadSuccessImpl
    implements _CreateWalletStateLoadSuccess {
  const _$CreateWalletStateLoadSuccessImpl(this.createWalletEntities);

  @override
  final CreateWalletEntities createWalletEntities;

  @override
  String toString() {
    return 'CreateWalletState.loadSuccess(createWalletEntities: $createWalletEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWalletStateLoadSuccessImpl &&
            (identical(other.createWalletEntities, createWalletEntities) ||
                other.createWalletEntities == createWalletEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createWalletEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWalletStateLoadSuccessImplCopyWith<
          _$CreateWalletStateLoadSuccessImpl>
      get copyWith => __$$CreateWalletStateLoadSuccessImplCopyWithImpl<
          _$CreateWalletStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateWalletEntities createWalletEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadSuccess(createWalletEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateWalletEntities createWalletEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadSuccess?.call(createWalletEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateWalletEntities createWalletEntities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(createWalletEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWalletStateInitial value) initial,
    required TResult Function(CreateWalletStateLoading value) loading,
    required TResult Function(_CreateWalletStateLoadSuccess value) loadSuccess,
    required TResult Function(_CreateWalletStateLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWalletStateInitial value)? initial,
    TResult? Function(CreateWalletStateLoading value)? loading,
    TResult? Function(_CreateWalletStateLoadSuccess value)? loadSuccess,
    TResult? Function(_CreateWalletStateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWalletStateInitial value)? initial,
    TResult Function(CreateWalletStateLoading value)? loading,
    TResult Function(_CreateWalletStateLoadSuccess value)? loadSuccess,
    TResult Function(_CreateWalletStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateWalletStateLoadSuccess implements CreateWalletState {
  const factory _CreateWalletStateLoadSuccess(
          final CreateWalletEntities createWalletEntities) =
      _$CreateWalletStateLoadSuccessImpl;

  CreateWalletEntities get createWalletEntities;
  @JsonKey(ignore: true)
  _$$CreateWalletStateLoadSuccessImplCopyWith<
          _$CreateWalletStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateWalletStateLoadFailureImplCopyWith<$Res> {
  factory _$$CreateWalletStateLoadFailureImplCopyWith(
          _$CreateWalletStateLoadFailureImpl value,
          $Res Function(_$CreateWalletStateLoadFailureImpl) then) =
      __$$CreateWalletStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$CreateWalletStateLoadFailureImplCopyWithImpl<$Res>
    extends _$CreateWalletStateCopyWithImpl<$Res,
        _$CreateWalletStateLoadFailureImpl>
    implements _$$CreateWalletStateLoadFailureImplCopyWith<$Res> {
  __$$CreateWalletStateLoadFailureImplCopyWithImpl(
      _$CreateWalletStateLoadFailureImpl _value,
      $Res Function(_$CreateWalletStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CreateWalletStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$CreateWalletStateLoadFailureImpl
    implements _CreateWalletStateLoadFailure {
  const _$CreateWalletStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CreateWalletState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWalletStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWalletStateLoadFailureImplCopyWith<
          _$CreateWalletStateLoadFailureImpl>
      get copyWith => __$$CreateWalletStateLoadFailureImplCopyWithImpl<
          _$CreateWalletStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreateWalletEntities createWalletEntities)
        loadSuccess,
    required TResult Function(Failure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreateWalletEntities createWalletEntities)? loadSuccess,
    TResult? Function(Failure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreateWalletEntities createWalletEntities)? loadSuccess,
    TResult Function(Failure failure)? loadFailure,
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
    required TResult Function(_CreateWalletStateInitial value) initial,
    required TResult Function(CreateWalletStateLoading value) loading,
    required TResult Function(_CreateWalletStateLoadSuccess value) loadSuccess,
    required TResult Function(_CreateWalletStateLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWalletStateInitial value)? initial,
    TResult? Function(CreateWalletStateLoading value)? loading,
    TResult? Function(_CreateWalletStateLoadSuccess value)? loadSuccess,
    TResult? Function(_CreateWalletStateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWalletStateInitial value)? initial,
    TResult Function(CreateWalletStateLoading value)? loading,
    TResult Function(_CreateWalletStateLoadSuccess value)? loadSuccess,
    TResult Function(_CreateWalletStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _CreateWalletStateLoadFailure implements CreateWalletState {
  const factory _CreateWalletStateLoadFailure(final Failure failure) =
      _$CreateWalletStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$CreateWalletStateLoadFailureImplCopyWith<
          _$CreateWalletStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
