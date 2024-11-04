// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_money_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SavedMoneyEvent {
  SavedMoneyParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SavedMoneyParam param) saveMoneyEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SavedMoneyParam param)? saveMoneyEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SavedMoneyParam param)? saveMoneyEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SavedMoneyEventCalled value)
        saveMoneyEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SavedMoneyEventCalled value)? saveMoneyEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SavedMoneyEventCalled value)? saveMoneyEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavedMoneyEventCopyWith<SavedMoneyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedMoneyEventCopyWith<$Res> {
  factory $SavedMoneyEventCopyWith(
          SavedMoneyEvent value, $Res Function(SavedMoneyEvent) then) =
      _$SavedMoneyEventCopyWithImpl<$Res, SavedMoneyEvent>;
  @useResult
  $Res call({SavedMoneyParam param});
}

/// @nodoc
class _$SavedMoneyEventCopyWithImpl<$Res, $Val extends SavedMoneyEvent>
    implements $SavedMoneyEventCopyWith<$Res> {
  _$SavedMoneyEventCopyWithImpl(this._value, this._then);

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
              as SavedMoneyParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedMoneyEventCalledImplCopyWith<$Res>
    implements $SavedMoneyEventCopyWith<$Res> {
  factory _$$SavedMoneyEventCalledImplCopyWith(
          _$SavedMoneyEventCalledImpl value,
          $Res Function(_$SavedMoneyEventCalledImpl) then) =
      __$$SavedMoneyEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SavedMoneyParam param});
}

/// @nodoc
class __$$SavedMoneyEventCalledImplCopyWithImpl<$Res>
    extends _$SavedMoneyEventCopyWithImpl<$Res, _$SavedMoneyEventCalledImpl>
    implements _$$SavedMoneyEventCalledImplCopyWith<$Res> {
  __$$SavedMoneyEventCalledImplCopyWithImpl(_$SavedMoneyEventCalledImpl _value,
      $Res Function(_$SavedMoneyEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$SavedMoneyEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as SavedMoneyParam,
    ));
  }
}

/// @nodoc

class _$SavedMoneyEventCalledImpl implements _SavedMoneyEventCalled {
  const _$SavedMoneyEventCalledImpl(this.param);

  @override
  final SavedMoneyParam param;

  @override
  String toString() {
    return 'SavedMoneyEvent.saveMoneyEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedMoneyEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedMoneyEventCalledImplCopyWith<_$SavedMoneyEventCalledImpl>
      get copyWith => __$$SavedMoneyEventCalledImplCopyWithImpl<
          _$SavedMoneyEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SavedMoneyParam param) saveMoneyEventCalled,
  }) {
    return saveMoneyEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SavedMoneyParam param)? saveMoneyEventCalled,
  }) {
    return saveMoneyEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SavedMoneyParam param)? saveMoneyEventCalled,
    required TResult orElse(),
  }) {
    if (saveMoneyEventCalled != null) {
      return saveMoneyEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SavedMoneyEventCalled value)
        saveMoneyEventCalled,
  }) {
    return saveMoneyEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SavedMoneyEventCalled value)? saveMoneyEventCalled,
  }) {
    return saveMoneyEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SavedMoneyEventCalled value)? saveMoneyEventCalled,
    required TResult orElse(),
  }) {
    if (saveMoneyEventCalled != null) {
      return saveMoneyEventCalled(this);
    }
    return orElse();
  }
}

abstract class _SavedMoneyEventCalled implements SavedMoneyEvent {
  const factory _SavedMoneyEventCalled(final SavedMoneyParam param) =
      _$SavedMoneyEventCalledImpl;

