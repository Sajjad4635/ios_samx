// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_ticket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailsTicketEvent {
  DetailsTicketParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailsTicketParam param)
        detailsTicketEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailsTicketParam param)? detailsTicketEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailsTicketParam param)? detailsTicketEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsTicketEventCalled value)
        detailsTicketEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsTicketEventCalled value)?
        detailsTicketEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsTicketEventCalled value)? detailsTicketEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsTicketEventCopyWith<DetailsTicketEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsTicketEventCopyWith<$Res> {
  factory $DetailsTicketEventCopyWith(
          DetailsTicketEvent value, $Res Function(DetailsTicketEvent) then) =
      _$DetailsTicketEventCopyWithImpl<$Res, DetailsTicketEvent>;
  @useResult
  $Res call({DetailsTicketParam param});
}

/// @nodoc
class _$DetailsTicketEventCopyWithImpl<$Res, $Val extends DetailsTicketEvent>
    implements $DetailsTicketEventCopyWith<$Res> {
  _$DetailsTicketEventCopyWithImpl(this._value, this._then);

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
              as DetailsTicketParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsTicketEventCalledImplCopyWith<$Res>
    implements $DetailsTicketEventCopyWith<$Res> {
  factory _$$DetailsTicketEventCalledImplCopyWith(
          _$DetailsTicketEventCalledImpl value,
          $Res Function(_$DetailsTicketEventCalledImpl) then) =
      __$$DetailsTicketEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailsTicketParam param});
}

/// @nodoc
class __$$DetailsTicketEventCalledImplCopyWithImpl<$Res>
    extends _$DetailsTicketEventCopyWithImpl<$Res,
        _$DetailsTicketEventCalledImpl>
    implements _$$DetailsTicketEventCalledImplCopyWith<$Res> {
  __$$DetailsTicketEventCalledImplCopyWithImpl(
      _$DetailsTicketEventCalledImpl _value,
      $Res Function(_$DetailsTicketEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$DetailsTicketEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as DetailsTicketParam,
    ));
  }
}

/// @nodoc

class _$DetailsTicketEventCalledImpl implements _DetailsTicketEventCalled {
  const _$DetailsTicketEventCalledImpl(this.param);

  @override
  final DetailsTicketParam param;

  @override
  String toString() {
    return 'DetailsTicketEvent.detailsTicketEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsTicketEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsTicketEventCalledImplCopyWith<_$DetailsTicketEventCalledImpl>
      get copyWith => __$$DetailsTicketEventCalledImplCopyWithImpl<
          _$DetailsTicketEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DetailsTicketParam param)
        detailsTicketEventCalled,
  }) {
    return detailsTicketEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DetailsTicketParam param)? detailsTicketEventCalled,
  }) {
    return detailsTicketEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DetailsTicketParam param)? detailsTicketEventCalled,
    required TResult orElse(),
  }) {
    if (detailsTicketEventCalled != null) {
      return detailsTicketEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsTicketEventCalled value)
        detailsTicketEventCalled,
  }) {
    return detailsTicketEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsTicketEventCalled value)?
        detailsTicketEventCalled,
  }) {
    return detailsTicketEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsTicketEventCalled value)? detailsTicketEventCalled,
    required TResult orElse(),
  }) {
    if (detailsTicketEventCalled != null) {
      return detailsTicketEventCalled(this);
    }
    return orElse();
  }
}

abstract class _DetailsTicketEventCalled implements DetailsTicketEvent {
  const factory _DetailsTicketEventCalled(final DetailsTicketParam param) =
      _$DetailsTicketEventCalledImpl;

