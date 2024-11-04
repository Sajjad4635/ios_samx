// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_qa_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FaqQaEvent {
  FaqParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FaqParam param) faqQaEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FaqParam param)? faqQaEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FaqParam param)? faqQaEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FaqQaEventCalled value) faqQaEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FaqQaEventCalled value)? faqQaEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqQaEventCalled value)? faqQaEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FaqQaEventCopyWith<FaqQaEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqQaEventCopyWith<$Res> {
  factory $FaqQaEventCopyWith(
          FaqQaEvent value, $Res Function(FaqQaEvent) then) =
      _$FaqQaEventCopyWithImpl<$Res, FaqQaEvent>;
  @useResult
  $Res call({FaqParam param});
}

/// @nodoc
class _$FaqQaEventCopyWithImpl<$Res, $Val extends FaqQaEvent>
    implements $FaqQaEventCopyWith<$Res> {
  _$FaqQaEventCopyWithImpl(this._value, this._then);

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
              as FaqParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqQaEventCalledImplCopyWith<$Res>
    implements $FaqQaEventCopyWith<$Res> {
  factory _$$FaqQaEventCalledImplCopyWith(_$FaqQaEventCalledImpl value,
          $Res Function(_$FaqQaEventCalledImpl) then) =
      __$$FaqQaEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FaqParam param});
}

/// @nodoc
class __$$FaqQaEventCalledImplCopyWithImpl<$Res>
    extends _$FaqQaEventCopyWithImpl<$Res, _$FaqQaEventCalledImpl>
    implements _$$FaqQaEventCalledImplCopyWith<$Res> {
  __$$FaqQaEventCalledImplCopyWithImpl(_$FaqQaEventCalledImpl _value,
      $Res Function(_$FaqQaEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$FaqQaEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as FaqParam,
    ));
  }
}

/// @nodoc

class _$FaqQaEventCalledImpl implements _FaqQaEventCalled {
  const _$FaqQaEventCalledImpl(this.param);

  @override
  final FaqParam param;

  @override
  String toString() {
    return 'FaqQaEvent.faqQaEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqQaEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqQaEventCalledImplCopyWith<_$FaqQaEventCalledImpl> get copyWith =>
      __$$FaqQaEventCalledImplCopyWithImpl<_$FaqQaEventCalledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FaqParam param) faqQaEventCalled,
  }) {
    return faqQaEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FaqParam param)? faqQaEventCalled,
  }) {
    return faqQaEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FaqParam param)? faqQaEventCalled,
    required TResult orElse(),
  }) {
    if (faqQaEventCalled != null) {
      return faqQaEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FaqQaEventCalled value) faqQaEventCalled,
  }) {
    return faqQaEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FaqQaEventCalled value)? faqQaEventCalled,
  }) {
    return faqQaEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqQaEventCalled value)? faqQaEventCalled,
    required TResult orElse(),
  }) {
    if (faqQaEventCalled != null) {
      return faqQaEventCalled(this);
    }
    return orElse();
  }
}

abstract class _FaqQaEventCalled implements FaqQaEvent {
  const factory _FaqQaEventCalled(final FaqParam param) =
      _$FaqQaEventCalledImpl;