  @override
  SavedMoneyParam get param;
  @override
  @JsonKey(ignore: true)
  _$$SavedMoneyEventCalledImplCopyWith<_$SavedMoneyEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SavedMoneyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            SavedMoneyResponseEntities savedMoneyResponseEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SavedMoneyResponseEntities savedMoneyResponseEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SavedMoneyResponseEntities savedMoneyResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SavedMoneyStateInitial value) initial,
    required TResult Function(_SavedMoneyStateLoadFailure value) loadFailure,
    required TResult Function(SavedMoneyStateLoading value) loading,
    required TResult Function(_SavedMoneyStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SavedMoneyStateInitial value)? initial,
    TResult? Function(_SavedMoneyStateLoadFailure value)? loadFailure,
    TResult? Function(SavedMoneyStateLoading value)? loading,
    TResult? Function(_SavedMoneyStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SavedMoneyStateInitial value)? initial,
    TResult Function(_SavedMoneyStateLoadFailure value)? loadFailure,
    TResult Function(SavedMoneyStateLoading value)? loading,
    TResult Function(_SavedMoneyStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedMoneyStateCopyWith<$Res> {
  factory $SavedMoneyStateCopyWith(
          SavedMoneyState value, $Res Function(SavedMoneyState) then) =
      _$SavedMoneyStateCopyWithImpl<$Res, SavedMoneyState>;
}

/// @nodoc
class _$SavedMoneyStateCopyWithImpl<$Res, $Val extends SavedMoneyState>
    implements $SavedMoneyStateCopyWith<$Res> {
  _$SavedMoneyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SavedMoneyStateInitialImplCopyWith<$Res> {
  factory _$$SavedMoneyStateInitialImplCopyWith(
          _$SavedMoneyStateInitialImpl value,
          $Res Function(_$SavedMoneyStateInitialImpl) then) =
      __$$SavedMoneyStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedMoneyStateInitialImplCopyWithImpl<$Res>
    extends _$SavedMoneyStateCopyWithImpl<$Res, _$SavedMoneyStateInitialImpl>
    implements _$$SavedMoneyStateInitialImplCopyWith<$Res> {
  __$$SavedMoneyStateInitialImplCopyWithImpl(
      _$SavedMoneyStateInitialImpl _value,
      $Res Function(_$SavedMoneyStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedMoneyStateInitialImpl implements _SavedMoneyStateInitial {
  const _$SavedMoneyStateInitialImpl();

  @override
  String toString() {
    return 'SavedMoneyState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedMoneyStateInitialImpl);
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
            SavedMoneyResponseEntities savedMoneyResponseEntities)
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
    TResult? Function(SavedMoneyResponseEntities savedMoneyResponseEntities)?
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
    TResult Function(SavedMoneyResponseEntities savedMoneyResponseEntities)?
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
    required TResult Function(_SavedMoneyStateInitial value) initial,
    required TResult Function(_SavedMoneyStateLoadFailure value) loadFailure,
    required TResult Function(SavedMoneyStateLoading value) loading,
    required TResult Function(_SavedMoneyStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SavedMoneyStateInitial value)? initial,
    TResult? Function(_SavedMoneyStateLoadFailure value)? loadFailure,
    TResult? Function(SavedMoneyStateLoading value)? loading,
    TResult? Function(_SavedMoneyStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SavedMoneyStateInitial value)? initial,
    TResult Function(_SavedMoneyStateLoadFailure value)? loadFailure,
    TResult Function(SavedMoneyStateLoading value)? loading,
    TResult Function(_SavedMoneyStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SavedMoneyStateInitial implements SavedMoneyState {
  const factory _SavedMoneyStateInitial() = _$SavedMoneyStateInitialImpl;
}

/// @nodoc
abstract class _$$SavedMoneyStateLoadFailureImplCopyWith<$Res> {
  factory _$$SavedMoneyStateLoadFailureImplCopyWith(
          _$SavedMoneyStateLoadFailureImpl value,
          $Res Function(_$SavedMoneyStateLoadFailureImpl) then) =
      __$$SavedMoneyStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$SavedMoneyStateLoadFailureImplCopyWithImpl<$Res>
    extends _$SavedMoneyStateCopyWithImpl<$Res,
        _$SavedMoneyStateLoadFailureImpl>
    implements _$$SavedMoneyStateLoadFailureImplCopyWith<$Res> {
  __$$SavedMoneyStateLoadFailureImplCopyWithImpl(
      _$SavedMoneyStateLoadFailureImpl _value,
      $Res Function(_$SavedMoneyStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$SavedMoneyStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$SavedMoneyStateLoadFailureImpl implements _SavedMoneyStateLoadFailure {
  const _$SavedMoneyStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SavedMoneyState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedMoneyStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedMoneyStateLoadFailureImplCopyWith<_$SavedMoneyStateLoadFailureImpl>
      get copyWith => __$$SavedMoneyStateLoadFailureImplCopyWithImpl<
          _$SavedMoneyStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            SavedMoneyResponseEntities savedMoneyResponseEntities)
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
    TResult? Function(SavedMoneyResponseEntities savedMoneyResponseEntities)?
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
    TResult Function(SavedMoneyResponseEntities savedMoneyResponseEntities)?
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
    required TResult Function(_SavedMoneyStateInitial value) initial,
    required TResult Function(_SavedMoneyStateLoadFailure value) loadFailure,
    required TResult Function(SavedMoneyStateLoading value) loading,
    required TResult Function(_SavedMoneyStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SavedMoneyStateInitial value)? initial,
    TResult? Function(_SavedMoneyStateLoadFailure value)? loadFailure,
    TResult? Function(SavedMoneyStateLoading value)? loading,
    TResult? Function(_SavedMoneyStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SavedMoneyStateInitial value)? initial,
    TResult Function(_SavedMoneyStateLoadFailure value)? loadFailure,
    TResult Function(SavedMoneyStateLoading value)? loading,
    TResult Function(_SavedMoneyStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _SavedMoneyStateLoadFailure implements SavedMoneyState {
  const factory _SavedMoneyStateLoadFailure(final Failure failure) =
      _$SavedMoneyStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$SavedMoneyStateLoadFailureImplCopyWith<_$SavedMoneyStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedMoneyStateLoadingImplCopyWith<$Res> {
  factory _$$SavedMoneyStateLoadingImplCopyWith(
          _$SavedMoneyStateLoadingImpl value,
          $Res Function(_$SavedMoneyStateLoadingImpl) then) =
      __$$SavedMoneyStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedMoneyStateLoadingImplCopyWithImpl<$Res>
    extends _$SavedMoneyStateCopyWithImpl<$Res, _$SavedMoneyStateLoadingImpl>
    implements _$$SavedMoneyStateLoadingImplCopyWith<$Res> {
  __$$SavedMoneyStateLoadingImplCopyWithImpl(
      _$SavedMoneyStateLoadingImpl _value,
      $Res Function(_$SavedMoneyStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedMoneyStateLoadingImpl implements SavedMoneyStateLoading {
  const _$SavedMoneyStateLoadingImpl();

  @override
  String toString() {
    return 'SavedMoneyState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedMoneyStateLoadingImpl);
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
            SavedMoneyResponseEntities savedMoneyResponseEntities)
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
    TResult? Function(SavedMoneyResponseEntities savedMoneyResponseEntities)?
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
    TResult Function(SavedMoneyResponseEntities savedMoneyResponseEntities)?
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
    required TResult Function(_SavedMoneyStateInitial value) initial,
    required TResult Function(_SavedMoneyStateLoadFailure value) loadFailure,
    required TResult Function(SavedMoneyStateLoading value) loading,
    required TResult Function(_SavedMoneyStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SavedMoneyStateInitial value)? initial,
    TResult? Function(_SavedMoneyStateLoadFailure value)? loadFailure,
    TResult? Function(SavedMoneyStateLoading value)? loading,
    TResult? Function(_SavedMoneyStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SavedMoneyStateInitial value)? initial,
    TResult Function(_SavedMoneyStateLoadFailure value)? loadFailure,
    TResult Function(SavedMoneyStateLoading value)? loading,
    TResult Function(_SavedMoneyStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SavedMoneyStateLoading implements SavedMoneyState {
  const factory SavedMoneyStateLoading() = _$SavedMoneyStateLoadingImpl;
}

/// @nodoc
abstract class _$$SavedMoneyStateLoadSuccessImplCopyWith<$Res> {
  factory _$$SavedMoneyStateLoadSuccessImplCopyWith(
          _$SavedMoneyStateLoadSuccessImpl value,
          $Res Function(_$SavedMoneyStateLoadSuccessImpl) then) =
      __$$SavedMoneyStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SavedMoneyResponseEntities savedMoneyResponseEntities});
}

/// @nodoc
class __$$SavedMoneyStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$SavedMoneyStateCopyWithImpl<$Res,
        _$SavedMoneyStateLoadSuccessImpl>
    implements _$$SavedMoneyStateLoadSuccessImplCopyWith<$Res> {
  __$$SavedMoneyStateLoadSuccessImplCopyWithImpl(
      _$SavedMoneyStateLoadSuccessImpl _value,
      $Res Function(_$SavedMoneyStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedMoneyResponseEntities = null,
  }) {
    return _then(_$SavedMoneyStateLoadSuccessImpl(
      null == savedMoneyResponseEntities
          ? _value.savedMoneyResponseEntities
          : savedMoneyResponseEntities // ignore: cast_nullable_to_non_nullable
              as SavedMoneyResponseEntities,
    ));
  }
}

/// @nodoc

class _$SavedMoneyStateLoadSuccessImpl implements _SavedMoneyStateLoadSuccess {
  const _$SavedMoneyStateLoadSuccessImpl(this.savedMoneyResponseEntities);

  @override
  final SavedMoneyResponseEntities savedMoneyResponseEntities;

  @override
  String toString() {
    return 'SavedMoneyState.loadSuccess(savedMoneyResponseEntities: $savedMoneyResponseEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedMoneyStateLoadSuccessImpl &&
            (identical(other.savedMoneyResponseEntities,
                    savedMoneyResponseEntities) ||
                other.savedMoneyResponseEntities ==
                    savedMoneyResponseEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, savedMoneyResponseEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedMoneyStateLoadSuccessImplCopyWith<_$SavedMoneyStateLoadSuccessImpl>
      get copyWith => __$$SavedMoneyStateLoadSuccessImplCopyWithImpl<
          _$SavedMoneyStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            SavedMoneyResponseEntities savedMoneyResponseEntities)
        loadSuccess,
  }) {
    return loadSuccess(savedMoneyResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(SavedMoneyResponseEntities savedMoneyResponseEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(savedMoneyResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(SavedMoneyResponseEntities savedMoneyResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(savedMoneyResponseEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SavedMoneyStateInitial value) initial,
    required TResult Function(_SavedMoneyStateLoadFailure value) loadFailure,
    required TResult Function(SavedMoneyStateLoading value) loading,
    required TResult Function(_SavedMoneyStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SavedMoneyStateInitial value)? initial,
    TResult? Function(_SavedMoneyStateLoadFailure value)? loadFailure,
    TResult? Function(SavedMoneyStateLoading value)? loading,
    TResult? Function(_SavedMoneyStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SavedMoneyStateInitial value)? initial,
    TResult Function(_SavedMoneyStateLoadFailure value)? loadFailure,
    TResult Function(SavedMoneyStateLoading value)? loading,
    TResult Function(_SavedMoneyStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _SavedMoneyStateLoadSuccess implements SavedMoneyState {
  const factory _SavedMoneyStateLoadSuccess(
          final SavedMoneyResponseEntities savedMoneyResponseEntities) =
      _$SavedMoneyStateLoadSuccessImpl;

  SavedMoneyResponseEntities get savedMoneyResponseEntities;
  @JsonKey(ignore: true)
  _$$SavedMoneyStateLoadSuccessImplCopyWith<_$SavedMoneyStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
