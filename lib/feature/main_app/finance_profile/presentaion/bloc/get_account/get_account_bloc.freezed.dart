// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAccountEvent {
  NoParams get noParams => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoParams noParams) getAccountEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoParams noParams)? getAccountEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoParams noParams)? getAccountEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccountEventCalled value)
        getAccountEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountEventCalled value)? getAccountEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountEventCalled value)? getAccountEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetAccountEventCopyWith<GetAccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAccountEventCopyWith<$Res> {
  factory $GetAccountEventCopyWith(
          GetAccountEvent value, $Res Function(GetAccountEvent) then) =
      _$GetAccountEventCopyWithImpl<$Res, GetAccountEvent>;
  @useResult
  $Res call({NoParams noParams});
}

/// @nodoc
class _$GetAccountEventCopyWithImpl<$Res, $Val extends GetAccountEvent>
    implements $GetAccountEventCopyWith<$Res> {
  _$GetAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noParams = null,
  }) {
    return _then(_value.copyWith(
      noParams: null == noParams
          ? _value.noParams
          : noParams // ignore: cast_nullable_to_non_nullable
              as NoParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAccountEventCalledImplCopyWith<$Res>
    implements $GetAccountEventCopyWith<$Res> {
  factory _$$GetAccountEventCalledImplCopyWith(
          _$GetAccountEventCalledImpl value,
          $Res Function(_$GetAccountEventCalledImpl) then) =
      __$$GetAccountEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoParams noParams});
}

/// @nodoc
class __$$GetAccountEventCalledImplCopyWithImpl<$Res>
    extends _$GetAccountEventCopyWithImpl<$Res, _$GetAccountEventCalledImpl>
    implements _$$GetAccountEventCalledImplCopyWith<$Res> {
  __$$GetAccountEventCalledImplCopyWithImpl(_$GetAccountEventCalledImpl _value,
      $Res Function(_$GetAccountEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noParams = null,
  }) {
    return _then(_$GetAccountEventCalledImpl(
      noParams: null == noParams
          ? _value.noParams
          : noParams // ignore: cast_nullable_to_non_nullable
              as NoParams,
    ));
  }
}

/// @nodoc

class _$GetAccountEventCalledImpl implements _GetAccountEventCalled {
  const _$GetAccountEventCalledImpl({required this.noParams});

  @override
  final NoParams noParams;

  @override
  String toString() {
    return 'GetAccountEvent.getAccountEventCalled(noParams: $noParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountEventCalledImpl &&
            (identical(other.noParams, noParams) ||
                other.noParams == noParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccountEventCalledImplCopyWith<_$GetAccountEventCalledImpl>
      get copyWith => __$$GetAccountEventCalledImplCopyWithImpl<
          _$GetAccountEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoParams noParams) getAccountEventCalled,
  }) {
    return getAccountEventCalled(noParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoParams noParams)? getAccountEventCalled,
  }) {
    return getAccountEventCalled?.call(noParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoParams noParams)? getAccountEventCalled,
    required TResult orElse(),
  }) {
    if (getAccountEventCalled != null) {
      return getAccountEventCalled(noParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccountEventCalled value)
        getAccountEventCalled,
  }) {
    return getAccountEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountEventCalled value)? getAccountEventCalled,
  }) {
    return getAccountEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountEventCalled value)? getAccountEventCalled,
    required TResult orElse(),
  }) {
    if (getAccountEventCalled != null) {
      return getAccountEventCalled(this);
    }
    return orElse();
  }
}

abstract class _GetAccountEventCalled implements GetAccountEvent {
  const factory _GetAccountEventCalled({required final NoParams noParams}) =
      _$GetAccountEventCalledImpl;