  @override
  FaqParam get param;
  @override
  @JsonKey(ignore: true)
  _$$FaqQaEventCalledImplCopyWith<_$FaqQaEventCalledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FaqQaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(FaqEntity faqEntity) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(FaqEntity faqEntity)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(FaqEntity faqEntity)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FaqQaStateInitial value) initial,
    required TResult Function(_FaqQaStateLoadFailure value) loadFailure,
    required TResult Function(FaqQaStateLoading value) loading,
    required TResult Function(_FaqQaStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FaqQaStateInitial value)? initial,
    TResult? Function(_FaqQaStateLoadFailure value)? loadFailure,
    TResult? Function(FaqQaStateLoading value)? loading,
    TResult? Function(_FaqQaStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqQaStateInitial value)? initial,
    TResult Function(_FaqQaStateLoadFailure value)? loadFailure,
    TResult Function(FaqQaStateLoading value)? loading,
    TResult Function(_FaqQaStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqQaStateCopyWith<$Res> {
  factory $FaqQaStateCopyWith(
          FaqQaState value, $Res Function(FaqQaState) then) =
      _$FaqQaStateCopyWithImpl<$Res, FaqQaState>;
}

/// @nodoc
class _$FaqQaStateCopyWithImpl<$Res, $Val extends FaqQaState>
    implements $FaqQaStateCopyWith<$Res> {
  _$FaqQaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FaqQaStateInitialImplCopyWith<$Res> {
  factory _$$FaqQaStateInitialImplCopyWith(_$FaqQaStateInitialImpl value,
          $Res Function(_$FaqQaStateInitialImpl) then) =
      __$$FaqQaStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FaqQaStateInitialImplCopyWithImpl<$Res>
    extends _$FaqQaStateCopyWithImpl<$Res, _$FaqQaStateInitialImpl>
    implements _$$FaqQaStateInitialImplCopyWith<$Res> {
  __$$FaqQaStateInitialImplCopyWithImpl(_$FaqQaStateInitialImpl _value,
      $Res Function(_$FaqQaStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FaqQaStateInitialImpl implements _FaqQaStateInitial {
  const _$FaqQaStateInitialImpl();

  @override
  String toString() {
    return 'FaqQaState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FaqQaStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(FaqEntity faqEntity) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(FaqEntity faqEntity)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(FaqEntity faqEntity)? loadSuccess,
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
    required TResult Function(_FaqQaStateInitial value) initial,
    required TResult Function(_FaqQaStateLoadFailure value) loadFailure,
    required TResult Function(FaqQaStateLoading value) loading,
    required TResult Function(_FaqQaStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FaqQaStateInitial value)? initial,
    TResult? Function(_FaqQaStateLoadFailure value)? loadFailure,
    TResult? Function(FaqQaStateLoading value)? loading,
    TResult? Function(_FaqQaStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqQaStateInitial value)? initial,
    TResult Function(_FaqQaStateLoadFailure value)? loadFailure,
    TResult Function(FaqQaStateLoading value)? loading,
    TResult Function(_FaqQaStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FaqQaStateInitial implements FaqQaState {
  const factory _FaqQaStateInitial() = _$FaqQaStateInitialImpl;
}

/// @nodoc
abstract class _$$FaqQaStateLoadFailureImplCopyWith<$Res> {
  factory _$$FaqQaStateLoadFailureImplCopyWith(
          _$FaqQaStateLoadFailureImpl value,
          $Res Function(_$FaqQaStateLoadFailureImpl) then) =
      __$$FaqQaStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$FaqQaStateLoadFailureImplCopyWithImpl<$Res>
    extends _$FaqQaStateCopyWithImpl<$Res, _$FaqQaStateLoadFailureImpl>
    implements _$$FaqQaStateLoadFailureImplCopyWith<$Res> {
  __$$FaqQaStateLoadFailureImplCopyWithImpl(_$FaqQaStateLoadFailureImpl _value,
      $Res Function(_$FaqQaStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FaqQaStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$FaqQaStateLoadFailureImpl implements _FaqQaStateLoadFailure {
  const _$FaqQaStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FaqQaState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqQaStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqQaStateLoadFailureImplCopyWith<_$FaqQaStateLoadFailureImpl>
      get copyWith => __$$FaqQaStateLoadFailureImplCopyWithImpl<
          _$FaqQaStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(FaqEntity faqEntity) loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(FaqEntity faqEntity)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(FaqEntity faqEntity)? loadSuccess,
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
    required TResult Function(_FaqQaStateInitial value) initial,
    required TResult Function(_FaqQaStateLoadFailure value) loadFailure,
    required TResult Function(FaqQaStateLoading value) loading,
    required TResult Function(_FaqQaStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FaqQaStateInitial value)? initial,
    TResult? Function(_FaqQaStateLoadFailure value)? loadFailure,
    TResult? Function(FaqQaStateLoading value)? loading,
    TResult? Function(_FaqQaStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqQaStateInitial value)? initial,
    TResult Function(_FaqQaStateLoadFailure value)? loadFailure,
    TResult Function(FaqQaStateLoading value)? loading,
    TResult Function(_FaqQaStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _FaqQaStateLoadFailure implements FaqQaState {
  const factory _FaqQaStateLoadFailure(final Failure failure) =
      _$FaqQaStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FaqQaStateLoadFailureImplCopyWith<_$FaqQaStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FaqQaStateLoadingImplCopyWith<$Res> {
  factory _$$FaqQaStateLoadingImplCopyWith(_$FaqQaStateLoadingImpl value,
          $Res Function(_$FaqQaStateLoadingImpl) then) =
      __$$FaqQaStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FaqQaStateLoadingImplCopyWithImpl<$Res>
    extends _$FaqQaStateCopyWithImpl<$Res, _$FaqQaStateLoadingImpl>
    implements _$$FaqQaStateLoadingImplCopyWith<$Res> {
  __$$FaqQaStateLoadingImplCopyWithImpl(_$FaqQaStateLoadingImpl _value,
      $Res Function(_$FaqQaStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FaqQaStateLoadingImpl implements FaqQaStateLoading {
  const _$FaqQaStateLoadingImpl();

  @override
  String toString() {
    return 'FaqQaState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FaqQaStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(FaqEntity faqEntity) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(FaqEntity faqEntity)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(FaqEntity faqEntity)? loadSuccess,
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
    required TResult Function(_FaqQaStateInitial value) initial,
    required TResult Function(_FaqQaStateLoadFailure value) loadFailure,
    required TResult Function(FaqQaStateLoading value) loading,
    required TResult Function(_FaqQaStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FaqQaStateInitial value)? initial,
    TResult? Function(_FaqQaStateLoadFailure value)? loadFailure,
    TResult? Function(FaqQaStateLoading value)? loading,
    TResult? Function(_FaqQaStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqQaStateInitial value)? initial,
    TResult Function(_FaqQaStateLoadFailure value)? loadFailure,
    TResult Function(FaqQaStateLoading value)? loading,
    TResult Function(_FaqQaStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FaqQaStateLoading implements FaqQaState {
  const factory FaqQaStateLoading() = _$FaqQaStateLoadingImpl;
}

/// @nodoc
abstract class _$$FaqQaStateLoadSuccessImplCopyWith<$Res> {
  factory _$$FaqQaStateLoadSuccessImplCopyWith(
          _$FaqQaStateLoadSuccessImpl value,
          $Res Function(_$FaqQaStateLoadSuccessImpl) then) =
      __$$FaqQaStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FaqEntity faqEntity});
}

/// @nodoc
class __$$FaqQaStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$FaqQaStateCopyWithImpl<$Res, _$FaqQaStateLoadSuccessImpl>
    implements _$$FaqQaStateLoadSuccessImplCopyWith<$Res> {
  __$$FaqQaStateLoadSuccessImplCopyWithImpl(_$FaqQaStateLoadSuccessImpl _value,
      $Res Function(_$FaqQaStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faqEntity = null,
  }) {
    return _then(_$FaqQaStateLoadSuccessImpl(
      null == faqEntity
          ? _value.faqEntity
          : faqEntity // ignore: cast_nullable_to_non_nullable
              as FaqEntity,
    ));
  }
}

/// @nodoc

class _$FaqQaStateLoadSuccessImpl implements _FaqQaStateLoadSuccess {
  const _$FaqQaStateLoadSuccessImpl(this.faqEntity);

  @override
  final FaqEntity faqEntity;

  @override
  String toString() {
    return 'FaqQaState.loadSuccess(faqEntity: $faqEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqQaStateLoadSuccessImpl &&
            (identical(other.faqEntity, faqEntity) ||
                other.faqEntity == faqEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, faqEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqQaStateLoadSuccessImplCopyWith<_$FaqQaStateLoadSuccessImpl>
      get copyWith => __$$FaqQaStateLoadSuccessImplCopyWithImpl<
          _$FaqQaStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(FaqEntity faqEntity) loadSuccess,
  }) {
    return loadSuccess(faqEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(FaqEntity faqEntity)? loadSuccess,
  }) {
    return loadSuccess?.call(faqEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(FaqEntity faqEntity)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(faqEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FaqQaStateInitial value) initial,
    required TResult Function(_FaqQaStateLoadFailure value) loadFailure,
    required TResult Function(FaqQaStateLoading value) loading,
    required TResult Function(_FaqQaStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FaqQaStateInitial value)? initial,
    TResult? Function(_FaqQaStateLoadFailure value)? loadFailure,
    TResult? Function(FaqQaStateLoading value)? loading,
    TResult? Function(_FaqQaStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqQaStateInitial value)? initial,
    TResult Function(_FaqQaStateLoadFailure value)? loadFailure,
    TResult Function(FaqQaStateLoading value)? loading,
    TResult Function(_FaqQaStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _FaqQaStateLoadSuccess implements FaqQaState {
  const factory _FaqQaStateLoadSuccess(final FaqEntity faqEntity) =
      _$FaqQaStateLoadSuccessImpl;

  FaqEntity get faqEntity;
  @JsonKey(ignore: true)
  _$$FaqQaStateLoadSuccessImplCopyWith<_$FaqQaStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
