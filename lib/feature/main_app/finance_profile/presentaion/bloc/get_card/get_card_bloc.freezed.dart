// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetCardEvent {
  NoParams get noParams => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoParams noParams) getCardEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoParams noParams)? getCardEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoParams noParams)? getCardEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCardEventCalled value) getCardEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardEventCalled value)? getCardEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardEventCalled value)? getCardEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetCardEventCopyWith<GetCardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCardEventCopyWith<$Res> {
  factory $GetCardEventCopyWith(
          GetCardEvent value, $Res Function(GetCardEvent) then) =
      _$GetCardEventCopyWithImpl<$Res, GetCardEvent>;
  @useResult
  $Res call({NoParams noParams});
}

/// @nodoc
class _$GetCardEventCopyWithImpl<$Res, $Val extends GetCardEvent>
    implements $GetCardEventCopyWith<$Res> {
  _$GetCardEventCopyWithImpl(this._value, this._then);

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
abstract class _$$GetCardEventCalledImplCopyWith<$Res>
    implements $GetCardEventCopyWith<$Res> {
  factory _$$GetCardEventCalledImplCopyWith(_$GetCardEventCalledImpl value,
          $Res Function(_$GetCardEventCalledImpl) then) =
      __$$GetCardEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoParams noParams});
}

/// @nodoc
class __$$GetCardEventCalledImplCopyWithImpl<$Res>
    extends _$GetCardEventCopyWithImpl<$Res, _$GetCardEventCalledImpl>
    implements _$$GetCardEventCalledImplCopyWith<$Res> {
  __$$GetCardEventCalledImplCopyWithImpl(_$GetCardEventCalledImpl _value,
      $Res Function(_$GetCardEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noParams = null,
  }) {
    return _then(_$GetCardEventCalledImpl(
      noParams: null == noParams
          ? _value.noParams
          : noParams // ignore: cast_nullable_to_non_nullable
              as NoParams,
    ));
  }
}

/// @nodoc

class _$GetCardEventCalledImpl implements _GetCardEventCalled {
  const _$GetCardEventCalledImpl({required this.noParams});

  @override
  final NoParams noParams;

  @override
  String toString() {
    return 'GetCardEvent.getCardEventCalled(noParams: $noParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCardEventCalledImpl &&
            (identical(other.noParams, noParams) ||
                other.noParams == noParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCardEventCalledImplCopyWith<_$GetCardEventCalledImpl> get copyWith =>
      __$$GetCardEventCalledImplCopyWithImpl<_$GetCardEventCalledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoParams noParams) getCardEventCalled,
  }) {
    return getCardEventCalled(noParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoParams noParams)? getCardEventCalled,
  }) {
    return getCardEventCalled?.call(noParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoParams noParams)? getCardEventCalled,
    required TResult orElse(),
  }) {
    if (getCardEventCalled != null) {
      return getCardEventCalled(noParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCardEventCalled value) getCardEventCalled,
  }) {
    return getCardEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardEventCalled value)? getCardEventCalled,
  }) {
    return getCardEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardEventCalled value)? getCardEventCalled,
    required TResult orElse(),
  }) {
    if (getCardEventCalled != null) {
      return getCardEventCalled(this);
    }
    return orElse();
  }
}

abstract class _GetCardEventCalled implements GetCardEvent {
  const factory _GetCardEventCalled({required final NoParams noParams}) =
      _$GetCardEventCalledImpl;

