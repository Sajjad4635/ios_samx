// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_buy_back_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValidateBuyBackEvent {
  ValidateBuyBackParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ValidateBuyBackParams params)
        validateBuyBackEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ValidateBuyBackParams params)? validateBuyBackEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ValidateBuyBackParams params)? validateBuyBackEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateBuyBackEventCalled value)
        validateBuyBackEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateBuyBackEventCalled value)?
        validateBuyBackEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateBuyBackEventCalled value)?
        validateBuyBackEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidateBuyBackEventCopyWith<ValidateBuyBackEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateBuyBackEventCopyWith<$Res> {
  factory $ValidateBuyBackEventCopyWith(ValidateBuyBackEvent value,
          $Res Function(ValidateBuyBackEvent) then) =
      _$ValidateBuyBackEventCopyWithImpl<$Res, ValidateBuyBackEvent>;
  @useResult
  $Res call({ValidateBuyBackParams params});
}

/// @nodoc
class _$ValidateBuyBackEventCopyWithImpl<$Res,
        $Val extends ValidateBuyBackEvent>
    implements $ValidateBuyBackEventCopyWith<$Res> {
  _$ValidateBuyBackEventCopyWithImpl(this._value, this._then);

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
              as ValidateBuyBackParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateBuyBackEventCalledImplCopyWith<$Res>
    implements $ValidateBuyBackEventCopyWith<$Res> {
  factory _$$ValidateBuyBackEventCalledImplCopyWith(
          _$ValidateBuyBackEventCalledImpl value,
          $Res Function(_$ValidateBuyBackEventCalledImpl) then) =
      __$$ValidateBuyBackEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ValidateBuyBackParams params});
}

/// @nodoc
class __$$ValidateBuyBackEventCalledImplCopyWithImpl<$Res>
    extends _$ValidateBuyBackEventCopyWithImpl<$Res,
        _$ValidateBuyBackEventCalledImpl>
    implements _$$ValidateBuyBackEventCalledImplCopyWith<$Res> {
  __$$ValidateBuyBackEventCalledImplCopyWithImpl(
      _$ValidateBuyBackEventCalledImpl _value,
      $Res Function(_$ValidateBuyBackEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ValidateBuyBackEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ValidateBuyBackParams,
    ));
  }
}

/// @nodoc

class _$ValidateBuyBackEventCalledImpl implements _ValidateBuyBackEventCalled {
  const _$ValidateBuyBackEventCalledImpl(this.params);

  @override
  final ValidateBuyBackParams params;

  @override
  String toString() {
    return 'ValidateBuyBackEvent.validateBuyBackEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateBuyBackEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateBuyBackEventCalledImplCopyWith<_$ValidateBuyBackEventCalledImpl>
      get copyWith => __$$ValidateBuyBackEventCalledImplCopyWithImpl<
          _$ValidateBuyBackEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ValidateBuyBackParams params)
        validateBuyBackEventCalled,
  }) {
    return validateBuyBackEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ValidateBuyBackParams params)? validateBuyBackEventCalled,
  }) {
    return validateBuyBackEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ValidateBuyBackParams params)? validateBuyBackEventCalled,
    required TResult orElse(),
  }) {
    if (validateBuyBackEventCalled != null) {
      return validateBuyBackEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateBuyBackEventCalled value)
        validateBuyBackEventCalled,
  }) {
    return validateBuyBackEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateBuyBackEventCalled value)?
        validateBuyBackEventCalled,
  }) {
    return validateBuyBackEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateBuyBackEventCalled value)?
        validateBuyBackEventCalled,
    required TResult orElse(),
  }) {
    if (validateBuyBackEventCalled != null) {
      return validateBuyBackEventCalled(this);
    }
    return orElse();
  }
}

abstract class _ValidateBuyBackEventCalled implements ValidateBuyBackEvent {
  const factory _ValidateBuyBackEventCalled(
      final ValidateBuyBackParams params) = _$ValidateBuyBackEventCalledImpl;

