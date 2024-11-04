// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_loan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValidateLoanEvent {
  ValidateLoanParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ValidateLoanParams params)
        validateLoanEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ValidateLoanParams params)? validateLoanEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ValidateLoanParams params)? validateLoanEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateLoanEventCalled value)
        validateLoanEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateLoanEventCalled value)? validateLoanEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateLoanEventCalled value)? validateLoanEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidateLoanEventCopyWith<ValidateLoanEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateLoanEventCopyWith<$Res> {
  factory $ValidateLoanEventCopyWith(
          ValidateLoanEvent value, $Res Function(ValidateLoanEvent) then) =
      _$ValidateLoanEventCopyWithImpl<$Res, ValidateLoanEvent>;
  @useResult
  $Res call({ValidateLoanParams params});
}

/// @nodoc
class _$ValidateLoanEventCopyWithImpl<$Res, $Val extends ValidateLoanEvent>
    implements $ValidateLoanEventCopyWith<$Res> {
  _$ValidateLoanEventCopyWithImpl(this._value, this._then);

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
              as ValidateLoanParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateLoanEventCalledImplCopyWith<$Res>
    implements $ValidateLoanEventCopyWith<$Res> {
  factory _$$ValidateLoanEventCalledImplCopyWith(
          _$ValidateLoanEventCalledImpl value,
          $Res Function(_$ValidateLoanEventCalledImpl) then) =
      __$$ValidateLoanEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ValidateLoanParams params});
}

/// @nodoc
class __$$ValidateLoanEventCalledImplCopyWithImpl<$Res>
    extends _$ValidateLoanEventCopyWithImpl<$Res, _$ValidateLoanEventCalledImpl>
    implements _$$ValidateLoanEventCalledImplCopyWith<$Res> {
  __$$ValidateLoanEventCalledImplCopyWithImpl(
      _$ValidateLoanEventCalledImpl _value,
      $Res Function(_$ValidateLoanEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$ValidateLoanEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ValidateLoanParams,
    ));
  }
}

/// @nodoc

class _$ValidateLoanEventCalledImpl implements _ValidateLoanEventCalled {
  const _$ValidateLoanEventCalledImpl(this.params);

  @override
  final ValidateLoanParams params;

  @override
  String toString() {
    return 'ValidateLoanEvent.validateLoanEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateLoanEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateLoanEventCalledImplCopyWith<_$ValidateLoanEventCalledImpl>
      get copyWith => __$$ValidateLoanEventCalledImplCopyWithImpl<
          _$ValidateLoanEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ValidateLoanParams params)
        validateLoanEventCalled,
  }) {
    return validateLoanEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ValidateLoanParams params)? validateLoanEventCalled,
  }) {
    return validateLoanEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ValidateLoanParams params)? validateLoanEventCalled,
    required TResult orElse(),
  }) {
    if (validateLoanEventCalled != null) {
      return validateLoanEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateLoanEventCalled value)
        validateLoanEventCalled,
  }) {
    return validateLoanEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateLoanEventCalled value)? validateLoanEventCalled,
  }) {
    return validateLoanEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateLoanEventCalled value)? validateLoanEventCalled,
    required TResult orElse(),
  }) {
    if (validateLoanEventCalled != null) {
      return validateLoanEventCalled(this);
    }
    return orElse();
  }
}

abstract class _ValidateLoanEventCalled implements ValidateLoanEvent {
  const factory _ValidateLoanEventCalled(final ValidateLoanParams params) =
      _$ValidateLoanEventCalledImpl;

