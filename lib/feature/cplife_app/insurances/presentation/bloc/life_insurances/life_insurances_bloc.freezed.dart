// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'life_insurances_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LifeInsurancesEvent {
  NoParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoParams params) lifeInsurancesEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoParams params)? lifeInsurancesEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoParams params)? lifeInsurancesEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LifeInsurancesEventCalled value)
        lifeInsurancesEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LifeInsurancesEventCalled value)?
        lifeInsurancesEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LifeInsurancesEventCalled value)?
        lifeInsurancesEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LifeInsurancesEventCopyWith<LifeInsurancesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeInsurancesEventCopyWith<$Res> {
  factory $LifeInsurancesEventCopyWith(
          LifeInsurancesEvent value, $Res Function(LifeInsurancesEvent) then) =
      _$LifeInsurancesEventCopyWithImpl<$Res, LifeInsurancesEvent>;
  @useResult
  $Res call({NoParams params});
}

/// @nodoc
class _$LifeInsurancesEventCopyWithImpl<$Res, $Val extends LifeInsurancesEvent>
    implements $LifeInsurancesEventCopyWith<$Res> {
  _$LifeInsurancesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as NoParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LifeInsurancesEventCalledImplCopyWith<$Res>
    implements $LifeInsurancesEventCopyWith<$Res> {
  factory _$$LifeInsurancesEventCalledImplCopyWith(
          _$LifeInsurancesEventCalledImpl value,
          $Res Function(_$LifeInsurancesEventCalledImpl) then) =
      __$$LifeInsurancesEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoParams params});
}

/// @nodoc
class __$$LifeInsurancesEventCalledImplCopyWithImpl<$Res>
    extends _$LifeInsurancesEventCopyWithImpl<$Res,
        _$LifeInsurancesEventCalledImpl>
    implements _$$LifeInsurancesEventCalledImplCopyWith<$Res> {
  __$$LifeInsurancesEventCalledImplCopyWithImpl(
      _$LifeInsurancesEventCalledImpl _value,
      $Res Function(_$LifeInsurancesEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$LifeInsurancesEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as NoParams,
    ));
  }
}

/// @nodoc

class _$LifeInsurancesEventCalledImpl implements _LifeInsurancesEventCalled {
  const _$LifeInsurancesEventCalledImpl(this.params);

  @override
  final NoParams params;

  @override
  String toString() {
    return 'LifeInsurancesEvent.lifeInsurancesEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifeInsurancesEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LifeInsurancesEventCalledImplCopyWith<_$LifeInsurancesEventCalledImpl>
      get copyWith => __$$LifeInsurancesEventCalledImplCopyWithImpl<
          _$LifeInsurancesEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NoParams params) lifeInsurancesEventCalled,
  }) {
    return lifeInsurancesEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NoParams params)? lifeInsurancesEventCalled,
  }) {
    return lifeInsurancesEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NoParams params)? lifeInsurancesEventCalled,
    required TResult orElse(),
  }) {
    if (lifeInsurancesEventCalled != null) {
      return lifeInsurancesEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LifeInsurancesEventCalled value)
        lifeInsurancesEventCalled,
  }) {
    return lifeInsurancesEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LifeInsurancesEventCalled value)?
        lifeInsurancesEventCalled,
  }) {
    return lifeInsurancesEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LifeInsurancesEventCalled value)?
        lifeInsurancesEventCalled,
    required TResult orElse(),
  }) {
    if (lifeInsurancesEventCalled != null) {
      return lifeInsurancesEventCalled(this);
    }
    return orElse();
  }
}

abstract class _LifeInsurancesEventCalled implements LifeInsurancesEvent {
  const factory _LifeInsurancesEventCalled(final NoParams params) =
      _$LifeInsurancesEventCalledImpl;

