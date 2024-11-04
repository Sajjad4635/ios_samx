// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpEvent {
  SignUpParams get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpParams param) signUpEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpParams param)? signUpEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpParams param)? signUpEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpEventCalled value) signUpEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpEventCalled value)? signUpEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpEventCalled value)? signUpEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpEventCopyWith<SignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
  @useResult
  $Res call({SignUpParams param});
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

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
              as SignUpParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpEventCalledImplCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory _$$SignUpEventCalledImplCopyWith(_$SignUpEventCalledImpl value,
          $Res Function(_$SignUpEventCalledImpl) then) =
      __$$SignUpEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignUpParams param});
}

/// @nodoc
class __$$SignUpEventCalledImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpEventCalledImpl>
    implements _$$SignUpEventCalledImplCopyWith<$Res> {
  __$$SignUpEventCalledImplCopyWithImpl(_$SignUpEventCalledImpl _value,
      $Res Function(_$SignUpEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$SignUpEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as SignUpParams,
    ));
  }
}

/// @nodoc

class _$SignUpEventCalledImpl implements _SignUpEventCalled {
  const _$SignUpEventCalledImpl(this.param);

  @override
  final SignUpParams param;

  @override
  String toString() {
    return 'SignUpEvent.signUpEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventCalledImplCopyWith<_$SignUpEventCalledImpl> get copyWith =>
      __$$SignUpEventCalledImplCopyWithImpl<_$SignUpEventCalledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpParams param) signUpEventCalled,
  }) {
    return signUpEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpParams param)? signUpEventCalled,
  }) {
    return signUpEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpParams param)? signUpEventCalled,
    required TResult orElse(),
  }) {
    if (signUpEventCalled != null) {
      return signUpEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpEventCalled value) signUpEventCalled,
  }) {
    return signUpEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpEventCalled value)? signUpEventCalled,
  }) {
    return signUpEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpEventCalled value)? signUpEventCalled,
    required TResult orElse(),
  }) {
    if (signUpEventCalled != null) {
      return signUpEventCalled(this);
    }
    return orElse();
  }
}

abstract class _SignUpEventCalled implements SignUpEvent {
  const factory _SignUpEventCalled(final SignUpParams param) =
      _$SignUpEventCalledImpl;