  @override
  ValidateLoanParams get params;
  @override
  @JsonKey(ignore: true)
  _$$ValidateLoanEventCalledImplCopyWith<_$ValidateLoanEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ValidateLoanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            ValidateLoanResponseEntities validateLoanResponseEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            ValidateLoanResponseEntities validateLoanResponseEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(ValidateLoanResponseEntities validateLoanResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateLoanStateInitial value) initial,
    required TResult Function(_ValidateLoanStateLoadFailure value) loadFailure,
    required TResult Function(ValidateLoanStateLoading value) loading,
    required TResult Function(_ValidateLoanStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateLoanStateInitial value)? initial,
    TResult? Function(_ValidateLoanStateLoadFailure value)? loadFailure,
    TResult? Function(ValidateLoanStateLoading value)? loading,
    TResult? Function(_ValidateLoanStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateLoanStateInitial value)? initial,
    TResult Function(_ValidateLoanStateLoadFailure value)? loadFailure,
    TResult Function(ValidateLoanStateLoading value)? loading,
    TResult Function(_ValidateLoanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateLoanStateCopyWith<$Res> {
  factory $ValidateLoanStateCopyWith(
          ValidateLoanState value, $Res Function(ValidateLoanState) then) =
      _$ValidateLoanStateCopyWithImpl<$Res, ValidateLoanState>;
}

/// @nodoc
class _$ValidateLoanStateCopyWithImpl<$Res, $Val extends ValidateLoanState>
    implements $ValidateLoanStateCopyWith<$Res> {
  _$ValidateLoanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ValidateLoanStateInitialImplCopyWith<$Res> {
  factory _$$ValidateLoanStateInitialImplCopyWith(
          _$ValidateLoanStateInitialImpl value,
          $Res Function(_$ValidateLoanStateInitialImpl) then) =
      __$$ValidateLoanStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateLoanStateInitialImplCopyWithImpl<$Res>
    extends _$ValidateLoanStateCopyWithImpl<$Res,
        _$ValidateLoanStateInitialImpl>
    implements _$$ValidateLoanStateInitialImplCopyWith<$Res> {
  __$$ValidateLoanStateInitialImplCopyWithImpl(
      _$ValidateLoanStateInitialImpl _value,
      $Res Function(_$ValidateLoanStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidateLoanStateInitialImpl implements _ValidateLoanStateInitial {
  const _$ValidateLoanStateInitialImpl();

  @override
  String toString() {
    return 'ValidateLoanState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateLoanStateInitialImpl);
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
            ValidateLoanResponseEntities validateLoanResponseEntities)
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
            ValidateLoanResponseEntities validateLoanResponseEntities)?
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
    TResult Function(ValidateLoanResponseEntities validateLoanResponseEntities)?
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
    required TResult Function(_ValidateLoanStateInitial value) initial,
    required TResult Function(_ValidateLoanStateLoadFailure value) loadFailure,
    required TResult Function(ValidateLoanStateLoading value) loading,
    required TResult Function(_ValidateLoanStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateLoanStateInitial value)? initial,
    TResult? Function(_ValidateLoanStateLoadFailure value)? loadFailure,
    TResult? Function(ValidateLoanStateLoading value)? loading,
    TResult? Function(_ValidateLoanStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateLoanStateInitial value)? initial,
    TResult Function(_ValidateLoanStateLoadFailure value)? loadFailure,
    TResult Function(ValidateLoanStateLoading value)? loading,
    TResult Function(_ValidateLoanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ValidateLoanStateInitial implements ValidateLoanState {
  const factory _ValidateLoanStateInitial() = _$ValidateLoanStateInitialImpl;
}

/// @nodoc
abstract class _$$ValidateLoanStateLoadFailureImplCopyWith<$Res> {
  factory _$$ValidateLoanStateLoadFailureImplCopyWith(
          _$ValidateLoanStateLoadFailureImpl value,
          $Res Function(_$ValidateLoanStateLoadFailureImpl) then) =
      __$$ValidateLoanStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ValidateLoanStateLoadFailureImplCopyWithImpl<$Res>
    extends _$ValidateLoanStateCopyWithImpl<$Res,
        _$ValidateLoanStateLoadFailureImpl>
    implements _$$ValidateLoanStateLoadFailureImplCopyWith<$Res> {
  __$$ValidateLoanStateLoadFailureImplCopyWithImpl(
      _$ValidateLoanStateLoadFailureImpl _value,
      $Res Function(_$ValidateLoanStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ValidateLoanStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ValidateLoanStateLoadFailureImpl
    implements _ValidateLoanStateLoadFailure {
  const _$ValidateLoanStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ValidateLoanState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateLoanStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateLoanStateLoadFailureImplCopyWith<
          _$ValidateLoanStateLoadFailureImpl>
      get copyWith => __$$ValidateLoanStateLoadFailureImplCopyWithImpl<
          _$ValidateLoanStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            ValidateLoanResponseEntities validateLoanResponseEntities)
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
            ValidateLoanResponseEntities validateLoanResponseEntities)?
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
    TResult Function(ValidateLoanResponseEntities validateLoanResponseEntities)?
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
    required TResult Function(_ValidateLoanStateInitial value) initial,
    required TResult Function(_ValidateLoanStateLoadFailure value) loadFailure,
    required TResult Function(ValidateLoanStateLoading value) loading,
    required TResult Function(_ValidateLoanStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateLoanStateInitial value)? initial,
    TResult? Function(_ValidateLoanStateLoadFailure value)? loadFailure,
    TResult? Function(ValidateLoanStateLoading value)? loading,
    TResult? Function(_ValidateLoanStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateLoanStateInitial value)? initial,
    TResult Function(_ValidateLoanStateLoadFailure value)? loadFailure,
    TResult Function(ValidateLoanStateLoading value)? loading,
    TResult Function(_ValidateLoanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _ValidateLoanStateLoadFailure implements ValidateLoanState {
  const factory _ValidateLoanStateLoadFailure(final Failure failure) =
      _$ValidateLoanStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ValidateLoanStateLoadFailureImplCopyWith<
          _$ValidateLoanStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateLoanStateLoadingImplCopyWith<$Res> {
  factory _$$ValidateLoanStateLoadingImplCopyWith(
          _$ValidateLoanStateLoadingImpl value,
          $Res Function(_$ValidateLoanStateLoadingImpl) then) =
      __$$ValidateLoanStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateLoanStateLoadingImplCopyWithImpl<$Res>
    extends _$ValidateLoanStateCopyWithImpl<$Res,
        _$ValidateLoanStateLoadingImpl>
    implements _$$ValidateLoanStateLoadingImplCopyWith<$Res> {
  __$$ValidateLoanStateLoadingImplCopyWithImpl(
      _$ValidateLoanStateLoadingImpl _value,
      $Res Function(_$ValidateLoanStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidateLoanStateLoadingImpl implements ValidateLoanStateLoading {
  const _$ValidateLoanStateLoadingImpl();

  @override
  String toString() {
    return 'ValidateLoanState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateLoanStateLoadingImpl);
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
            ValidateLoanResponseEntities validateLoanResponseEntities)
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
            ValidateLoanResponseEntities validateLoanResponseEntities)?
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
    TResult Function(ValidateLoanResponseEntities validateLoanResponseEntities)?
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
    required TResult Function(_ValidateLoanStateInitial value) initial,
    required TResult Function(_ValidateLoanStateLoadFailure value) loadFailure,
    required TResult Function(ValidateLoanStateLoading value) loading,
    required TResult Function(_ValidateLoanStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateLoanStateInitial value)? initial,
    TResult? Function(_ValidateLoanStateLoadFailure value)? loadFailure,
    TResult? Function(ValidateLoanStateLoading value)? loading,
    TResult? Function(_ValidateLoanStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateLoanStateInitial value)? initial,
    TResult Function(_ValidateLoanStateLoadFailure value)? loadFailure,
    TResult Function(ValidateLoanStateLoading value)? loading,
    TResult Function(_ValidateLoanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ValidateLoanStateLoading implements ValidateLoanState {
  const factory ValidateLoanStateLoading() = _$ValidateLoanStateLoadingImpl;
}

/// @nodoc
abstract class _$$ValidateLoanStateLoadSuccessImplCopyWith<$Res> {
  factory _$$ValidateLoanStateLoadSuccessImplCopyWith(
          _$ValidateLoanStateLoadSuccessImpl value,
          $Res Function(_$ValidateLoanStateLoadSuccessImpl) then) =
      __$$ValidateLoanStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ValidateLoanResponseEntities validateLoanResponseEntities});
}

/// @nodoc
class __$$ValidateLoanStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$ValidateLoanStateCopyWithImpl<$Res,
        _$ValidateLoanStateLoadSuccessImpl>
    implements _$$ValidateLoanStateLoadSuccessImplCopyWith<$Res> {
  __$$ValidateLoanStateLoadSuccessImplCopyWithImpl(
      _$ValidateLoanStateLoadSuccessImpl _value,
      $Res Function(_$ValidateLoanStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validateLoanResponseEntities = null,
  }) {
    return _then(_$ValidateLoanStateLoadSuccessImpl(
      null == validateLoanResponseEntities
          ? _value.validateLoanResponseEntities
          : validateLoanResponseEntities // ignore: cast_nullable_to_non_nullable
              as ValidateLoanResponseEntities,
    ));
  }
}

/// @nodoc

class _$ValidateLoanStateLoadSuccessImpl
    implements _ValidateLoanStateLoadSuccess {
  const _$ValidateLoanStateLoadSuccessImpl(this.validateLoanResponseEntities);

  @override
  final ValidateLoanResponseEntities validateLoanResponseEntities;

  @override
  String toString() {
    return 'ValidateLoanState.loadSuccess(validateLoanResponseEntities: $validateLoanResponseEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateLoanStateLoadSuccessImpl &&
            (identical(other.validateLoanResponseEntities,
                    validateLoanResponseEntities) ||
                other.validateLoanResponseEntities ==
                    validateLoanResponseEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validateLoanResponseEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateLoanStateLoadSuccessImplCopyWith<
          _$ValidateLoanStateLoadSuccessImpl>
      get copyWith => __$$ValidateLoanStateLoadSuccessImplCopyWithImpl<
          _$ValidateLoanStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            ValidateLoanResponseEntities validateLoanResponseEntities)
        loadSuccess,
  }) {
    return loadSuccess(validateLoanResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            ValidateLoanResponseEntities validateLoanResponseEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(validateLoanResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(ValidateLoanResponseEntities validateLoanResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(validateLoanResponseEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidateLoanStateInitial value) initial,
    required TResult Function(_ValidateLoanStateLoadFailure value) loadFailure,
    required TResult Function(ValidateLoanStateLoading value) loading,
    required TResult Function(_ValidateLoanStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidateLoanStateInitial value)? initial,
    TResult? Function(_ValidateLoanStateLoadFailure value)? loadFailure,
    TResult? Function(ValidateLoanStateLoading value)? loading,
    TResult? Function(_ValidateLoanStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidateLoanStateInitial value)? initial,
    TResult Function(_ValidateLoanStateLoadFailure value)? loadFailure,
    TResult Function(ValidateLoanStateLoading value)? loading,
    TResult Function(_ValidateLoanStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ValidateLoanStateLoadSuccess implements ValidateLoanState {
  const factory _ValidateLoanStateLoadSuccess(
          final ValidateLoanResponseEntities validateLoanResponseEntities) =
      _$ValidateLoanStateLoadSuccessImpl;

  ValidateLoanResponseEntities get validateLoanResponseEntities;
  @JsonKey(ignore: true)
  _$$ValidateLoanStateLoadSuccessImplCopyWith<
          _$ValidateLoanStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
