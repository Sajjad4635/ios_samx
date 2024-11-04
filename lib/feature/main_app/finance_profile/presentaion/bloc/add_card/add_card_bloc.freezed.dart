// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddCardEvent {
  AddCardParam get addCardParam => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCardParam addCardParam) addCardEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCardParam addCardParam)? addCardEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCardParam addCardParam)? addCardEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCardEventCalled value) addCardEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCardEventCalled value)? addCardEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCardEventCalled value)? addCardEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCardEventCopyWith<AddCardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCardEventCopyWith<$Res> {
  factory $AddCardEventCopyWith(
          AddCardEvent value, $Res Function(AddCardEvent) then) =
      _$AddCardEventCopyWithImpl<$Res, AddCardEvent>;
  @useResult
  $Res call({AddCardParam addCardParam});
}

/// @nodoc
class _$AddCardEventCopyWithImpl<$Res, $Val extends AddCardEvent>
    implements $AddCardEventCopyWith<$Res> {
  _$AddCardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addCardParam = null,
  }) {
    return _then(_value.copyWith(
      addCardParam: null == addCardParam
          ? _value.addCardParam
          : addCardParam // ignore: cast_nullable_to_non_nullable
              as AddCardParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCardEventCalledImplCopyWith<$Res>
    implements $AddCardEventCopyWith<$Res> {
  factory _$$AddCardEventCalledImplCopyWith(_$AddCardEventCalledImpl value,
          $Res Function(_$AddCardEventCalledImpl) then) =
      __$$AddCardEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddCardParam addCardParam});
}

/// @nodoc
class __$$AddCardEventCalledImplCopyWithImpl<$Res>
    extends _$AddCardEventCopyWithImpl<$Res, _$AddCardEventCalledImpl>
    implements _$$AddCardEventCalledImplCopyWith<$Res> {
  __$$AddCardEventCalledImplCopyWithImpl(_$AddCardEventCalledImpl _value,
      $Res Function(_$AddCardEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addCardParam = null,
  }) {
    return _then(_$AddCardEventCalledImpl(
      addCardParam: null == addCardParam
          ? _value.addCardParam
          : addCardParam // ignore: cast_nullable_to_non_nullable
              as AddCardParam,
    ));
  }
}

/// @nodoc

class _$AddCardEventCalledImpl implements _AddCardEventCalled {
  const _$AddCardEventCalledImpl({required this.addCardParam});

  @override
  final AddCardParam addCardParam;

  @override
  String toString() {
    return 'AddCardEvent.addCardEventCalled(addCardParam: $addCardParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCardEventCalledImpl &&
            (identical(other.addCardParam, addCardParam) ||
                other.addCardParam == addCardParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addCardParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCardEventCalledImplCopyWith<_$AddCardEventCalledImpl> get copyWith =>
      __$$AddCardEventCalledImplCopyWithImpl<_$AddCardEventCalledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddCardParam addCardParam) addCardEventCalled,
  }) {
    return addCardEventCalled(addCardParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddCardParam addCardParam)? addCardEventCalled,
  }) {
    return addCardEventCalled?.call(addCardParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddCardParam addCardParam)? addCardEventCalled,
    required TResult orElse(),
  }) {
    if (addCardEventCalled != null) {
      return addCardEventCalled(addCardParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCardEventCalled value) addCardEventCalled,
  }) {
    return addCardEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCardEventCalled value)? addCardEventCalled,
  }) {
    return addCardEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCardEventCalled value)? addCardEventCalled,
    required TResult orElse(),
  }) {
    if (addCardEventCalled != null) {
      return addCardEventCalled(this);
    }
    return orElse();
  }
}

abstract class _AddCardEventCalled implements AddCardEvent {
  const factory _AddCardEventCalled(
      {required final AddCardParam addCardParam}) = _$AddCardEventCalledImpl;

