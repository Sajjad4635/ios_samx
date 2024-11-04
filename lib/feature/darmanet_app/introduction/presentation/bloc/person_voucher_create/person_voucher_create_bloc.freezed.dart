// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_voucher_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PersonVoucherCreateEvent {
  PersonVoucherCreateParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersonVoucherCreateParam param)
        personVoucherCreateEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PersonVoucherCreateParam param)?
        personVoucherCreateEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersonVoucherCreateParam param)?
        personVoucherCreateEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonVoucherCreateEventCalled value)
        personVoucherCreateEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonVoucherCreateEventCalled value)?
        personVoucherCreateEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonVoucherCreateEventCalled value)?
        personVoucherCreateEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonVoucherCreateEventCopyWith<PersonVoucherCreateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonVoucherCreateEventCopyWith<$Res> {
  factory $PersonVoucherCreateEventCopyWith(PersonVoucherCreateEvent value,
          $Res Function(PersonVoucherCreateEvent) then) =
      _$PersonVoucherCreateEventCopyWithImpl<$Res, PersonVoucherCreateEvent>;
  @useResult
  $Res call({PersonVoucherCreateParam param});
}

/// @nodoc
class _$PersonVoucherCreateEventCopyWithImpl<$Res,
        $Val extends PersonVoucherCreateEvent>
    implements $PersonVoucherCreateEventCopyWith<$Res> {
  _$PersonVoucherCreateEventCopyWithImpl(this._value, this._then);

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
              as PersonVoucherCreateParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonVoucherCreateEventCalledImplCopyWith<$Res>
    implements $PersonVoucherCreateEventCopyWith<$Res> {
  factory _$$PersonVoucherCreateEventCalledImplCopyWith(
          _$PersonVoucherCreateEventCalledImpl value,
          $Res Function(_$PersonVoucherCreateEventCalledImpl) then) =
      __$$PersonVoucherCreateEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PersonVoucherCreateParam param});
}

/// @nodoc
class __$$PersonVoucherCreateEventCalledImplCopyWithImpl<$Res>
    extends _$PersonVoucherCreateEventCopyWithImpl<$Res,
        _$PersonVoucherCreateEventCalledImpl>
    implements _$$PersonVoucherCreateEventCalledImplCopyWith<$Res> {
  __$$PersonVoucherCreateEventCalledImplCopyWithImpl(
      _$PersonVoucherCreateEventCalledImpl _value,
      $Res Function(_$PersonVoucherCreateEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$PersonVoucherCreateEventCalledImpl(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as PersonVoucherCreateParam,
    ));
  }
}

/// @nodoc

class _$PersonVoucherCreateEventCalledImpl
    implements _PersonVoucherCreateEventCalled {
  const _$PersonVoucherCreateEventCalledImpl({required this.param});

  @override
  final PersonVoucherCreateParam param;

  @override
  String toString() {
    return 'PersonVoucherCreateEvent.personVoucherCreateEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonVoucherCreateEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonVoucherCreateEventCalledImplCopyWith<
          _$PersonVoucherCreateEventCalledImpl>
      get copyWith => __$$PersonVoucherCreateEventCalledImplCopyWithImpl<
          _$PersonVoucherCreateEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersonVoucherCreateParam param)
        personVoucherCreateEventCalled,
  }) {
    return personVoucherCreateEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PersonVoucherCreateParam param)?
        personVoucherCreateEventCalled,
  }) {
    return personVoucherCreateEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersonVoucherCreateParam param)?
        personVoucherCreateEventCalled,
    required TResult orElse(),
  }) {
    if (personVoucherCreateEventCalled != null) {
      return personVoucherCreateEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonVoucherCreateEventCalled value)
        personVoucherCreateEventCalled,
  }) {
    return personVoucherCreateEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonVoucherCreateEventCalled value)?
        personVoucherCreateEventCalled,
  }) {
    return personVoucherCreateEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonVoucherCreateEventCalled value)?
        personVoucherCreateEventCalled,
    required TResult orElse(),
  }) {
    if (personVoucherCreateEventCalled != null) {
      return personVoucherCreateEventCalled(this);
    }
    return orElse();
  }
}