  @override
  NoParams get noParams;
  @override
  @JsonKey(ignore: true)
  _$$GetCardEventCalledImplCopyWith<_$GetCardEventCalledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetCardEntities getCardEntities) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetCardEntities getCardEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetCardEntities getCardEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCardStateInitial value) initial,
    required TResult Function(_GetCardStateLoadFailure value) loadFailure,
    required TResult Function(GetCardStateLoading value) loading,
    required TResult Function(_GetCardStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardStateInitial value)? initial,
    TResult? Function(_GetCardStateLoadFailure value)? loadFailure,
    TResult? Function(GetCardStateLoading value)? loading,
    TResult? Function(_GetCardStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardStateInitial value)? initial,
    TResult Function(_GetCardStateLoadFailure value)? loadFailure,
    TResult Function(GetCardStateLoading value)? loading,
    TResult Function(_GetCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCardStateCopyWith<$Res> {
  factory $GetCardStateCopyWith(
          GetCardState value, $Res Function(GetCardState) then) =
      _$GetCardStateCopyWithImpl<$Res, GetCardState>;
}

/// @nodoc
class _$GetCardStateCopyWithImpl<$Res, $Val extends GetCardState>
    implements $GetCardStateCopyWith<$Res> {
  _$GetCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCardStateInitialImplCopyWith<$Res> {
  factory _$$GetCardStateInitialImplCopyWith(_$GetCardStateInitialImpl value,
          $Res Function(_$GetCardStateInitialImpl) then) =
      __$$GetCardStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCardStateInitialImplCopyWithImpl<$Res>
    extends _$GetCardStateCopyWithImpl<$Res, _$GetCardStateInitialImpl>
    implements _$$GetCardStateInitialImplCopyWith<$Res> {
  __$$GetCardStateInitialImplCopyWithImpl(_$GetCardStateInitialImpl _value,
      $Res Function(_$GetCardStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCardStateInitialImpl implements _GetCardStateInitial {
  const _$GetCardStateInitialImpl();

  @override
  String toString() {
    return 'GetCardState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCardStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetCardEntities getCardEntities) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetCardEntities getCardEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetCardEntities getCardEntities)? loadSuccess,
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
    required TResult Function(_GetCardStateInitial value) initial,
    required TResult Function(_GetCardStateLoadFailure value) loadFailure,
    required TResult Function(GetCardStateLoading value) loading,
    required TResult Function(_GetCardStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardStateInitial value)? initial,
    TResult? Function(_GetCardStateLoadFailure value)? loadFailure,
    TResult? Function(GetCardStateLoading value)? loading,
    TResult? Function(_GetCardStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardStateInitial value)? initial,
    TResult Function(_GetCardStateLoadFailure value)? loadFailure,
    TResult Function(GetCardStateLoading value)? loading,
    TResult Function(_GetCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetCardStateInitial implements GetCardState {
  const factory _GetCardStateInitial() = _$GetCardStateInitialImpl;
}

/// @nodoc
abstract class _$$GetCardStateLoadFailureImplCopyWith<$Res> {
  factory _$$GetCardStateLoadFailureImplCopyWith(
          _$GetCardStateLoadFailureImpl value,
          $Res Function(_$GetCardStateLoadFailureImpl) then) =
      __$$GetCardStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$GetCardStateLoadFailureImplCopyWithImpl<$Res>
    extends _$GetCardStateCopyWithImpl<$Res, _$GetCardStateLoadFailureImpl>
    implements _$$GetCardStateLoadFailureImplCopyWith<$Res> {
  __$$GetCardStateLoadFailureImplCopyWithImpl(
      _$GetCardStateLoadFailureImpl _value,
      $Res Function(_$GetCardStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$GetCardStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$GetCardStateLoadFailureImpl implements _GetCardStateLoadFailure {
  const _$GetCardStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetCardState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCardStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCardStateLoadFailureImplCopyWith<_$GetCardStateLoadFailureImpl>
      get copyWith => __$$GetCardStateLoadFailureImplCopyWithImpl<
          _$GetCardStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetCardEntities getCardEntities) loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetCardEntities getCardEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetCardEntities getCardEntities)? loadSuccess,
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
    required TResult Function(_GetCardStateInitial value) initial,
    required TResult Function(_GetCardStateLoadFailure value) loadFailure,
    required TResult Function(GetCardStateLoading value) loading,
    required TResult Function(_GetCardStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardStateInitial value)? initial,
    TResult? Function(_GetCardStateLoadFailure value)? loadFailure,
    TResult? Function(GetCardStateLoading value)? loading,
    TResult? Function(_GetCardStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardStateInitial value)? initial,
    TResult Function(_GetCardStateLoadFailure value)? loadFailure,
    TResult Function(GetCardStateLoading value)? loading,
    TResult Function(_GetCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _GetCardStateLoadFailure implements GetCardState {
  const factory _GetCardStateLoadFailure(final Failure failure) =
      _$GetCardStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$GetCardStateLoadFailureImplCopyWith<_$GetCardStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCardStateLoadingImplCopyWith<$Res> {
  factory _$$GetCardStateLoadingImplCopyWith(_$GetCardStateLoadingImpl value,
          $Res Function(_$GetCardStateLoadingImpl) then) =
      __$$GetCardStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCardStateLoadingImplCopyWithImpl<$Res>
    extends _$GetCardStateCopyWithImpl<$Res, _$GetCardStateLoadingImpl>
    implements _$$GetCardStateLoadingImplCopyWith<$Res> {
  __$$GetCardStateLoadingImplCopyWithImpl(_$GetCardStateLoadingImpl _value,
      $Res Function(_$GetCardStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCardStateLoadingImpl implements GetCardStateLoading {
  const _$GetCardStateLoadingImpl();

  @override
  String toString() {
    return 'GetCardState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCardStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetCardEntities getCardEntities) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetCardEntities getCardEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetCardEntities getCardEntities)? loadSuccess,
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
    required TResult Function(_GetCardStateInitial value) initial,
    required TResult Function(_GetCardStateLoadFailure value) loadFailure,
    required TResult Function(GetCardStateLoading value) loading,
    required TResult Function(_GetCardStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardStateInitial value)? initial,
    TResult? Function(_GetCardStateLoadFailure value)? loadFailure,
    TResult? Function(GetCardStateLoading value)? loading,
    TResult? Function(_GetCardStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardStateInitial value)? initial,
    TResult Function(_GetCardStateLoadFailure value)? loadFailure,
    TResult Function(GetCardStateLoading value)? loading,
    TResult Function(_GetCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetCardStateLoading implements GetCardState {
  const factory GetCardStateLoading() = _$GetCardStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetCardStateLoadSuccessImplCopyWith<$Res> {
  factory _$$GetCardStateLoadSuccessImplCopyWith(
          _$GetCardStateLoadSuccessImpl value,
          $Res Function(_$GetCardStateLoadSuccessImpl) then) =
      __$$GetCardStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetCardEntities getCardEntities});
}

/// @nodoc
class __$$GetCardStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$GetCardStateCopyWithImpl<$Res, _$GetCardStateLoadSuccessImpl>
    implements _$$GetCardStateLoadSuccessImplCopyWith<$Res> {
  __$$GetCardStateLoadSuccessImplCopyWithImpl(
      _$GetCardStateLoadSuccessImpl _value,
      $Res Function(_$GetCardStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCardEntities = null,
  }) {
    return _then(_$GetCardStateLoadSuccessImpl(
      null == getCardEntities
          ? _value.getCardEntities
          : getCardEntities // ignore: cast_nullable_to_non_nullable
              as GetCardEntities,
    ));
  }
}

/// @nodoc

class _$GetCardStateLoadSuccessImpl implements _GetCardStateLoadSuccess {
  const _$GetCardStateLoadSuccessImpl(this.getCardEntities);

  @override
  final GetCardEntities getCardEntities;

  @override
  String toString() {
    return 'GetCardState.loadSuccess(getCardEntities: $getCardEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCardStateLoadSuccessImpl &&
            (identical(other.getCardEntities, getCardEntities) ||
                other.getCardEntities == getCardEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getCardEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCardStateLoadSuccessImplCopyWith<_$GetCardStateLoadSuccessImpl>
      get copyWith => __$$GetCardStateLoadSuccessImplCopyWithImpl<
          _$GetCardStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(GetCardEntities getCardEntities) loadSuccess,
  }) {
    return loadSuccess(getCardEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(GetCardEntities getCardEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(getCardEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(GetCardEntities getCardEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(getCardEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCardStateInitial value) initial,
    required TResult Function(_GetCardStateLoadFailure value) loadFailure,
    required TResult Function(GetCardStateLoading value) loading,
    required TResult Function(_GetCardStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCardStateInitial value)? initial,
    TResult? Function(_GetCardStateLoadFailure value)? loadFailure,
    TResult? Function(GetCardStateLoading value)? loading,
    TResult? Function(_GetCardStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCardStateInitial value)? initial,
    TResult Function(_GetCardStateLoadFailure value)? loadFailure,
    TResult Function(GetCardStateLoading value)? loading,
    TResult Function(_GetCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetCardStateLoadSuccess implements GetCardState {
  const factory _GetCardStateLoadSuccess(
      final GetCardEntities getCardEntities) = _$GetCardStateLoadSuccessImpl;

  GetCardEntities get getCardEntities;
  @JsonKey(ignore: true)
  _$$GetCardStateLoadSuccessImplCopyWith<_$GetCardStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
