// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FaqSearchEvent {
  FaqSearchParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FaqSearchParams params) faqSearchEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FaqSearchParams params)? faqSearchEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FaqSearchParams params)? faqSearchEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FaqSearchEventCalled value) faqSearchEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FaqSearchEventCalled value)? faqSearchEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqSearchEventCalled value)? faqSearchEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FaqSearchEventCopyWith<FaqSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqSearchEventCopyWith<$Res> {
  factory $FaqSearchEventCopyWith(
          FaqSearchEvent value, $Res Function(FaqSearchEvent) then) =
      _$FaqSearchEventCopyWithImpl<$Res, FaqSearchEvent>;
  @useResult
  $Res call({FaqSearchParams params});
}

/// @nodoc
class _$FaqSearchEventCopyWithImpl<$Res, $Val extends FaqSearchEvent>
    implements $FaqSearchEventCopyWith<$Res> {
  _$FaqSearchEventCopyWithImpl(this._value, this._then);

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
              as FaqSearchParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqSearchEventCalledImplCopyWith<$Res>
    implements $FaqSearchEventCopyWith<$Res> {
  factory _$$FaqSearchEventCalledImplCopyWith(_$FaqSearchEventCalledImpl value,
          $Res Function(_$FaqSearchEventCalledImpl) then) =
      __$$FaqSearchEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FaqSearchParams params});
}

/// @nodoc
class __$$FaqSearchEventCalledImplCopyWithImpl<$Res>
    extends _$FaqSearchEventCopyWithImpl<$Res, _$FaqSearchEventCalledImpl>
    implements _$$FaqSearchEventCalledImplCopyWith<$Res> {
  __$$FaqSearchEventCalledImplCopyWithImpl(_$FaqSearchEventCalledImpl _value,
      $Res Function(_$FaqSearchEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$FaqSearchEventCalledImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as FaqSearchParams,
    ));
  }
}

/// @nodoc

class _$FaqSearchEventCalledImpl implements _FaqSearchEventCalled {
  const _$FaqSearchEventCalledImpl(this.params);

  @override
  final FaqSearchParams params;

  @override
  String toString() {
    return 'FaqSearchEvent.faqSearchEventCalled(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqSearchEventCalledImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqSearchEventCalledImplCopyWith<_$FaqSearchEventCalledImpl>
      get copyWith =>
          __$$FaqSearchEventCalledImplCopyWithImpl<_$FaqSearchEventCalledImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FaqSearchParams params) faqSearchEventCalled,
  }) {
    return faqSearchEventCalled(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FaqSearchParams params)? faqSearchEventCalled,
  }) {
    return faqSearchEventCalled?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FaqSearchParams params)? faqSearchEventCalled,
    required TResult orElse(),
  }) {
    if (faqSearchEventCalled != null) {
      return faqSearchEventCalled(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FaqSearchEventCalled value) faqSearchEventCalled,
  }) {
    return faqSearchEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FaqSearchEventCalled value)? faqSearchEventCalled,
  }) {
    return faqSearchEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqSearchEventCalled value)? faqSearchEventCalled,
    required TResult orElse(),
  }) {
    if (faqSearchEventCalled != null) {
      return faqSearchEventCalled(this);
    }
    return orElse();
  }
}

abstract class _FaqSearchEventCalled implements FaqSearchEvent {
  const factory _FaqSearchEventCalled(final FaqSearchParams params) =
      _$FaqSearchEventCalledImpl;