  @override
  NoParams get params;
  @override
  @JsonKey(ignore: true)
  _$$LifeInsurancesEventCalledImplCopyWith<_$LifeInsurancesEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LifeInsurancesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)
        loadSuccess,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)?
        loadSuccess,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)?
        loadSuccess,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LifeInsurancesStateInitial value) initial,
    required TResult Function(_LifeInsurancesStateLoadFailure value)
        loadFailure,
    required TResult Function(_LifeInsurancesStateLoadSuccess value)
        loadSuccess,
    required TResult Function(LifeInsurancesStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LifeInsurancesStateInitial value)? initial,
    TResult? Function(_LifeInsurancesStateLoadFailure value)? loadFailure,
    TResult? Function(_LifeInsurancesStateLoadSuccess value)? loadSuccess,
    TResult? Function(LifeInsurancesStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LifeInsurancesStateInitial value)? initial,
    TResult Function(_LifeInsurancesStateLoadFailure value)? loadFailure,
    TResult Function(_LifeInsurancesStateLoadSuccess value)? loadSuccess,
    TResult Function(LifeInsurancesStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeInsurancesStateCopyWith<$Res> {
  factory $LifeInsurancesStateCopyWith(
          LifeInsurancesState value, $Res Function(LifeInsurancesState) then) =
      _$LifeInsurancesStateCopyWithImpl<$Res, LifeInsurancesState>;
}

/// @nodoc
class _$LifeInsurancesStateCopyWithImpl<$Res, $Val extends LifeInsurancesState>
    implements $LifeInsurancesStateCopyWith<$Res> {
  _$LifeInsurancesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LifeInsurancesStateInitialImplCopyWith<$Res> {
  factory _$$LifeInsurancesStateInitialImplCopyWith(
          _$LifeInsurancesStateInitialImpl value,
          $Res Function(_$LifeInsurancesStateInitialImpl) then) =
      __$$LifeInsurancesStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LifeInsurancesStateInitialImplCopyWithImpl<$Res>
    extends _$LifeInsurancesStateCopyWithImpl<$Res,
        _$LifeInsurancesStateInitialImpl>
    implements _$$LifeInsurancesStateInitialImplCopyWith<$Res> {
  __$$LifeInsurancesStateInitialImplCopyWithImpl(
      _$LifeInsurancesStateInitialImpl _value,
      $Res Function(_$LifeInsurancesStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LifeInsurancesStateInitialImpl implements _LifeInsurancesStateInitial {
  const _$LifeInsurancesStateInitialImpl();

  @override
  String toString() {
    return 'LifeInsurancesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifeInsurancesStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)
        loadSuccess,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)?
        loadSuccess,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)?
        loadSuccess,
    TResult Function()? loading,
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
    required TResult Function(_LifeInsurancesStateInitial value) initial,
    required TResult Function(_LifeInsurancesStateLoadFailure value)
        loadFailure,
    required TResult Function(_LifeInsurancesStateLoadSuccess value)
        loadSuccess,
    required TResult Function(LifeInsurancesStateLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LifeInsurancesStateInitial value)? initial,
    TResult? Function(_LifeInsurancesStateLoadFailure value)? loadFailure,
    TResult? Function(_LifeInsurancesStateLoadSuccess value)? loadSuccess,
    TResult? Function(LifeInsurancesStateLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LifeInsurancesStateInitial value)? initial,
    TResult Function(_LifeInsurancesStateLoadFailure value)? loadFailure,
    TResult Function(_LifeInsurancesStateLoadSuccess value)? loadSuccess,
    TResult Function(LifeInsurancesStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LifeInsurancesStateInitial implements LifeInsurancesState {
  const factory _LifeInsurancesStateInitial() =
      _$LifeInsurancesStateInitialImpl;
}

/// @nodoc
abstract class _$$LifeInsurancesStateLoadFailureImplCopyWith<$Res> {
  factory _$$LifeInsurancesStateLoadFailureImplCopyWith(
          _$LifeInsurancesStateLoadFailureImpl value,
          $Res Function(_$LifeInsurancesStateLoadFailureImpl) then) =
      __$$LifeInsurancesStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$LifeInsurancesStateLoadFailureImplCopyWithImpl<$Res>
    extends _$LifeInsurancesStateCopyWithImpl<$Res,
        _$LifeInsurancesStateLoadFailureImpl>
    implements _$$LifeInsurancesStateLoadFailureImplCopyWith<$Res> {
  __$$LifeInsurancesStateLoadFailureImplCopyWithImpl(
      _$LifeInsurancesStateLoadFailureImpl _value,
      $Res Function(_$LifeInsurancesStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LifeInsurancesStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$LifeInsurancesStateLoadFailureImpl
    implements _LifeInsurancesStateLoadFailure {
  const _$LifeInsurancesStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'LifeInsurancesState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifeInsurancesStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LifeInsurancesStateLoadFailureImplCopyWith<
          _$LifeInsurancesStateLoadFailureImpl>
      get copyWith => __$$LifeInsurancesStateLoadFailureImplCopyWithImpl<
          _$LifeInsurancesStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)
        loadSuccess,
    required TResult Function() loading,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)?
        loadSuccess,
    TResult? Function()? loading,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)?
        loadSuccess,
    TResult Function()? loading,
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
    required TResult Function(_LifeInsurancesStateInitial value) initial,
    required TResult Function(_LifeInsurancesStateLoadFailure value)
        loadFailure,
    required TResult Function(_LifeInsurancesStateLoadSuccess value)
        loadSuccess,
    required TResult Function(LifeInsurancesStateLoading value) loading,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LifeInsurancesStateInitial value)? initial,
    TResult? Function(_LifeInsurancesStateLoadFailure value)? loadFailure,
    TResult? Function(_LifeInsurancesStateLoadSuccess value)? loadSuccess,
    TResult? Function(LifeInsurancesStateLoading value)? loading,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LifeInsurancesStateInitial value)? initial,
    TResult Function(_LifeInsurancesStateLoadFailure value)? loadFailure,
    TResult Function(_LifeInsurancesStateLoadSuccess value)? loadSuccess,
    TResult Function(LifeInsurancesStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LifeInsurancesStateLoadFailure implements LifeInsurancesState {
  const factory _LifeInsurancesStateLoadFailure(final Failure failure) =
      _$LifeInsurancesStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$LifeInsurancesStateLoadFailureImplCopyWith<
          _$LifeInsurancesStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LifeInsurancesStateLoadSuccessImplCopyWith<$Res> {
  factory _$$LifeInsurancesStateLoadSuccessImplCopyWith(
          _$LifeInsurancesStateLoadSuccessImpl value,
          $Res Function(_$LifeInsurancesStateLoadSuccessImpl) then) =
      __$$LifeInsurancesStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LifeInsurancesResponseEntities lifeInsurancesResponseEntities});
}

/// @nodoc
class __$$LifeInsurancesStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$LifeInsurancesStateCopyWithImpl<$Res,
        _$LifeInsurancesStateLoadSuccessImpl>
    implements _$$LifeInsurancesStateLoadSuccessImplCopyWith<$Res> {
  __$$LifeInsurancesStateLoadSuccessImplCopyWithImpl(
      _$LifeInsurancesStateLoadSuccessImpl _value,
      $Res Function(_$LifeInsurancesStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lifeInsurancesResponseEntities = null,
  }) {
    return _then(_$LifeInsurancesStateLoadSuccessImpl(
      null == lifeInsurancesResponseEntities
          ? _value.lifeInsurancesResponseEntities
          : lifeInsurancesResponseEntities // ignore: cast_nullable_to_non_nullable
              as LifeInsurancesResponseEntities,
    ));
  }
}

/// @nodoc

class _$LifeInsurancesStateLoadSuccessImpl
    implements _LifeInsurancesStateLoadSuccess {
  const _$LifeInsurancesStateLoadSuccessImpl(
      this.lifeInsurancesResponseEntities);

  @override
  final LifeInsurancesResponseEntities lifeInsurancesResponseEntities;

  @override
  String toString() {
    return 'LifeInsurancesState.loadSuccess(lifeInsurancesResponseEntities: $lifeInsurancesResponseEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifeInsurancesStateLoadSuccessImpl &&
            (identical(other.lifeInsurancesResponseEntities,
                    lifeInsurancesResponseEntities) ||
                other.lifeInsurancesResponseEntities ==
                    lifeInsurancesResponseEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lifeInsurancesResponseEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LifeInsurancesStateLoadSuccessImplCopyWith<
          _$LifeInsurancesStateLoadSuccessImpl>
      get copyWith => __$$LifeInsurancesStateLoadSuccessImplCopyWithImpl<
          _$LifeInsurancesStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)
        loadSuccess,
    required TResult Function() loading,
  }) {
    return loadSuccess(lifeInsurancesResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)?
        loadSuccess,
    TResult? Function()? loading,
  }) {
    return loadSuccess?.call(lifeInsurancesResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)?
        loadSuccess,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(lifeInsurancesResponseEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LifeInsurancesStateInitial value) initial,
    required TResult Function(_LifeInsurancesStateLoadFailure value)
        loadFailure,
    required TResult Function(_LifeInsurancesStateLoadSuccess value)
        loadSuccess,
    required TResult Function(LifeInsurancesStateLoading value) loading,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LifeInsurancesStateInitial value)? initial,
    TResult? Function(_LifeInsurancesStateLoadFailure value)? loadFailure,
    TResult? Function(_LifeInsurancesStateLoadSuccess value)? loadSuccess,
    TResult? Function(LifeInsurancesStateLoading value)? loading,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LifeInsurancesStateInitial value)? initial,
    TResult Function(_LifeInsurancesStateLoadFailure value)? loadFailure,
    TResult Function(_LifeInsurancesStateLoadSuccess value)? loadSuccess,
    TResult Function(LifeInsurancesStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LifeInsurancesStateLoadSuccess implements LifeInsurancesState {
  const factory _LifeInsurancesStateLoadSuccess(
          final LifeInsurancesResponseEntities lifeInsurancesResponseEntities) =
      _$LifeInsurancesStateLoadSuccessImpl;

  LifeInsurancesResponseEntities get lifeInsurancesResponseEntities;
  @JsonKey(ignore: true)
  _$$LifeInsurancesStateLoadSuccessImplCopyWith<
          _$LifeInsurancesStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LifeInsurancesStateLoadingImplCopyWith<$Res> {
  factory _$$LifeInsurancesStateLoadingImplCopyWith(
          _$LifeInsurancesStateLoadingImpl value,
          $Res Function(_$LifeInsurancesStateLoadingImpl) then) =
      __$$LifeInsurancesStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LifeInsurancesStateLoadingImplCopyWithImpl<$Res>
    extends _$LifeInsurancesStateCopyWithImpl<$Res,
        _$LifeInsurancesStateLoadingImpl>
    implements _$$LifeInsurancesStateLoadingImplCopyWith<$Res> {
  __$$LifeInsurancesStateLoadingImplCopyWithImpl(
      _$LifeInsurancesStateLoadingImpl _value,
      $Res Function(_$LifeInsurancesStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LifeInsurancesStateLoadingImpl implements LifeInsurancesStateLoading {
  const _$LifeInsurancesStateLoadingImpl();

  @override
  String toString() {
    return 'LifeInsurancesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifeInsurancesStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)
        loadSuccess,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)?
        loadSuccess,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function(
            LifeInsurancesResponseEntities lifeInsurancesResponseEntities)?
        loadSuccess,
    TResult Function()? loading,
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
    required TResult Function(_LifeInsurancesStateInitial value) initial,
    required TResult Function(_LifeInsurancesStateLoadFailure value)
        loadFailure,
    required TResult Function(_LifeInsurancesStateLoadSuccess value)
        loadSuccess,
    required TResult Function(LifeInsurancesStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LifeInsurancesStateInitial value)? initial,
    TResult? Function(_LifeInsurancesStateLoadFailure value)? loadFailure,
    TResult? Function(_LifeInsurancesStateLoadSuccess value)? loadSuccess,
    TResult? Function(LifeInsurancesStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LifeInsurancesStateInitial value)? initial,
    TResult Function(_LifeInsurancesStateLoadFailure value)? loadFailure,
    TResult Function(_LifeInsurancesStateLoadSuccess value)? loadSuccess,
    TResult Function(LifeInsurancesStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LifeInsurancesStateLoading implements LifeInsurancesState {
  const factory LifeInsurancesStateLoading() = _$LifeInsurancesStateLoadingImpl;
}