  @override
  NoParams get noParams;
  @override
  @JsonKey(ignore: true)
  _$$GetAccountEventCalledImplCopyWith<_$GetAccountEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetAccountEntities getAccountEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetAccountEntities getAccountEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetAccountEntities getAccountEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccountStateInitial value) initial,
    required TResult Function(_GetAccountStateLoadFailure value) loadFailure,
    required TResult Function(GetAccountStateLoading value) loading,
    required TResult Function(_GetAccountStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountStateInitial value)? initial,
    TResult? Function(_GetAccountStateLoadFailure value)? loadFailure,
    TResult? Function(GetAccountStateLoading value)? loading,
    TResult? Function(_GetAccountStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountStateInitial value)? initial,
    TResult Function(_GetAccountStateLoadFailure value)? loadFailure,
    TResult Function(GetAccountStateLoading value)? loading,
    TResult Function(_GetAccountStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAccountStateCopyWith<$Res> {
  factory $GetAccountStateCopyWith(
          GetAccountState value, $Res Function(GetAccountState) then) =
      _$GetAccountStateCopyWithImpl<$Res, GetAccountState>;
}

/// @nodoc
class _$GetAccountStateCopyWithImpl<$Res, $Val extends GetAccountState>
    implements $GetAccountStateCopyWith<$Res> {
  _$GetAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAccountStateInitialImplCopyWith<$Res> {
  factory _$$GetAccountStateInitialImplCopyWith(
          _$GetAccountStateInitialImpl value,
          $Res Function(_$GetAccountStateInitialImpl) then) =
      __$$GetAccountStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAccountStateInitialImplCopyWithImpl<$Res>
    extends _$GetAccountStateCopyWithImpl<$Res, _$GetAccountStateInitialImpl>
    implements _$$GetAccountStateInitialImplCopyWith<$Res> {
  __$$GetAccountStateInitialImplCopyWithImpl(
      _$GetAccountStateInitialImpl _value,
      $Res Function(_$GetAccountStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAccountStateInitialImpl implements _GetAccountStateInitial {
  const _$GetAccountStateInitialImpl();

  @override
  String toString() {
    return 'GetAccountState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetAccountEntities getAccountEntities)
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
    TResult? Function(GetAccountEntities getAccountEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetAccountEntities getAccountEntities)? loadSuccess,
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
    required TResult Function(_GetAccountStateInitial value) initial,
    required TResult Function(_GetAccountStateLoadFailure value) loadFailure,
    required TResult Function(GetAccountStateLoading value) loading,
    required TResult Function(_GetAccountStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountStateInitial value)? initial,
    TResult? Function(_GetAccountStateLoadFailure value)? loadFailure,
    TResult? Function(GetAccountStateLoading value)? loading,
    TResult? Function(_GetAccountStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountStateInitial value)? initial,
    TResult Function(_GetAccountStateLoadFailure value)? loadFailure,
    TResult Function(GetAccountStateLoading value)? loading,
    TResult Function(_GetAccountStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetAccountStateInitial implements GetAccountState {
  const factory _GetAccountStateInitial() = _$GetAccountStateInitialImpl;
}

/// @nodoc
abstract class _$$GetAccountStateLoadFailureImplCopyWith<$Res> {
  factory _$$GetAccountStateLoadFailureImplCopyWith(
          _$GetAccountStateLoadFailureImpl value,
          $Res Function(_$GetAccountStateLoadFailureImpl) then) =
      __$$GetAccountStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$GetAccountStateLoadFailureImplCopyWithImpl<$Res>
    extends _$GetAccountStateCopyWithImpl<$Res,
        _$GetAccountStateLoadFailureImpl>
    implements _$$GetAccountStateLoadFailureImplCopyWith<$Res> {
  __$$GetAccountStateLoadFailureImplCopyWithImpl(
      _$GetAccountStateLoadFailureImpl _value,
      $Res Function(_$GetAccountStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GetAccountStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$GetAccountStateLoadFailureImpl implements _GetAccountStateLoadFailure {
  const _$GetAccountStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetAccountState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccountStateLoadFailureImplCopyWith<_$GetAccountStateLoadFailureImpl>
      get copyWith => __$$GetAccountStateLoadFailureImplCopyWithImpl<
          _$GetAccountStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetAccountEntities getAccountEntities)
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
    TResult? Function(GetAccountEntities getAccountEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetAccountEntities getAccountEntities)? loadSuccess,
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
    required TResult Function(_GetAccountStateInitial value) initial,
    required TResult Function(_GetAccountStateLoadFailure value) loadFailure,
    required TResult Function(GetAccountStateLoading value) loading,
    required TResult Function(_GetAccountStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountStateInitial value)? initial,
    TResult? Function(_GetAccountStateLoadFailure value)? loadFailure,
    TResult? Function(GetAccountStateLoading value)? loading,
    TResult? Function(_GetAccountStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountStateInitial value)? initial,
    TResult Function(_GetAccountStateLoadFailure value)? loadFailure,
    TResult Function(GetAccountStateLoading value)? loading,
    TResult Function(_GetAccountStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _GetAccountStateLoadFailure implements GetAccountState {
  const factory _GetAccountStateLoadFailure(final Failure failure) =
      _$GetAccountStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$GetAccountStateLoadFailureImplCopyWith<_$GetAccountStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAccountStateLoadingImplCopyWith<$Res> {
  factory _$$GetAccountStateLoadingImplCopyWith(
          _$GetAccountStateLoadingImpl value,
          $Res Function(_$GetAccountStateLoadingImpl) then) =
      __$$GetAccountStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAccountStateLoadingImplCopyWithImpl<$Res>
    extends _$GetAccountStateCopyWithImpl<$Res, _$GetAccountStateLoadingImpl>
    implements _$$GetAccountStateLoadingImplCopyWith<$Res> {
  __$$GetAccountStateLoadingImplCopyWithImpl(
      _$GetAccountStateLoadingImpl _value,
      $Res Function(_$GetAccountStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAccountStateLoadingImpl implements GetAccountStateLoading {
  const _$GetAccountStateLoadingImpl();

  @override
  String toString() {
    return 'GetAccountState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetAccountEntities getAccountEntities)
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
    TResult? Function(GetAccountEntities getAccountEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetAccountEntities getAccountEntities)? loadSuccess,
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
    required TResult Function(_GetAccountStateInitial value) initial,
    required TResult Function(_GetAccountStateLoadFailure value) loadFailure,
    required TResult Function(GetAccountStateLoading value) loading,
    required TResult Function(_GetAccountStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountStateInitial value)? initial,
    TResult? Function(_GetAccountStateLoadFailure value)? loadFailure,
    TResult? Function(GetAccountStateLoading value)? loading,
    TResult? Function(_GetAccountStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountStateInitial value)? initial,
    TResult Function(_GetAccountStateLoadFailure value)? loadFailure,
    TResult Function(GetAccountStateLoading value)? loading,
    TResult Function(_GetAccountStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetAccountStateLoading implements GetAccountState {
  const factory GetAccountStateLoading() = _$GetAccountStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetAccountStateLoadSuccessImplCopyWith<$Res> {
  factory _$$GetAccountStateLoadSuccessImplCopyWith(
          _$GetAccountStateLoadSuccessImpl value,
          $Res Function(_$GetAccountStateLoadSuccessImpl) then) =
      __$$GetAccountStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetAccountEntities getAccountEntities});
}

/// @nodoc
class __$$GetAccountStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$GetAccountStateCopyWithImpl<$Res,
        _$GetAccountStateLoadSuccessImpl>
    implements _$$GetAccountStateLoadSuccessImplCopyWith<$Res> {
  __$$GetAccountStateLoadSuccessImplCopyWithImpl(
      _$GetAccountStateLoadSuccessImpl _value,
      $Res Function(_$GetAccountStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAccountEntities = null,
  }) {
    return _then(_$GetAccountStateLoadSuccessImpl(
      null == getAccountEntities
          ? _value.getAccountEntities
          : getAccountEntities // ignore: cast_nullable_to_non_nullable
              as GetAccountEntities,
    ));
  }
}

/// @nodoc

class _$GetAccountStateLoadSuccessImpl implements _GetAccountStateLoadSuccess {
  const _$GetAccountStateLoadSuccessImpl(this.getAccountEntities);

  @override
  final GetAccountEntities getAccountEntities;

  @override
  String toString() {
    return 'GetAccountState.loadSuccess(getAccountEntities: $getAccountEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountStateLoadSuccessImpl &&
            (identical(other.getAccountEntities, getAccountEntities) ||
                other.getAccountEntities == getAccountEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getAccountEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccountStateLoadSuccessImplCopyWith<_$GetAccountStateLoadSuccessImpl>
      get copyWith => __$$GetAccountStateLoadSuccessImplCopyWithImpl<
          _$GetAccountStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetAccountEntities getAccountEntities)
        loadSuccess,
  }) {
    return loadSuccess(getAccountEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetAccountEntities getAccountEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(getAccountEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetAccountEntities getAccountEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(getAccountEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccountStateInitial value) initial,
    required TResult Function(_GetAccountStateLoadFailure value) loadFailure,
    required TResult Function(GetAccountStateLoading value) loading,
    required TResult Function(_GetAccountStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountStateInitial value)? initial,
    TResult? Function(_GetAccountStateLoadFailure value)? loadFailure,
    TResult? Function(GetAccountStateLoading value)? loading,
    TResult? Function(_GetAccountStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountStateInitial value)? initial,
    TResult Function(_GetAccountStateLoadFailure value)? loadFailure,
    TResult Function(GetAccountStateLoading value)? loading,
    TResult Function(_GetAccountStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetAccountStateLoadSuccess implements GetAccountState {
  const factory _GetAccountStateLoadSuccess(
          final GetAccountEntities getAccountEntities) =
      _$GetAccountStateLoadSuccessImpl;

  GetAccountEntities get getAccountEntities;
  @JsonKey(ignore: true)
  _$$GetAccountStateLoadSuccessImplCopyWith<_$GetAccountStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