  @override
  ValidateBuyBackParams get params;
  @override
  @JsonKey(ignore: true)
  _$$ValidateBuyBackEventCalledImplCopyWith<_$ValidateBuyBackEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ValidateBuyBackState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateBuyBackStateInitial value) initial,
    required TResult Function(_ValidateBuyBackStataLoadFailure value)
        loadFailure,
    required TResult Function(ValidateBuyBackStateLoading value) loading,
    required TResult Function(_ValidateBuyBackStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateBuyBackStateInitial value)? initial,
    TResult? Function(_ValidateBuyBackStataLoadFailure value)? loadFailure,
    TResult? Function(ValidateBuyBackStateLoading value)? loading,
    TResult? Function(_ValidateBuyBackStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateBuyBackStateInitial value)? initial,
    TResult Function(_ValidateBuyBackStataLoadFailure value)? loadFailure,
    TResult Function(ValidateBuyBackStateLoading value)? loading,
    TResult Function(_ValidateBuyBackStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateBuyBackStateCopyWith<$Res> {
  factory $ValidateBuyBackStateCopyWith(ValidateBuyBackState value,
          $Res Function(ValidateBuyBackState) then) =
      _$ValidateBuyBackStateCopyWithImpl<$Res, ValidateBuyBackState>;
}

/// @nodoc
class _$ValidateBuyBackStateCopyWithImpl<$Res,
        $Val extends ValidateBuyBackState>
    implements $ValidateBuyBackStateCopyWith<$Res> {
  _$ValidateBuyBackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ValidateBuyBackStateInitialImplCopyWith<$Res> {
  factory _$$ValidateBuyBackStateInitialImplCopyWith(
          _$ValidateBuyBackStateInitialImpl value,
          $Res Function(_$ValidateBuyBackStateInitialImpl) then) =
      __$$ValidateBuyBackStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateBuyBackStateInitialImplCopyWithImpl<$Res>
    extends _$ValidateBuyBackStateCopyWithImpl<$Res,
        _$ValidateBuyBackStateInitialImpl>
    implements _$$ValidateBuyBackStateInitialImplCopyWith<$Res> {
  __$$ValidateBuyBackStateInitialImplCopyWithImpl(
      _$ValidateBuyBackStateInitialImpl _value,
      $Res Function(_$ValidateBuyBackStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidateBuyBackStateInitialImpl
    implements _ValidateBuyBackStateInitial {
  const _$ValidateBuyBackStateInitialImpl();

  @override
  String toString() {
    return 'ValidateBuyBackState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateBuyBackStateInitialImpl);
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
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)
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
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)?
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
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)?
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
    required TResult Function(_ValidateBuyBackStateInitial value) initial,
    required TResult Function(_ValidateBuyBackStataLoadFailure value)
        loadFailure,
    required TResult Function(ValidateBuyBackStateLoading value) loading,
    required TResult Function(_ValidateBuyBackStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateBuyBackStateInitial value)? initial,
    TResult? Function(_ValidateBuyBackStataLoadFailure value)? loadFailure,
    TResult? Function(ValidateBuyBackStateLoading value)? loading,
    TResult? Function(_ValidateBuyBackStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateBuyBackStateInitial value)? initial,
    TResult Function(_ValidateBuyBackStataLoadFailure value)? loadFailure,
    TResult Function(ValidateBuyBackStateLoading value)? loading,
    TResult Function(_ValidateBuyBackStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ValidateBuyBackStateInitial implements ValidateBuyBackState {
  const factory _ValidateBuyBackStateInitial() =
      _$ValidateBuyBackStateInitialImpl;
}

/// @nodoc
abstract class _$$ValidateBuyBackStataLoadFailureImplCopyWith<$Res> {
  factory _$$ValidateBuyBackStataLoadFailureImplCopyWith(
          _$ValidateBuyBackStataLoadFailureImpl value,
          $Res Function(_$ValidateBuyBackStataLoadFailureImpl) then) =
      __$$ValidateBuyBackStataLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ValidateBuyBackStataLoadFailureImplCopyWithImpl<$Res>
    extends _$ValidateBuyBackStateCopyWithImpl<$Res,
        _$ValidateBuyBackStataLoadFailureImpl>
    implements _$$ValidateBuyBackStataLoadFailureImplCopyWith<$Res> {
  __$$ValidateBuyBackStataLoadFailureImplCopyWithImpl(
      _$ValidateBuyBackStataLoadFailureImpl _value,
      $Res Function(_$ValidateBuyBackStataLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ValidateBuyBackStataLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ValidateBuyBackStataLoadFailureImpl
    implements _ValidateBuyBackStataLoadFailure {
  const _$ValidateBuyBackStataLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ValidateBuyBackState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateBuyBackStataLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateBuyBackStataLoadFailureImplCopyWith<
          _$ValidateBuyBackStataLoadFailureImpl>
      get copyWith => __$$ValidateBuyBackStataLoadFailureImplCopyWithImpl<
          _$ValidateBuyBackStataLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)
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
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)?
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
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)?
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
    required TResult Function(_ValidateBuyBackStateInitial value) initial,
    required TResult Function(_ValidateBuyBackStataLoadFailure value)
        loadFailure,
    required TResult Function(ValidateBuyBackStateLoading value) loading,
    required TResult Function(_ValidateBuyBackStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateBuyBackStateInitial value)? initial,
    TResult? Function(_ValidateBuyBackStataLoadFailure value)? loadFailure,
    TResult? Function(ValidateBuyBackStateLoading value)? loading,
    TResult? Function(_ValidateBuyBackStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateBuyBackStateInitial value)? initial,
    TResult Function(_ValidateBuyBackStataLoadFailure value)? loadFailure,
    TResult Function(ValidateBuyBackStateLoading value)? loading,
    TResult Function(_ValidateBuyBackStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _ValidateBuyBackStataLoadFailure
    implements ValidateBuyBackState {
  const factory _ValidateBuyBackStataLoadFailure(final Failure failure) =
      _$ValidateBuyBackStataLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ValidateBuyBackStataLoadFailureImplCopyWith<
          _$ValidateBuyBackStataLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateBuyBackStateLoadingImplCopyWith<$Res> {
  factory _$$ValidateBuyBackStateLoadingImplCopyWith(
          _$ValidateBuyBackStateLoadingImpl value,
          $Res Function(_$ValidateBuyBackStateLoadingImpl) then) =
      __$$ValidateBuyBackStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateBuyBackStateLoadingImplCopyWithImpl<$Res>
    extends _$ValidateBuyBackStateCopyWithImpl<$Res,
        _$ValidateBuyBackStateLoadingImpl>
    implements _$$ValidateBuyBackStateLoadingImplCopyWith<$Res> {
  __$$ValidateBuyBackStateLoadingImplCopyWithImpl(
      _$ValidateBuyBackStateLoadingImpl _value,
      $Res Function(_$ValidateBuyBackStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidateBuyBackStateLoadingImpl implements ValidateBuyBackStateLoading {
  const _$ValidateBuyBackStateLoadingImpl();

  @override
  String toString() {
    return 'ValidateBuyBackState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateBuyBackStateLoadingImpl);
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
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)
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
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)?
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
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)?
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
    required TResult Function(_ValidateBuyBackStateInitial value) initial,
    required TResult Function(_ValidateBuyBackStataLoadFailure value)
        loadFailure,
    required TResult Function(ValidateBuyBackStateLoading value) loading,
    required TResult Function(_ValidateBuyBackStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateBuyBackStateInitial value)? initial,
    TResult? Function(_ValidateBuyBackStataLoadFailure value)? loadFailure,
    TResult? Function(ValidateBuyBackStateLoading value)? loading,
    TResult? Function(_ValidateBuyBackStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateBuyBackStateInitial value)? initial,
    TResult Function(_ValidateBuyBackStataLoadFailure value)? loadFailure,
    TResult Function(ValidateBuyBackStateLoading value)? loading,
    TResult Function(_ValidateBuyBackStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ValidateBuyBackStateLoading implements ValidateBuyBackState {
  const factory ValidateBuyBackStateLoading() =
      _$ValidateBuyBackStateLoadingImpl;
}

/// @nodoc
abstract class _$$ValidateBuyBackStateLoadSuccessImplCopyWith<$Res> {
  factory _$$ValidateBuyBackStateLoadSuccessImplCopyWith(
          _$ValidateBuyBackStateLoadSuccessImpl value,
          $Res Function(_$ValidateBuyBackStateLoadSuccessImpl) then) =
      __$$ValidateBuyBackStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities});
}

/// @nodoc
class __$$ValidateBuyBackStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$ValidateBuyBackStateCopyWithImpl<$Res,
        _$ValidateBuyBackStateLoadSuccessImpl>
    implements _$$ValidateBuyBackStateLoadSuccessImplCopyWith<$Res> {
  __$$ValidateBuyBackStateLoadSuccessImplCopyWithImpl(
      _$ValidateBuyBackStateLoadSuccessImpl _value,
      $Res Function(_$ValidateBuyBackStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validateBuyBacksResponseEntities = null,
  }) {
    return _then(_$ValidateBuyBackStateLoadSuccessImpl(
      null == validateBuyBacksResponseEntities
          ? _value.validateBuyBacksResponseEntities
          : validateBuyBacksResponseEntities // ignore: cast_nullable_to_non_nullable
              as ValidateBuyBacksResponseEntities,
    ));
  }
}

/// @nodoc

class _$ValidateBuyBackStateLoadSuccessImpl
    implements _ValidateBuyBackStateLoadSuccess {
  const _$ValidateBuyBackStateLoadSuccessImpl(
      this.validateBuyBacksResponseEntities);

  @override
  final ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities;

  @override
  String toString() {
    return 'ValidateBuyBackState.loadSuccess(validateBuyBacksResponseEntities: $validateBuyBacksResponseEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateBuyBackStateLoadSuccessImpl &&
            (identical(other.validateBuyBacksResponseEntities,
                    validateBuyBacksResponseEntities) ||
                other.validateBuyBacksResponseEntities ==
                    validateBuyBacksResponseEntities));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, validateBuyBacksResponseEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateBuyBackStateLoadSuccessImplCopyWith<
          _$ValidateBuyBackStateLoadSuccessImpl>
      get copyWith => __$$ValidateBuyBackStateLoadSuccessImplCopyWithImpl<
          _$ValidateBuyBackStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)
        loadSuccess,
  }) {
    return loadSuccess(validateBuyBacksResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(validateBuyBacksResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            ValidateBuyBacksResponseEntities validateBuyBacksResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(validateBuyBacksResponseEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateBuyBackStateInitial value) initial,
    required TResult Function(_ValidateBuyBackStataLoadFailure value)
        loadFailure,
    required TResult Function(ValidateBuyBackStateLoading value) loading,
    required TResult Function(_ValidateBuyBackStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateBuyBackStateInitial value)? initial,
    TResult? Function(_ValidateBuyBackStataLoadFailure value)? loadFailure,
    TResult? Function(ValidateBuyBackStateLoading value)? loading,
    TResult? Function(_ValidateBuyBackStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateBuyBackStateInitial value)? initial,
    TResult Function(_ValidateBuyBackStataLoadFailure value)? loadFailure,
    TResult Function(ValidateBuyBackStateLoading value)? loading,
    TResult Function(_ValidateBuyBackStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ValidateBuyBackStateLoadSuccess
    implements ValidateBuyBackState {
  const factory _ValidateBuyBackStateLoadSuccess(
          final ValidateBuyBacksResponseEntities
              validateBuyBacksResponseEntities) =
      _$ValidateBuyBackStateLoadSuccessImpl;

  ValidateBuyBacksResponseEntities get validateBuyBacksResponseEntities;
  @JsonKey(ignore: true)
  _$$ValidateBuyBackStateLoadSuccessImplCopyWith<
          _$ValidateBuyBackStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