  @override
  FaqSearchParams get params;
  @override
  @JsonKey(ignore: true)
  _$$FaqSearchEventCalledImplCopyWith<_$FaqSearchEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FaqSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(FaqEntity faqEntity) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(FaqEntity faqEntity)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? loadFailure,
    TResult Function(FaqEntity faqEntity)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FaqSearchStateInitial value) initial,
    required TResult Function(FaqSearchStateLoading value) loading,
    required TResult Function(_FaqSearchStateLoadFailure value) loadFailure,
    required TResult Function(_FaqSearchStateLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FaqSearchStateInitial value)? initial,
    TResult? Function(FaqSearchStateLoading value)? loading,
    TResult? Function(_FaqSearchStateLoadFailure value)? loadFailure,
    TResult? Function(_FaqSearchStateLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqSearchStateInitial value)? initial,
    TResult Function(FaqSearchStateLoading value)? loading,
    TResult Function(_FaqSearchStateLoadFailure value)? loadFailure,
    TResult Function(_FaqSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqSearchStateCopyWith<$Res> {
  factory $FaqSearchStateCopyWith(
          FaqSearchState value, $Res Function(FaqSearchState) then) =
      _$FaqSearchStateCopyWithImpl<$Res, FaqSearchState>;
}

/// @nodoc
class _$FaqSearchStateCopyWithImpl<$Res, $Val extends FaqSearchState>
    implements $FaqSearchStateCopyWith<$Res> {
  _$FaqSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FaqSearchStateInitialImplCopyWith<$Res> {
  factory _$$FaqSearchStateInitialImplCopyWith(
          _$FaqSearchStateInitialImpl value,
          $Res Function(_$FaqSearchStateInitialImpl) then) =
      __$$FaqSearchStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FaqSearchStateInitialImplCopyWithImpl<$Res>
    extends _$FaqSearchStateCopyWithImpl<$Res, _$FaqSearchStateInitialImpl>
    implements _$$FaqSearchStateInitialImplCopyWith<$Res> {
  __$$FaqSearchStateInitialImplCopyWithImpl(_$FaqSearchStateInitialImpl _value,
      $Res Function(_$FaqSearchStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FaqSearchStateInitialImpl implements _FaqSearchStateInitial {
  const _$FaqSearchStateInitialImpl();

  @override
  String toString() {
    return 'FaqSearchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqSearchStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(FaqEntity faqEntity) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(FaqEntity faqEntity)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? loadFailure,
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
    required TResult Function(_FaqSearchStateInitial value) initial,
    required TResult Function(FaqSearchStateLoading value) loading,
    required TResult Function(_FaqSearchStateLoadFailure value) loadFailure,
    required TResult Function(_FaqSearchStateLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FaqSearchStateInitial value)? initial,
    TResult? Function(FaqSearchStateLoading value)? loading,
    TResult? Function(_FaqSearchStateLoadFailure value)? loadFailure,
    TResult? Function(_FaqSearchStateLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqSearchStateInitial value)? initial,
    TResult Function(FaqSearchStateLoading value)? loading,
    TResult Function(_FaqSearchStateLoadFailure value)? loadFailure,
    TResult Function(_FaqSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FaqSearchStateInitial implements FaqSearchState {
  const factory _FaqSearchStateInitial() = _$FaqSearchStateInitialImpl;
}

/// @nodoc
abstract class _$$FaqSearchStateLoadingImplCopyWith<$Res> {
  factory _$$FaqSearchStateLoadingImplCopyWith(
          _$FaqSearchStateLoadingImpl value,
          $Res Function(_$FaqSearchStateLoadingImpl) then) =
      __$$FaqSearchStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FaqSearchStateLoadingImplCopyWithImpl<$Res>
    extends _$FaqSearchStateCopyWithImpl<$Res, _$FaqSearchStateLoadingImpl>
    implements _$$FaqSearchStateLoadingImplCopyWith<$Res> {
  __$$FaqSearchStateLoadingImplCopyWithImpl(_$FaqSearchStateLoadingImpl _value,
      $Res Function(_$FaqSearchStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FaqSearchStateLoadingImpl implements FaqSearchStateLoading {
  const _$FaqSearchStateLoadingImpl();

  @override
  String toString() {
    return 'FaqSearchState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqSearchStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(FaqEntity faqEntity) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(FaqEntity faqEntity)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? loadFailure,
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
    required TResult Function(_FaqSearchStateInitial value) initial,
    required TResult Function(FaqSearchStateLoading value) loading,
    required TResult Function(_FaqSearchStateLoadFailure value) loadFailure,
    required TResult Function(_FaqSearchStateLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FaqSearchStateInitial value)? initial,
    TResult? Function(FaqSearchStateLoading value)? loading,
    TResult? Function(_FaqSearchStateLoadFailure value)? loadFailure,
    TResult? Function(_FaqSearchStateLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqSearchStateInitial value)? initial,
    TResult Function(FaqSearchStateLoading value)? loading,
    TResult Function(_FaqSearchStateLoadFailure value)? loadFailure,
    TResult Function(_FaqSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FaqSearchStateLoading implements FaqSearchState {
  const factory FaqSearchStateLoading() = _$FaqSearchStateLoadingImpl;
}

/// @nodoc
abstract class _$$FaqSearchStateLoadFailureImplCopyWith<$Res> {
  factory _$$FaqSearchStateLoadFailureImplCopyWith(
          _$FaqSearchStateLoadFailureImpl value,
          $Res Function(_$FaqSearchStateLoadFailureImpl) then) =
      __$$FaqSearchStateLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$FaqSearchStateLoadFailureImplCopyWithImpl<$Res>
    extends _$FaqSearchStateCopyWithImpl<$Res, _$FaqSearchStateLoadFailureImpl>
    implements _$$FaqSearchStateLoadFailureImplCopyWith<$Res> {
  __$$FaqSearchStateLoadFailureImplCopyWithImpl(
      _$FaqSearchStateLoadFailureImpl _value,
      $Res Function(_$FaqSearchStateLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FaqSearchStateLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$FaqSearchStateLoadFailureImpl implements _FaqSearchStateLoadFailure {
  const _$FaqSearchStateLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FaqSearchState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqSearchStateLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqSearchStateLoadFailureImplCopyWith<_$FaqSearchStateLoadFailureImpl>
      get copyWith => __$$FaqSearchStateLoadFailureImplCopyWithImpl<
          _$FaqSearchStateLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(FaqEntity faqEntity) loadSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(FaqEntity faqEntity)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? loadFailure,
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
    required TResult Function(_FaqSearchStateInitial value) initial,
    required TResult Function(FaqSearchStateLoading value) loading,
    required TResult Function(_FaqSearchStateLoadFailure value) loadFailure,
    required TResult Function(_FaqSearchStateLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FaqSearchStateInitial value)? initial,
    TResult? Function(FaqSearchStateLoading value)? loading,
    TResult? Function(_FaqSearchStateLoadFailure value)? loadFailure,
    TResult? Function(_FaqSearchStateLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqSearchStateInitial value)? initial,
    TResult Function(FaqSearchStateLoading value)? loading,
    TResult Function(_FaqSearchStateLoadFailure value)? loadFailure,
    TResult Function(_FaqSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _FaqSearchStateLoadFailure implements FaqSearchState {
  const factory _FaqSearchStateLoadFailure(final Failure failure) =
      _$FaqSearchStateLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FaqSearchStateLoadFailureImplCopyWith<_$FaqSearchStateLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FaqSearchStateLoadSuccessImplCopyWith<$Res> {
  factory _$$FaqSearchStateLoadSuccessImplCopyWith(
          _$FaqSearchStateLoadSuccessImpl value,
          $Res Function(_$FaqSearchStateLoadSuccessImpl) then) =
      __$$FaqSearchStateLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FaqEntity faqEntity});
}

/// @nodoc
class __$$FaqSearchStateLoadSuccessImplCopyWithImpl<$Res>
    extends _$FaqSearchStateCopyWithImpl<$Res, _$FaqSearchStateLoadSuccessImpl>
    implements _$$FaqSearchStateLoadSuccessImplCopyWith<$Res> {
  __$$FaqSearchStateLoadSuccessImplCopyWithImpl(
      _$FaqSearchStateLoadSuccessImpl _value,
      $Res Function(_$FaqSearchStateLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faqEntity = null,
  }) {
    return _then(_$FaqSearchStateLoadSuccessImpl(
      null == faqEntity
          ? _value.faqEntity
          : faqEntity // ignore: cast_nullable_to_non_nullable
              as FaqEntity,
    ));
  }
}

/// @nodoc

class _$FaqSearchStateLoadSuccessImpl implements _FaqSearchStateLoadSuccess {
  const _$FaqSearchStateLoadSuccessImpl(this.faqEntity);

  @override
  final FaqEntity faqEntity;

  @override
  String toString() {
    return 'FaqSearchState.loadSuccess(faqEntity: $faqEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqSearchStateLoadSuccessImpl &&
            (identical(other.faqEntity, faqEntity) ||
                other.faqEntity == faqEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, faqEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqSearchStateLoadSuccessImplCopyWith<_$FaqSearchStateLoadSuccessImpl>
      get copyWith => __$$FaqSearchStateLoadSuccessImplCopyWithImpl<
          _$FaqSearchStateLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function(FaqEntity faqEntity) loadSuccess,
  }) {
    return loadSuccess(faqEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function(FaqEntity faqEntity)? loadSuccess,
  }) {
    return loadSuccess?.call(faqEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? loadFailure,
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
    required TResult Function(_FaqSearchStateInitial value) initial,
    required TResult Function(FaqSearchStateLoading value) loading,
    required TResult Function(_FaqSearchStateLoadFailure value) loadFailure,
    required TResult Function(_FaqSearchStateLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FaqSearchStateInitial value)? initial,
    TResult? Function(FaqSearchStateLoading value)? loading,
    TResult? Function(_FaqSearchStateLoadFailure value)? loadFailure,
    TResult? Function(_FaqSearchStateLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FaqSearchStateInitial value)? initial,
    TResult Function(FaqSearchStateLoading value)? loading,
    TResult Function(_FaqSearchStateLoadFailure value)? loadFailure,
    TResult Function(_FaqSearchStateLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _FaqSearchStateLoadSuccess implements FaqSearchState {
  const factory _FaqSearchStateLoadSuccess(final FaqEntity faqEntity) =
      _$FaqSearchStateLoadSuccessImpl;

  FaqEntity get faqEntity;
  @JsonKey(ignore: true)
  _$$FaqSearchStateLoadSuccessImplCopyWith<_$FaqSearchStateLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
