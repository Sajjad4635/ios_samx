// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_withdraw_unit_linked_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateWithdrawEvent {
  CreateWithdrawUnitLinkedParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateWithdrawUnitLinkedParam param)
        createWithdrawEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateWithdrawUnitLinkedParam param)?
        createWithdrawEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateWithdrawUnitLinkedParam param)?
        createWithdrawEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWithdrawEventCalled value)
        createWithdrawEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWithdrawEventCalled value)?
        createWithdrawEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWithdrawEventCalled value)?
        createWithdrawEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateWithdrawEventCopyWith<CreateWithdrawEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWithdrawEventCopyWith<$Res> {
  factory $CreateWithdrawEventCopyWith(
          CreateWithdrawEvent value, $Res Function(CreateWithdrawEvent) then) =
      _$CreateWithdrawEventCopyWithImpl<$Res, CreateWithdrawEvent>;
  @useResult
  $Res call({CreateWithdrawUnitLinkedParam param});
}

/// @nodoc
class _$CreateWithdrawEventCopyWithImpl<$Res, $Val extends CreateWithdrawEvent>
    implements $CreateWithdrawEventCopyWith<$Res> {
  _$CreateWithdrawEventCopyWithImpl(this._value, this._then);

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
              as CreateWithdrawUnitLinkedParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateWithdrawEventCalledImplCopyWith<$Res>
    implements $CreateWithdrawEventCopyWith<$Res> {
  factory _$$CreateWithdrawEventCalledImplCopyWith(
          _$CreateWithdrawEventCalledImpl value,
          $Res Function(_$CreateWithdrawEventCalledImpl) then) =
      __$$CreateWithdrawEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateWithdrawUnitLinkedParam param});
}

/// @nodoc
class __$$CreateWithdrawEventCalledImplCopyWithImpl<$Res>
    extends _$CreateWithdrawEventCopyWithImpl<$Res,
        _$CreateWithdrawEventCalledImpl>
    implements _$$CreateWithdrawEventCalledImplCopyWith<$Res> {
  __$$CreateWithdrawEventCalledImplCopyWithImpl(
      _$CreateWithdrawEventCalledImpl _value,
      $Res Function(_$CreateWithdrawEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$CreateWithdrawEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as CreateWithdrawUnitLinkedParam,
    ));
  }
}

/// @nodoc

class _$CreateWithdrawEventCalledImpl implements _CreateWithdrawEventCalled {
  const _$CreateWithdrawEventCalledImpl(this.param);

  @override
  final CreateWithdrawUnitLinkedParam param;

  @override
  String toString() {
    return 'CreateWithdrawEvent.createWithdrawEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWithdrawEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWithdrawEventCalledImplCopyWith<_$CreateWithdrawEventCalledImpl>
      get copyWith => __$$CreateWithdrawEventCalledImplCopyWithImpl<
          _$CreateWithdrawEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateWithdrawUnitLinkedParam param)
        createWithdrawEventCalled,
  }) {
    return createWithdrawEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateWithdrawUnitLinkedParam param)?
        createWithdrawEventCalled,
  }) {
    return createWithdrawEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateWithdrawUnitLinkedParam param)?
        createWithdrawEventCalled,
    required TResult orElse(),
  }) {
    if (createWithdrawEventCalled != null) {
      return createWithdrawEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWithdrawEventCalled value)
        createWithdrawEventCalled,
  }) {
    return createWithdrawEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWithdrawEventCalled value)?
        createWithdrawEventCalled,
  }) {
    return createWithdrawEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWithdrawEventCalled value)?
        createWithdrawEventCalled,
    required TResult orElse(),
  }) {
    if (createWithdrawEventCalled != null) {
      return createWithdrawEventCalled(this);
    }
    return orElse();
  }
}

abstract class _CreateWithdrawEventCalled implements CreateWithdrawEvent {
  const factory _CreateWithdrawEventCalled(
          final CreateWithdrawUnitLinkedParam param) =
      _$CreateWithdrawEventCalledImpl;