  @override
  DetailsTicketParam get param;
  @override
  @JsonKey(ignore: true)
  _$$DetailsTicketEventCalledImplCopyWith<_$DetailsTicketEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailsTicketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DetailsTicketEntities detailsTicketEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(DetailsTicketEntities detailsTicketEntities)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(DetailsTicketEntities detailsTicketEntities)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsTicketInitial value) initial,
    required TResult Function(_DetailsTicketLoadFailure value) loadFailure,
    required TResult Function(DetailsTicketLoading value) loading,
    required TResult Function(_DetailsTicketLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsTicketInitial value)? initial,
    TResult? Function(_DetailsTicketLoadFailure value)? loadFailure,
    TResult? Function(DetailsTicketLoading value)? loading,
    TResult? Function(_DetailsTicketLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsTicketInitial value)? initial,
    TResult Function(_DetailsTicketLoadFailure value)? loadFailure,
    TResult Function(DetailsTicketLoading value)? loading,
    TResult Function(_DetailsTicketLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsTicketStateCopyWith<$Res> {
  factory $DetailsTicketStateCopyWith(
          DetailsTicketState value, $Res Function(DetailsTicketState) then) =
      _$DetailsTicketStateCopyWithImpl<$Res, DetailsTicketState>;
}

/// @nodoc
class _$DetailsTicketStateCopyWithImpl<$Res, $Val extends DetailsTicketState>
    implements $DetailsTicketStateCopyWith<$Res> {
  _$DetailsTicketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DetailsTicketInitialImplCopyWith<$Res> {
  factory _$$DetailsTicketInitialImplCopyWith(_$DetailsTicketInitialImpl value,
          $Res Function(_$DetailsTicketInitialImpl) then) =
      __$$DetailsTicketInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailsTicketInitialImplCopyWithImpl<$Res>
    extends _$DetailsTicketStateCopyWithImpl<$Res, _$DetailsTicketInitialImpl>
    implements _$$DetailsTicketInitialImplCopyWith<$Res> {
  __$$DetailsTicketInitialImplCopyWithImpl(_$DetailsTicketInitialImpl _value,
      $Res Function(_$DetailsTicketInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DetailsTicketInitialImpl implements _DetailsTicketInitial {
  const _$DetailsTicketInitialImpl();

  @override
  String toString() {
    return 'DetailsTicketState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsTicketInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DetailsTicketEntities detailsTicketEntities)
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
    TResult? Function(DetailsTicketEntities detailsTicketEntities)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(DetailsTicketEntities detailsTicketEntities)? loadSuccess,
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
    required TResult Function(_DetailsTicketInitial value) initial,
    required TResult Function(_DetailsTicketLoadFailure value) loadFailure,
    required TResult Function(DetailsTicketLoading value) loading,
    required TResult Function(_DetailsTicketLoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsTicketInitial value)? initial,
    TResult? Function(_DetailsTicketLoadFailure value)? loadFailure,
    TResult? Function(DetailsTicketLoading value)? loading,
    TResult? Function(_DetailsTicketLoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsTicketInitial value)? initial,
    TResult Function(_DetailsTicketLoadFailure value)? loadFailure,
    TResult Function(DetailsTicketLoading value)? loading,
    TResult Function(_DetailsTicketLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DetailsTicketInitial implements DetailsTicketState {
  const factory _DetailsTicketInitial() = _$DetailsTicketInitialImpl;
}

/// @nodoc
abstract class _$$DetailsTicketLoadFailureImplCopyWith<$Res> {
  factory _$$DetailsTicketLoadFailureImplCopyWith(
          _$DetailsTicketLoadFailureImpl value,
          $Res Function(_$DetailsTicketLoadFailureImpl) then) =
      __$$DetailsTicketLoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$DetailsTicketLoadFailureImplCopyWithImpl<$Res>
    extends _$DetailsTicketStateCopyWithImpl<$Res,
        _$DetailsTicketLoadFailureImpl>
    implements _$$DetailsTicketLoadFailureImplCopyWith<$Res> {
  __$$DetailsTicketLoadFailureImplCopyWithImpl(
      _$DetailsTicketLoadFailureImpl _value,
      $Res Function(_$DetailsTicketLoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$DetailsTicketLoadFailureImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$DetailsTicketLoadFailureImpl implements _DetailsTicketLoadFailure {
  const _$DetailsTicketLoadFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'DetailsTicketState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsTicketLoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsTicketLoadFailureImplCopyWith<_$DetailsTicketLoadFailureImpl>
      get copyWith => __$$DetailsTicketLoadFailureImplCopyWithImpl<
          _$DetailsTicketLoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DetailsTicketEntities detailsTicketEntities)
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
    TResult? Function(DetailsTicketEntities detailsTicketEntities)? loadSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(DetailsTicketEntities detailsTicketEntities)? loadSuccess,
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
    required TResult Function(_DetailsTicketInitial value) initial,
    required TResult Function(_DetailsTicketLoadFailure value) loadFailure,
    required TResult Function(DetailsTicketLoading value) loading,
    required TResult Function(_DetailsTicketLoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsTicketInitial value)? initial,
    TResult? Function(_DetailsTicketLoadFailure value)? loadFailure,
    TResult? Function(DetailsTicketLoading value)? loading,
    TResult? Function(_DetailsTicketLoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsTicketInitial value)? initial,
    TResult Function(_DetailsTicketLoadFailure value)? loadFailure,
    TResult Function(DetailsTicketLoading value)? loading,
    TResult Function(_DetailsTicketLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _DetailsTicketLoadFailure implements DetailsTicketState {
  const factory _DetailsTicketLoadFailure(final Failure failure) =
      _$DetailsTicketLoadFailureImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$DetailsTicketLoadFailureImplCopyWith<_$DetailsTicketLoadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailsTicketLoadingImplCopyWith<$Res> {
  factory _$$DetailsTicketLoadingImplCopyWith(_$DetailsTicketLoadingImpl value,
          $Res Function(_$DetailsTicketLoadingImpl) then) =
      __$$DetailsTicketLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailsTicketLoadingImplCopyWithImpl<$Res>
    extends _$DetailsTicketStateCopyWithImpl<$Res, _$DetailsTicketLoadingImpl>
    implements _$$DetailsTicketLoadingImplCopyWith<$Res> {
  __$$DetailsTicketLoadingImplCopyWithImpl(_$DetailsTicketLoadingImpl _value,
      $Res Function(_$DetailsTicketLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DetailsTicketLoadingImpl implements DetailsTicketLoading {
  const _$DetailsTicketLoadingImpl();

  @override
  String toString() {
    return 'DetailsTicketState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsTicketLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DetailsTicketEntities detailsTicketEntities)
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
    TResult? Function(DetailsTicketEntities detailsTicketEntities)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(DetailsTicketEntities detailsTicketEntities)? loadSuccess,
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
    required TResult Function(_DetailsTicketInitial value) initial,
    required TResult Function(_DetailsTicketLoadFailure value) loadFailure,
    required TResult Function(DetailsTicketLoading value) loading,
    required TResult Function(_DetailsTicketLoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsTicketInitial value)? initial,
    TResult? Function(_DetailsTicketLoadFailure value)? loadFailure,
    TResult? Function(DetailsTicketLoading value)? loading,
    TResult? Function(_DetailsTicketLoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsTicketInitial value)? initial,
    TResult Function(_DetailsTicketLoadFailure value)? loadFailure,
    TResult Function(DetailsTicketLoading value)? loading,
    TResult Function(_DetailsTicketLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DetailsTicketLoading implements DetailsTicketState {
  const factory DetailsTicketLoading() = _$DetailsTicketLoadingImpl;
}

/// @nodoc
abstract class _$$DetailsTicketLoadSuccessImplCopyWith<$Res> {
  factory _$$DetailsTicketLoadSuccessImplCopyWith(
          _$DetailsTicketLoadSuccessImpl value,
          $Res Function(_$DetailsTicketLoadSuccessImpl) then) =
      __$$DetailsTicketLoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailsTicketEntities detailsTicketEntities});
}

/// @nodoc
class __$$DetailsTicketLoadSuccessImplCopyWithImpl<$Res>
    extends _$DetailsTicketStateCopyWithImpl<$Res,
        _$DetailsTicketLoadSuccessImpl>
    implements _$$DetailsTicketLoadSuccessImplCopyWith<$Res> {
  __$$DetailsTicketLoadSuccessImplCopyWithImpl(
      _$DetailsTicketLoadSuccessImpl _value,
      $Res Function(_$DetailsTicketLoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailsTicketEntities = null,
  }) {
    return _then(_$DetailsTicketLoadSuccessImpl(
      null == detailsTicketEntities
          ? _value.detailsTicketEntities
          : detailsTicketEntities // ignore: cast_nullable_to_non_nullable
              as DetailsTicketEntities,
    ));
  }
}

/// @nodoc

class _$DetailsTicketLoadSuccessImpl implements _DetailsTicketLoadSuccess {
  const _$DetailsTicketLoadSuccessImpl(this.detailsTicketEntities);

  @override
  final DetailsTicketEntities detailsTicketEntities;

  @override
  String toString() {
    return 'DetailsTicketState.loadSuccess(detailsTicketEntities: $detailsTicketEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsTicketLoadSuccessImpl &&
            (identical(other.detailsTicketEntities, detailsTicketEntities) ||
                other.detailsTicketEntities == detailsTicketEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailsTicketEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsTicketLoadSuccessImplCopyWith<_$DetailsTicketLoadSuccessImpl>
      get copyWith => __$$DetailsTicketLoadSuccessImplCopyWithImpl<
          _$DetailsTicketLoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure failure) loadFailure,
    required TResult Function() loading,
    required TResult Function(DetailsTicketEntities detailsTicketEntities)
        loadSuccess,
  }) {
    return loadSuccess(detailsTicketEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure failure)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(DetailsTicketEntities detailsTicketEntities)? loadSuccess,
  }) {
    return loadSuccess?.call(detailsTicketEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure failure)? loadFailure,
    TResult Function()? loading,
    TResult Function(DetailsTicketEntities detailsTicketEntities)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(detailsTicketEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsTicketInitial value) initial,
    required TResult Function(_DetailsTicketLoadFailure value) loadFailure,
    required TResult Function(DetailsTicketLoading value) loading,
    required TResult Function(_DetailsTicketLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailsTicketInitial value)? initial,
    TResult? Function(_DetailsTicketLoadFailure value)? loadFailure,
    TResult? Function(DetailsTicketLoading value)? loading,
    TResult? Function(_DetailsTicketLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsTicketInitial value)? initial,
    TResult Function(_DetailsTicketLoadFailure value)? loadFailure,
    TResult Function(DetailsTicketLoading value)? loading,
    TResult Function(_DetailsTicketLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _DetailsTicketLoadSuccess implements DetailsTicketState {
  const factory _DetailsTicketLoadSuccess(
          final DetailsTicketEntities detailsTicketEntities) =
      _$DetailsTicketLoadSuccessImpl;

  DetailsTicketEntities get detailsTicketEntities;
  @JsonKey(ignore: true)
  _$$DetailsTicketLoadSuccessImplCopyWith<_$DetailsTicketLoadSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