  @override
  SignUpParams get param;
  @override
  @JsonKey(ignore: true)
  _$$SignUpEventCalledImplCopyWith<_$SignUpEventCalledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SignUpEntities signUpEntities) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SignUpEntities signUpEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SignUpEntities signUpEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpStateInitial value) initial,
    required TResult Function(_SignUpStateLoadFailure value) loadFailure,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(_SignUpStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpStateInitial value)? initial,
    TResult? Function(_SignUpStateLoadFailure value)? loadFailure,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(_SignUpStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpStateInitial value)? initial,
    TResult Function(_SignUpStateLoadFailure value)? loadFailure,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(_SignUpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpStateInitialImplCopyWith<$Res> {
  factory _$$SignUpStateInitialImplCopyWith(_$SignUpStateInitialImpl value,
          $Res Function(_$SignUpStateInitialImpl) then) =
      __$$SignUpStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateInitialImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateInitialImpl>
    implements _$$SignUpStateInitialImplCopyWith<$Res> {
  __$$SignUpStateInitialImplCopyWithImpl(_$SignUpStateInitialImpl _value,
      $Res Function(_$SignUpStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpStateInitialImpl implements _SignUpStateInitial {
  const _$SignUpStateInitialImpl();

  @override
  String toString() {
    return 'SignUpState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SignUpEntities signUpEntities) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SignUpEntities signUpEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SignUpEntities signUpEntities)? loadSuccess,
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
    required TResult Function(_SignUpStateInitial value) initial,
    required TResult Function(_SignUpStateLoadFailure value) loadFailure,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(_SignUpStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpStateInitial value)? initial,
    TResult? Function(_SignUpStateLoadFailure value)? loadFailure,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(_SignUpStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpStateInitial value)? initial,
    TResult Function(_SignUpStateLoadFailure value)? loadFailure,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(_SignUpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SignUpStateInitial implements SignUpState {
  const factory _SignUpStateInitial() = _$SignUpStateInitialImpl;
}

/// @nodoc
abstract class _$$SignUpStateLoadFailureImplCopyWith<$Res> {
  factory _$$SignUpStateLoadFailureImplCopyWith(
          _$SignUpStateLoadFailureImpl value,
          $Res Function(_$SignUpStateLoadFailureImpl) then) =
      __$$SignUpStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$SignUpStateLoadFailureImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateLoadFailureImpl>
    implements _$$SignUpStateLoadFailureImplCopyWith<$Res> {
  __$$SignUpStateLoadFailureImplCopyWithImpl(
      _$SignUpStateLoadFailureImpl _value,
      $Res Function(_$SignUpStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$SignUpStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$SignUpStateLoadFailureImpl implements _SignUpStateLoadFailure {
  const _$SignUpStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SignUpState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateLoadFailureImplCopyWith<_$SignUpStateLoadFailureImpl>
      get copyWith => __$$SignUpStateLoadFailureImplCopyWithImpl<
          _$SignUpStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SignUpEntities signUpEntities) loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SignUpEntities signUpEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SignUpEntities signUpEntities)? loadSuccess,
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
    required TResult Function(_SignUpStateInitial value) initial,
    required TResult Function(_SignUpStateLoadFailure value) loadFailure,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(_SignUpStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpStateInitial value)? initial,
    TResult? Function(_SignUpStateLoadFailure value)? loadFailure,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(_SignUpStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpStateInitial value)? initial,
    TResult Function(_SignUpStateLoadFailure value)? loadFailure,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(_SignUpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _SignUpStateLoadFailure implements SignUpState {
  const factory _SignUpStateLoadFailure(final Failure failure) =
      _$SignUpStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$SignUpStateLoadFailureImplCopyWith<_$SignUpStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpStateLoadingImplCopyWith<$Res> {
  factory _$$SignUpStateLoadingImplCopyWith(_$SignUpStateLoadingImpl value,
          $Res Function(_$SignUpStateLoadingImpl) then) =
      __$$SignUpStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateLoadingImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateLoadingImpl>
    implements _$$SignUpStateLoadingImplCopyWith<$Res> {
  __$$SignUpStateLoadingImplCopyWithImpl(_$SignUpStateLoadingImpl _value,
      $Res Function(_$SignUpStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpStateLoadingImpl implements SignUpStateLoading {
  const _$SignUpStateLoadingImpl();

  @override
  String toString() {
    return 'SignUpState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SignUpEntities signUpEntities) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SignUpEntities signUpEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SignUpEntities signUpEntities)? loadSuccess,
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
    required TResult Function(_SignUpStateInitial value) initial,
    required TResult Function(_SignUpStateLoadFailure value) loadFailure,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(_SignUpStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpStateInitial value)? initial,
    TResult? Function(_SignUpStateLoadFailure value)? loadFailure,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(_SignUpStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpStateInitial value)? initial,
    TResult Function(_SignUpStateLoadFailure value)? loadFailure,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(_SignUpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignUpStateLoading implements SignUpState {
  const factory SignUpStateLoading() = _$SignUpStateLoadingImpl;
}

/// @nodoc
abstract class _$$SignUpStateLoadSuccessImplCopyWith<$Res> {
  factory _$$SignUpStateLoadSuccessImplCopyWith(
          _$SignUpStateLoadSuccessImpl value,
          $Res Function(_$SignUpStateLoadSuccessImpl) then) =
      __$$SignUpStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpEntities signUpEntities});
}

/// @nodoc
class __$$SignUpStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateLoadSuccessImpl>
    implements _$$SignUpStateLoadSuccessImplCopyWith<$Res> {
  __$$SignUpStateLoadSuccessImplCopyWithImpl(
      _$SignUpStateLoadSuccessImpl _value,
      $Res Function(_$SignUpStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpEntities = null,
  }) {
    return _then(_$SignUpStateLoadSuccessImpl(
      null == signUpEntities
          ? _value.signUpEntities
          : signUpEntities // ignore: cast_nullable_to_non_nullable
              as SignUpEntities,
    ));
  }
}

/// @nodoc

class _$SignUpStateLoadSuccessImpl implements _SignUpStateLoadSuccess {
  const _$SignUpStateLoadSuccessImpl(this.signUpEntities);

  @override
  final SignUpEntities signUpEntities;

  @override
  String toString() {
    return 'SignUpState.loadSuccess(signUpEntities: $signUpEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateLoadSuccessImpl &&
            (identical(other.signUpEntities, signUpEntities) ||
                other.signUpEntities == signUpEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateLoadSuccessImplCopyWith<_$SignUpStateLoadSuccessImpl>
      get copyWith => __$$SignUpStateLoadSuccessImplCopyWithImpl<
          _$SignUpStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(SignUpEntities signUpEntities) loadSuccess,
  }) {
    return loadSuccess(signUpEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SignUpEntities signUpEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(signUpEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SignUpEntities signUpEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(signUpEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpStateInitial value) initial,
    required TResult Function(_SignUpStateLoadFailure value) loadFailure,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(_SignUpStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpStateInitial value)? initial,
    TResult? Function(_SignUpStateLoadFailure value)? loadFailure,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(_SignUpStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpStateInitial value)? initial,
    TResult Function(_SignUpStateLoadFailure value)? loadFailure,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(_SignUpStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _SignUpStateLoadSuccess implements SignUpState {
  const factory _SignUpStateLoadSuccess(final SignUpEntities signUpEntities) =
      _$SignUpStateLoadSuccessImpl;

  SignUpEntities get signUpEntities;
  @JsonKey(ignore: true)
  _$$SignUpStateLoadSuccessImplCopyWith<_$SignUpStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