abstract class _PersonVoucherCreateEventCalled
    implements PersonVoucherCreateEvent {
  const factory _PersonVoucherCreateEventCalled(
          {required final PersonVoucherCreateParam param}) =
      _$PersonVoucherCreateEventCalledImpl;

  @override
  PersonVoucherCreateParam get param;
  @override
  @JsonKey(ignore: true)
  _$$PersonVoucherCreateEventCalledImplCopyWith<
          _$PersonVoucherCreateEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonVoucherCreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            PersonVoucherCreateEntities personVoucherCreateEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(PersonVoucherCreateEntities personVoucherCreateEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(PersonVoucherCreateEntities personVoucherCreateEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonVoucherCreateStateInitial value) initial,
    required TResult Function(_PersonVoucherCreateStateLoadFailure value)
        loadFailure,
    required TResult Function(PersonVoucherCreateStateLoading value) loading,
    required TResult Function(_PersonVoucherCreateStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonVoucherCreateStateInitial value)? initial,
    TResult? Function(_PersonVoucherCreateStateLoadFailure value)? loadFailure,
    TResult? Function(PersonVoucherCreateStateLoading value)? loading,
    TResult? Function(_PersonVoucherCreateStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonVoucherCreateStateInitial value)? initial,
    TResult Function(_PersonVoucherCreateStateLoadFailure value)? loadFailure,
    TResult Function(PersonVoucherCreateStateLoading value)? loading,
    TResult Function(_PersonVoucherCreateStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonVoucherCreateStateCopyWith<$Res> {
  factory $PersonVoucherCreateStateCopyWith(PersonVoucherCreateState value,
          $Res Function(PersonVoucherCreateState) then) =
      _$PersonVoucherCreateStateCopyWithImpl<$Res, PersonVoucherCreateState>;
}

/// @nodoc
class _$PersonVoucherCreateStateCopyWithImpl<$Res,
        $Val extends PersonVoucherCreateState>
    implements $PersonVoucherCreateStateCopyWith<$Res> {
  _$PersonVoucherCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PersonVoucherCreateStateInitialImplCopyWith<$Res> {
  factory _$$PersonVoucherCreateStateInitialImplCopyWith(
          _$PersonVoucherCreateStateInitialImpl value,
          $Res Function(_$PersonVoucherCreateStateInitialImpl) then) =
      __$$PersonVoucherCreateStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PersonVoucherCreateStateInitialImplCopyWithImpl<$Res>
    extends _$PersonVoucherCreateStateCopyWithImpl<$Res,
        _$PersonVoucherCreateStateInitialImpl>
    implements _$$PersonVoucherCreateStateInitialImplCopyWith<$Res> {
  __$$PersonVoucherCreateStateInitialImplCopyWithImpl(
      _$PersonVoucherCreateStateInitialImpl _value,
      $Res Function(_$PersonVoucherCreateStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PersonVoucherCreateStateInitialImpl
    implements _PersonVoucherCreateStateInitial {
  const _$PersonVoucherCreateStateInitialImpl();

  @override
  String toString() {
    return 'PersonVoucherCreateState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonVoucherCreateStateInitialImpl);
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
            PersonVoucherCreateEntities personVoucherCreateEntities)
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
    TResult? Function(PersonVoucherCreateEntities personVoucherCreateEntities)?
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
    TResult Function(PersonVoucherCreateEntities personVoucherCreateEntities)?
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
    required TResult Function(_PersonVoucherCreateStateInitial value) initial,
    required TResult Function(_PersonVoucherCreateStateLoadFailure value)
        loadFailure,
    required TResult Function(PersonVoucherCreateStateLoading value) loading,
    required TResult Function(_PersonVoucherCreateStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonVoucherCreateStateInitial value)? initial,
    TResult? Function(_PersonVoucherCreateStateLoadFailure value)? loadFailure,
    TResult? Function(PersonVoucherCreateStateLoading value)? loading,
    TResult? Function(_PersonVoucherCreateStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonVoucherCreateStateInitial value)? initial,
    TResult Function(_PersonVoucherCreateStateLoadFailure value)? loadFailure,
    TResult Function(PersonVoucherCreateStateLoading value)? loading,
    TResult Function(_PersonVoucherCreateStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PersonVoucherCreateStateInitial
    implements PersonVoucherCreateState {
  const factory _PersonVoucherCreateStateInitial() =
      _$PersonVoucherCreateStateInitialImpl;
}

/// @nodoc
abstract class _$$PersonVoucherCreateStateLoadFailureImplCopyWith<$Res> {
  factory _$$PersonVoucherCreateStateLoadFailureImplCopyWith(
          _$PersonVoucherCreateStateLoadFailureImpl value,
          $Res Function(_$PersonVoucherCreateStateLoadFailureImpl) then) =
      __$$PersonVoucherCreateStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$PersonVoucherCreateStateLoadFailureImplCopyWithImpl<$Res>
    extends _$PersonVoucherCreateStateCopyWithImpl<$Res,
        _$PersonVoucherCreateStateLoadFailureImpl>
    implements _$$PersonVoucherCreateStateLoadFailureImplCopyWith<$Res> {
  __$$PersonVoucherCreateStateLoadFailureImplCopyWithImpl(
      _$PersonVoucherCreateStateLoadFailureImpl _value,
      $Res Function(_$PersonVoucherCreateStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$PersonVoucherCreateStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$PersonVoucherCreateStateLoadFailureImpl
    implements _PersonVoucherCreateStateLoadFailure {
  const _$PersonVoucherCreateStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PersonVoucherCreateState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonVoucherCreateStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonVoucherCreateStateLoadFailureImplCopyWith<
          _$PersonVoucherCreateStateLoadFailureImpl>
      get copyWith => __$$PersonVoucherCreateStateLoadFailureImplCopyWithImpl<
          _$PersonVoucherCreateStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            PersonVoucherCreateEntities personVoucherCreateEntities)
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
    TResult? Function(PersonVoucherCreateEntities personVoucherCreateEntities)?
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
    TResult Function(PersonVoucherCreateEntities personVoucherCreateEntities)?
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
    required TResult Function(_PersonVoucherCreateStateInitial value) initial,
    required TResult Function(_PersonVoucherCreateStateLoadFailure value)
        loadFailure,
    required TResult Function(PersonVoucherCreateStateLoading value) loading,
    required TResult Function(_PersonVoucherCreateStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonVoucherCreateStateInitial value)? initial,
    TResult? Function(_PersonVoucherCreateStateLoadFailure value)? loadFailure,
    TResult? Function(PersonVoucherCreateStateLoading value)? loading,
    TResult? Function(_PersonVoucherCreateStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonVoucherCreateStateInitial value)? initial,
    TResult Function(_PersonVoucherCreateStateLoadFailure value)? loadFailure,
    TResult Function(PersonVoucherCreateStateLoading value)? loading,
    TResult Function(_PersonVoucherCreateStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _PersonVoucherCreateStateLoadFailure
    implements PersonVoucherCreateState {
  const factory _PersonVoucherCreateStateLoadFailure(final Failure failure) =
      _$PersonVoucherCreateStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$PersonVoucherCreateStateLoadFailureImplCopyWith<
          _$PersonVoucherCreateStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonVoucherCreateStateLoadingImplCopyWith<$Res> {
  factory _$$PersonVoucherCreateStateLoadingImplCopyWith(
          _$PersonVoucherCreateStateLoadingImpl value,
          $Res Function(_$PersonVoucherCreateStateLoadingImpl) then) =
      __$$PersonVoucherCreateStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PersonVoucherCreateStateLoadingImplCopyWithImpl<$Res>
    extends _$PersonVoucherCreateStateCopyWithImpl<$Res,
        _$PersonVoucherCreateStateLoadingImpl>
    implements _$$PersonVoucherCreateStateLoadingImplCopyWith<$Res> {
  __$$PersonVoucherCreateStateLoadingImplCopyWithImpl(
      _$PersonVoucherCreateStateLoadingImpl _value,
      $Res Function(_$PersonVoucherCreateStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PersonVoucherCreateStateLoadingImpl
    implements PersonVoucherCreateStateLoading {
  const _$PersonVoucherCreateStateLoadingImpl();

  @override
  String toString() {
    return 'PersonVoucherCreateState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonVoucherCreateStateLoadingImpl);
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
            PersonVoucherCreateEntities personVoucherCreateEntities)
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
    TResult? Function(PersonVoucherCreateEntities personVoucherCreateEntities)?
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
    TResult Function(PersonVoucherCreateEntities personVoucherCreateEntities)?
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
    required TResult Function(_PersonVoucherCreateStateInitial value) initial,
    required TResult Function(_PersonVoucherCreateStateLoadFailure value)
        loadFailure,
    required TResult Function(PersonVoucherCreateStateLoading value) loading,
    required TResult Function(_PersonVoucherCreateStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonVoucherCreateStateInitial value)? initial,
    TResult? Function(_PersonVoucherCreateStateLoadFailure value)? loadFailure,
    TResult? Function(PersonVoucherCreateStateLoading value)? loading,
    TResult? Function(_PersonVoucherCreateStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonVoucherCreateStateInitial value)? initial,
    TResult Function(_PersonVoucherCreateStateLoadFailure value)? loadFailure,
    TResult Function(PersonVoucherCreateStateLoading value)? loading,
    TResult Function(_PersonVoucherCreateStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PersonVoucherCreateStateLoading
    implements PersonVoucherCreateState {
  const factory PersonVoucherCreateStateLoading() =
      _$PersonVoucherCreateStateLoadingImpl;
}

/// @nodoc
abstract class _$$PersonVoucherCreateStateLoadSuccessImplCopyWith<$Res> {
  factory _$$PersonVoucherCreateStateLoadSuccessImplCopyWith(
          _$PersonVoucherCreateStateLoadSuccessImpl value,
          $Res Function(_$PersonVoucherCreateStateLoadSuccessImpl) then) =
      __$$PersonVoucherCreateStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PersonVoucherCreateEntities personVoucherCreateEntities});
}

/// @nodoc
class __$$PersonVoucherCreateStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$PersonVoucherCreateStateCopyWithImpl<$Res,
        _$PersonVoucherCreateStateLoadSuccessImpl>
    implements _$$PersonVoucherCreateStateLoadSuccessImplCopyWith<$Res> {
  __$$PersonVoucherCreateStateLoadSuccessImplCopyWithImpl(
      _$PersonVoucherCreateStateLoadSuccessImpl _value,
      $Res Function(_$PersonVoucherCreateStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personVoucherCreateEntities = null,
  }) {
    return _then(_$PersonVoucherCreateStateLoadSuccessImpl(
      null == personVoucherCreateEntities
          ? _value.personVoucherCreateEntities
          : personVoucherCreateEntities // ignore: cast_nullable_to_non_nullable
              as PersonVoucherCreateEntities,
    ));
  }
}

/// @nodoc

class _$PersonVoucherCreateStateLoadSuccessImpl
    implements _PersonVoucherCreateStateLoadSuccess {
  const _$PersonVoucherCreateStateLoadSuccessImpl(
      this.personVoucherCreateEntities);

  @override
  final PersonVoucherCreateEntities personVoucherCreateEntities;

  @override
  String toString() {
    return 'PersonVoucherCreateState.loadSuccess(personVoucherCreateEntities: $personVoucherCreateEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonVoucherCreateStateLoadSuccessImpl &&
            (identical(other.personVoucherCreateEntities,
                    personVoucherCreateEntities) ||
                other.personVoucherCreateEntities ==
                    personVoucherCreateEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, personVoucherCreateEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonVoucherCreateStateLoadSuccessImplCopyWith<
          _$PersonVoucherCreateStateLoadSuccessImpl>
      get copyWith => __$$PersonVoucherCreateStateLoadSuccessImplCopyWithImpl<
          _$PersonVoucherCreateStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            PersonVoucherCreateEntities personVoucherCreateEntities)
        loadSuccess,
  }) {
    return loadSuccess(personVoucherCreateEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(PersonVoucherCreateEntities personVoucherCreateEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(personVoucherCreateEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(PersonVoucherCreateEntities personVoucherCreateEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(personVoucherCreateEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonVoucherCreateStateInitial value) initial,
    required TResult Function(_PersonVoucherCreateStateLoadFailure value)
        loadFailure,
    required TResult Function(PersonVoucherCreateStateLoading value) loading,
    required TResult Function(_PersonVoucherCreateStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonVoucherCreateStateInitial value)? initial,
    TResult? Function(_PersonVoucherCreateStateLoadFailure value)? loadFailure,
    TResult? Function(PersonVoucherCreateStateLoading value)? loading,
    TResult? Function(_PersonVoucherCreateStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonVoucherCreateStateInitial value)? initial,
    TResult Function(_PersonVoucherCreateStateLoadFailure value)? loadFailure,
    TResult Function(PersonVoucherCreateStateLoading value)? loading,
    TResult Function(_PersonVoucherCreateStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _PersonVoucherCreateStateLoadSuccess
    implements PersonVoucherCreateState {
  const factory _PersonVoucherCreateStateLoadSuccess(
          final PersonVoucherCreateEntities personVoucherCreateEntities) =
      _$PersonVoucherCreateStateLoadSuccessImpl;

  PersonVoucherCreateEntities get personVoucherCreateEntities;
  @JsonKey(ignore: true)
  _$$PersonVoucherCreateStateLoadSuccessImplCopyWith<
          _$PersonVoucherCreateStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