  @override
  CreateWithdrawUnitLinkedParam get param;
  @override
  @JsonKey(ignore: true)
  _$$CreateWithdrawEventCalledImplCopyWith<_$CreateWithdrawEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateWithdrawState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWithdrawStateInitial value) initial,
    required TResult Function(_CreateWithdrawStateLoadFailure value)
        loadFailure,
    required TResult Function(CreateWithdrawStateLoading value) loading,
    required TResult Function(_CreateWithdrawStateLoadSuccess value)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWithdrawStateInitial value)? initial,
    TResult? Function(_CreateWithdrawStateLoadFailure value)? loadFailure,
    TResult? Function(CreateWithdrawStateLoading value)? loading,
    TResult? Function(_CreateWithdrawStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWithdrawStateInitial value)? initial,
    TResult Function(_CreateWithdrawStateLoadFailure value)? loadFailure,
    TResult Function(CreateWithdrawStateLoading value)? loading,
    TResult Function(_CreateWithdrawStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWithdrawStateCopyWith<$Res> {
  factory $CreateWithdrawStateCopyWith(
          CreateWithdrawState value, $Res Function(CreateWithdrawState) then) =
      _$CreateWithdrawStateCopyWithImpl<$Res, CreateWithdrawState>;
}

/// @nodoc
class _$CreateWithdrawStateCopyWithImpl<$Res, $Val extends CreateWithdrawState>
    implements $CreateWithdrawStateCopyWith<$Res> {
  _$CreateWithdrawStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateWithdrawStateInitialImplCopyWith<$Res> {
  factory _$$CreateWithdrawStateInitialImplCopyWith(
          _$CreateWithdrawStateInitialImpl value,
          $Res Function(_$CreateWithdrawStateInitialImpl) then) =
      __$$CreateWithdrawStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateWithdrawStateInitialImplCopyWithImpl<$Res>
    extends _$CreateWithdrawStateCopyWithImpl<$Res,
        _$CreateWithdrawStateInitialImpl>
    implements _$$CreateWithdrawStateInitialImplCopyWith<$Res> {
  __$$CreateWithdrawStateInitialImplCopyWithImpl(
      _$CreateWithdrawStateInitialImpl _value,
      $Res Function(_$CreateWithdrawStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateWithdrawStateInitialImpl implements _CreateWithdrawStateInitial {
  const _$CreateWithdrawStateInitialImpl();

  @override
  String toString() {
    return 'CreateWithdrawState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWithdrawStateInitialImpl);
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
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)
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
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)?
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
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)?
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
    required TResult Function(_CreateWithdrawStateInitial value) initial,
    required TResult Function(_CreateWithdrawStateLoadFailure value)
        loadFailure,
    required TResult Function(CreateWithdrawStateLoading value) loading,
    required TResult Function(_CreateWithdrawStateLoadSuccess value)
        loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWithdrawStateInitial value)? initial,
    TResult? Function(_CreateWithdrawStateLoadFailure value)? loadFailure,
    TResult? Function(CreateWithdrawStateLoading value)? loading,
    TResult? Function(_CreateWithdrawStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWithdrawStateInitial value)? initial,
    TResult Function(_CreateWithdrawStateLoadFailure value)? loadFailure,
    TResult Function(CreateWithdrawStateLoading value)? loading,
    TResult Function(_CreateWithdrawStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateWithdrawStateInitial implements CreateWithdrawState {
  const factory _CreateWithdrawStateInitial() =
      _$CreateWithdrawStateInitialImpl;
}

/// @nodoc
abstract class _$$CreateWithdrawStateLoadFailureImplCopyWith<$Res> {
  factory _$$CreateWithdrawStateLoadFailureImplCopyWith(
          _$CreateWithdrawStateLoadFailureImpl value,
          $Res Function(_$CreateWithdrawStateLoadFailureImpl) then) =
      __$$CreateWithdrawStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$CreateWithdrawStateLoadFailureImplCopyWithImpl<$Res>
    extends _$CreateWithdrawStateCopyWithImpl<$Res,
        _$CreateWithdrawStateLoadFailureImpl>
    implements _$$CreateWithdrawStateLoadFailureImplCopyWith<$Res> {
  __$$CreateWithdrawStateLoadFailureImplCopyWithImpl(
      _$CreateWithdrawStateLoadFailureImpl _value,
      $Res Function(_$CreateWithdrawStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CreateWithdrawStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$CreateWithdrawStateLoadFailureImpl
    implements _CreateWithdrawStateLoadFailure {
  const _$CreateWithdrawStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CreateWithdrawState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWithdrawStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWithdrawStateLoadFailureImplCopyWith<
          _$CreateWithdrawStateLoadFailureImpl>
      get copyWith => __$$CreateWithdrawStateLoadFailureImplCopyWithImpl<
          _$CreateWithdrawStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)
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
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)?
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
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)?
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
    required TResult Function(_CreateWithdrawStateInitial value) initial,
    required TResult Function(_CreateWithdrawStateLoadFailure value)
        loadFailure,
    required TResult Function(CreateWithdrawStateLoading value) loading,
    required TResult Function(_CreateWithdrawStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWithdrawStateInitial value)? initial,
    TResult? Function(_CreateWithdrawStateLoadFailure value)? loadFailure,
    TResult? Function(CreateWithdrawStateLoading value)? loading,
    TResult? Function(_CreateWithdrawStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWithdrawStateInitial value)? initial,
    TResult Function(_CreateWithdrawStateLoadFailure value)? loadFailure,
    TResult Function(CreateWithdrawStateLoading value)? loading,
    TResult Function(_CreateWithdrawStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _CreateWithdrawStateLoadFailure implements CreateWithdrawState {
  const factory _CreateWithdrawStateLoadFailure(final Failure failure) =
      _$CreateWithdrawStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$CreateWithdrawStateLoadFailureImplCopyWith<
          _$CreateWithdrawStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateWithdrawStateLoadingImplCopyWith<$Res> {
  factory _$$CreateWithdrawStateLoadingImplCopyWith(
          _$CreateWithdrawStateLoadingImpl value,
          $Res Function(_$CreateWithdrawStateLoadingImpl) then) =
      __$$CreateWithdrawStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateWithdrawStateLoadingImplCopyWithImpl<$Res>
    extends _$CreateWithdrawStateCopyWithImpl<$Res,
        _$CreateWithdrawStateLoadingImpl>
    implements _$$CreateWithdrawStateLoadingImplCopyWith<$Res> {
  __$$CreateWithdrawStateLoadingImplCopyWithImpl(
      _$CreateWithdrawStateLoadingImpl _value,
      $Res Function(_$CreateWithdrawStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateWithdrawStateLoadingImpl implements CreateWithdrawStateLoading {
  const _$CreateWithdrawStateLoadingImpl();

  @override
  String toString() {
    return 'CreateWithdrawState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWithdrawStateLoadingImpl);
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
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)
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
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)?
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
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)?
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
    required TResult Function(_CreateWithdrawStateInitial value) initial,
    required TResult Function(_CreateWithdrawStateLoadFailure value)
        loadFailure,
    required TResult Function(CreateWithdrawStateLoading value) loading,
    required TResult Function(_CreateWithdrawStateLoadSuccess value)
        loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWithdrawStateInitial value)? initial,
    TResult? Function(_CreateWithdrawStateLoadFailure value)? loadFailure,
    TResult? Function(CreateWithdrawStateLoading value)? loading,
    TResult? Function(_CreateWithdrawStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWithdrawStateInitial value)? initial,
    TResult Function(_CreateWithdrawStateLoadFailure value)? loadFailure,
    TResult Function(CreateWithdrawStateLoading value)? loading,
    TResult Function(_CreateWithdrawStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateWithdrawStateLoading implements CreateWithdrawState {
  const factory CreateWithdrawStateLoading() = _$CreateWithdrawStateLoadingImpl;
}

/// @nodoc
abstract class _$$CreateWithdrawStateLoadSuccessImplCopyWith<$Res> {
  factory _$$CreateWithdrawStateLoadSuccessImplCopyWith(
          _$CreateWithdrawStateLoadSuccessImpl value,
          $Res Function(_$CreateWithdrawStateLoadSuccessImpl) then) =
      __$$CreateWithdrawStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities});
}

/// @nodoc
class __$$CreateWithdrawStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$CreateWithdrawStateCopyWithImpl<$Res,
        _$CreateWithdrawStateLoadSuccessImpl>
    implements _$$CreateWithdrawStateLoadSuccessImplCopyWith<$Res> {
  __$$CreateWithdrawStateLoadSuccessImplCopyWithImpl(
      _$CreateWithdrawStateLoadSuccessImpl _value,
      $Res Function(_$CreateWithdrawStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createWithdrawUnitLinkedEntities = null,
  }) {
    return _then(_$CreateWithdrawStateLoadSuccessImpl(
      null == createWithdrawUnitLinkedEntities
          ? _value.createWithdrawUnitLinkedEntities
          : createWithdrawUnitLinkedEntities // ignore: cast_nullable_to_non_nullable
              as CreateWithdrawUnitLinkedEntities,
    ));
  }
}

/// @nodoc

class _$CreateWithdrawStateLoadSuccessImpl
    implements _CreateWithdrawStateLoadSuccess {
  const _$CreateWithdrawStateLoadSuccessImpl(
      this.createWithdrawUnitLinkedEntities);

  @override
  final CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities;

  @override
  String toString() {
    return 'CreateWithdrawState.loadSuccess(createWithdrawUnitLinkedEntities: $createWithdrawUnitLinkedEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWithdrawStateLoadSuccessImpl &&
            (identical(other.createWithdrawUnitLinkedEntities,
                    createWithdrawUnitLinkedEntities) ||
                other.createWithdrawUnitLinkedEntities ==
                    createWithdrawUnitLinkedEntities));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, createWithdrawUnitLinkedEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWithdrawStateLoadSuccessImplCopyWith<
          _$CreateWithdrawStateLoadSuccessImpl>
      get copyWith => __$$CreateWithdrawStateLoadSuccessImplCopyWithImpl<
          _$CreateWithdrawStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)
        loadSuccess,
  }) {
    return loadSuccess(createWithdrawUnitLinkedEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(createWithdrawUnitLinkedEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            CreateWithdrawUnitLinkedEntities createWithdrawUnitLinkedEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(createWithdrawUnitLinkedEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateWithdrawStateInitial value) initial,
    required TResult Function(_CreateWithdrawStateLoadFailure value)
        loadFailure,
    required TResult Function(CreateWithdrawStateLoading value) loading,
    required TResult Function(_CreateWithdrawStateLoadSuccess value)
        loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateWithdrawStateInitial value)? initial,
    TResult? Function(_CreateWithdrawStateLoadFailure value)? loadFailure,
    TResult? Function(CreateWithdrawStateLoading value)? loading,
    TResult? Function(_CreateWithdrawStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateWithdrawStateInitial value)? initial,
    TResult Function(_CreateWithdrawStateLoadFailure value)? loadFailure,
    TResult Function(CreateWithdrawStateLoading value)? loading,
    TResult Function(_CreateWithdrawStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateWithdrawStateLoadSuccess implements CreateWithdrawState {
  const factory _CreateWithdrawStateLoadSuccess(
          final CreateWithdrawUnitLinkedEntities
              createWithdrawUnitLinkedEntities) =
      _$CreateWithdrawStateLoadSuccessImpl;

  CreateWithdrawUnitLinkedEntities get createWithdrawUnitLinkedEntities;
  @JsonKey(ignore: true)
  _$$CreateWithdrawStateLoadSuccessImplCopyWith<
          _$CreateWithdrawStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