  @override
  AddCardParam get addCardParam;
  @override
  @JsonKey(ignore: true)
  _$$AddCardEventCalledImplCopyWith<_$AddCardEventCalledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AddCardEntities addCardEntities) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(AddCardEntities addCardEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AddCardEntities addCardEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCardStateInitial value) initial,
    required TResult Function(_AddCardStateLoadFailure value) loadFailure,
    required TResult Function(AddCardStateLoading value) loading,
    required TResult Function(_AddCardStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCardStateInitial value)? initial,
    TResult? Function(_AddCardStateLoadFailure value)? loadFailure,
    TResult? Function(AddCardStateLoading value)? loading,
    TResult? Function(_AddCardStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCardStateInitial value)? initial,
    TResult Function(_AddCardStateLoadFailure value)? loadFailure,
    TResult Function(AddCardStateLoading value)? loading,
    TResult Function(_AddCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCardStateCopyWith<$Res> {
  factory $AddCardStateCopyWith(
          AddCardState value, $Res Function(AddCardState) then) =
      _$AddCardStateCopyWithImpl<$Res, AddCardState>;
}

/// @nodoc
class _$AddCardStateCopyWithImpl<$Res, $Val extends AddCardState>
    implements $AddCardStateCopyWith<$Res> {
  _$AddCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddCardStateInitialImplCopyWith<$Res> {
  factory _$$AddCardStateInitialImplCopyWith(_$AddCardStateInitialImpl value,
          $Res Function(_$AddCardStateInitialImpl) then) =
      __$$AddCardStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddCardStateInitialImplCopyWithImpl<$Res>
    extends _$AddCardStateCopyWithImpl<$Res, _$AddCardStateInitialImpl>
    implements _$$AddCardStateInitialImplCopyWith<$Res> {
  __$$AddCardStateInitialImplCopyWithImpl(_$AddCardStateInitialImpl _value,
      $Res Function(_$AddCardStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddCardStateInitialImpl implements _AddCardStateInitial {
  const _$AddCardStateInitialImpl();

  @override
  String toString() {
    return 'AddCardState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCardStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AddCardEntities addCardEntities) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(AddCardEntities addCardEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AddCardEntities addCardEntities)? loadSuccess,
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
    required TResult Function(_AddCardStateInitial value) initial,
    required TResult Function(_AddCardStateLoadFailure value) loadFailure,
    required TResult Function(AddCardStateLoading value) loading,
    required TResult Function(_AddCardStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCardStateInitial value)? initial,
    TResult? Function(_AddCardStateLoadFailure value)? loadFailure,
    TResult? Function(AddCardStateLoading value)? loading,
    TResult? Function(_AddCardStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCardStateInitial value)? initial,
    TResult Function(_AddCardStateLoadFailure value)? loadFailure,
    TResult Function(AddCardStateLoading value)? loading,
    TResult Function(_AddCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AddCardStateInitial implements AddCardState {
  const factory _AddCardStateInitial() = _$AddCardStateInitialImpl;
}

/// @nodoc
abstract class _$$AddCardStateLoadFailureImplCopyWith<$Res> {
  factory _$$AddCardStateLoadFailureImplCopyWith(
          _$AddCardStateLoadFailureImpl value,
          $Res Function(_$AddCardStateLoadFailureImpl) then) =
      __$$AddCardStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$AddCardStateLoadFailureImplCopyWithImpl<$Res>
    extends _$AddCardStateCopyWithImpl<$Res, _$AddCardStateLoadFailureImpl>
    implements _$$AddCardStateLoadFailureImplCopyWith<$Res> {
  __$$AddCardStateLoadFailureImplCopyWithImpl(
      _$AddCardStateLoadFailureImpl _value,
      $Res Function(_$AddCardStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$AddCardStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$AddCardStateLoadFailureImpl implements _AddCardStateLoadFailure {
  const _$AddCardStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AddCardState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCardStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCardStateLoadFailureImplCopyWith<_$AddCardStateLoadFailureImpl>
      get copyWith => __$$AddCardStateLoadFailureImplCopyWithImpl<
          _$AddCardStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AddCardEntities addCardEntities) loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(AddCardEntities addCardEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AddCardEntities addCardEntities)? loadSuccess,
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
    required TResult Function(_AddCardStateInitial value) initial,
    required TResult Function(_AddCardStateLoadFailure value) loadFailure,
    required TResult Function(AddCardStateLoading value) loading,
    required TResult Function(_AddCardStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCardStateInitial value)? initial,
    TResult? Function(_AddCardStateLoadFailure value)? loadFailure,
    TResult? Function(AddCardStateLoading value)? loading,
    TResult? Function(_AddCardStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCardStateInitial value)? initial,
    TResult Function(_AddCardStateLoadFailure value)? loadFailure,
    TResult Function(AddCardStateLoading value)? loading,
    TResult Function(_AddCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _AddCardStateLoadFailure implements AddCardState {
  const factory _AddCardStateLoadFailure(final Failure failure) =
      _$AddCardStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$AddCardStateLoadFailureImplCopyWith<_$AddCardStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCardStateLoadingImplCopyWith<$Res> {
  factory _$$AddCardStateLoadingImplCopyWith(_$AddCardStateLoadingImpl value,
          $Res Function(_$AddCardStateLoadingImpl) then) =
      __$$AddCardStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddCardStateLoadingImplCopyWithImpl<$Res>
    extends _$AddCardStateCopyWithImpl<$Res, _$AddCardStateLoadingImpl>
    implements _$$AddCardStateLoadingImplCopyWith<$Res> {
  __$$AddCardStateLoadingImplCopyWithImpl(_$AddCardStateLoadingImpl _value,
      $Res Function(_$AddCardStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddCardStateLoadingImpl implements AddCardStateLoading {
  const _$AddCardStateLoadingImpl();

  @override
  String toString() {
    return 'AddCardState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCardStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AddCardEntities addCardEntities) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(AddCardEntities addCardEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AddCardEntities addCardEntities)? loadSuccess,
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
    required TResult Function(_AddCardStateInitial value) initial,
    required TResult Function(_AddCardStateLoadFailure value) loadFailure,
    required TResult Function(AddCardStateLoading value) loading,
    required TResult Function(_AddCardStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCardStateInitial value)? initial,
    TResult? Function(_AddCardStateLoadFailure value)? loadFailure,
    TResult? Function(AddCardStateLoading value)? loading,
    TResult? Function(_AddCardStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCardStateInitial value)? initial,
    TResult Function(_AddCardStateLoadFailure value)? loadFailure,
    TResult Function(AddCardStateLoading value)? loading,
    TResult Function(_AddCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AddCardStateLoading implements AddCardState {
  const factory AddCardStateLoading() = _$AddCardStateLoadingImpl;
}

/// @nodoc
abstract class _$$AddCardStateLoadSuccessImplCopyWith<$Res> {
  factory _$$AddCardStateLoadSuccessImplCopyWith(
          _$AddCardStateLoadSuccessImpl value,
          $Res Function(_$AddCardStateLoadSuccessImpl) then) =
      __$$AddCardStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddCardEntities addCardEntities});
}

/// @nodoc
class __$$AddCardStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$AddCardStateCopyWithImpl<$Res, _$AddCardStateLoadSuccessImpl>
    implements _$$AddCardStateLoadSuccessImplCopyWith<$Res> {
  __$$AddCardStateLoadSuccessImplCopyWithImpl(
      _$AddCardStateLoadSuccessImpl _value,
      $Res Function(_$AddCardStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addCardEntities = null,
  }) {
    return _then(_$AddCardStateLoadSuccessImpl(
      null == addCardEntities
          ? _value.addCardEntities
          : addCardEntities // ignore: cast_nullable_to_non_nullable
              as AddCardEntities,
    ));
  }
}

/// @nodoc

class _$AddCardStateLoadSuccessImpl implements _AddCardStateLoadSuccess {
  const _$AddCardStateLoadSuccessImpl(this.addCardEntities);

  @override
  final AddCardEntities addCardEntities;

  @override
  String toString() {
    return 'AddCardState.loadSuccess(addCardEntities: $addCardEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCardStateLoadSuccessImpl &&
            (identical(other.addCardEntities, addCardEntities) ||
                other.addCardEntities == addCardEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addCardEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCardStateLoadSuccessImplCopyWith<_$AddCardStateLoadSuccessImpl>
      get copyWith => __$$AddCardStateLoadSuccessImplCopyWithImpl<
          _$AddCardStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(AddCardEntities addCardEntities) loadSuccess,
  }) {
    return loadSuccess(addCardEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(AddCardEntities addCardEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(addCardEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(AddCardEntities addCardEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(addCardEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCardStateInitial value) initial,
    required TResult Function(_AddCardStateLoadFailure value) loadFailure,
    required TResult Function(AddCardStateLoading value) loading,
    required TResult Function(_AddCardStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCardStateInitial value)? initial,
    TResult? Function(_AddCardStateLoadFailure value)? loadFailure,
    TResult? Function(AddCardStateLoading value)? loading,
    TResult? Function(_AddCardStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCardStateInitial value)? initial,
    TResult Function(_AddCardStateLoadFailure value)? loadFailure,
    TResult Function(AddCardStateLoading value)? loading,
    TResult Function(_AddCardStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddCardStateLoadSuccess implements AddCardState {
  const factory _AddCardStateLoadSuccess(
      final AddCardEntities addCardEntities) = _$AddCardStateLoadSuccessImpl;

  AddCardEntities get addCardEntities;
  @JsonKey(ignore: true)
  _$$AddCardStateLoadSuccessImplCopyWith<_$AddCardStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
