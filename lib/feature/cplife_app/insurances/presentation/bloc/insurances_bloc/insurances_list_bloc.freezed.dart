// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insurances_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InsurancesListEvent {
  InsurancesParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InsurancesParam param) insurancesListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InsurancesParam param)? insurancesListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InsurancesParam param)? insurancesListEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InsurancesListEventCalled value)
        insurancesListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsurancesListEventCalled value)?
        insurancesListEventCalled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsurancesListEventCalled value)?
        insurancesListEventCalled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InsurancesListEventCopyWith<InsurancesListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsurancesListEventCopyWith<$Res> {
  factory $InsurancesListEventCopyWith(
          InsurancesListEvent value, $Res Function(InsurancesListEvent) then) =
      _$InsurancesListEventCopyWithImpl<$Res, InsurancesListEvent>;
  @useResult
  $Res call({InsurancesParam param});
}

/// @nodoc
class _$InsurancesListEventCopyWithImpl<$Res, $Val extends InsurancesListEvent>
    implements $InsurancesListEventCopyWith<$Res> {
  _$InsurancesListEventCopyWithImpl(this._value, this._then);

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
              as InsurancesParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsurancesListEventCalledImplCopyWith<$Res>
    implements $InsurancesListEventCopyWith<$Res> {
  factory _$$InsurancesListEventCalledImplCopyWith(
          _$InsurancesListEventCalledImpl value,
          $Res Function(_$InsurancesListEventCalledImpl) then) =
      __$$InsurancesListEventCalledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InsurancesParam param});
}

/// @nodoc
class __$$InsurancesListEventCalledImplCopyWithImpl<$Res>
    extends _$InsurancesListEventCopyWithImpl<$Res,
        _$InsurancesListEventCalledImpl>
    implements _$$InsurancesListEventCalledImplCopyWith<$Res> {
  __$$InsurancesListEventCalledImplCopyWithImpl(
      _$InsurancesListEventCalledImpl _value,
      $Res Function(_$InsurancesListEventCalledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$InsurancesListEventCalledImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as InsurancesParam,
    ));
  }
}

/// @nodoc

class _$InsurancesListEventCalledImpl implements _InsurancesListEventCalled {
  const _$InsurancesListEventCalledImpl(this.param);

  @override
  final InsurancesParam param;

  @override
  String toString() {
    return 'InsurancesListEvent.insurancesListEventCalled(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancesListEventCalledImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsurancesListEventCalledImplCopyWith<_$InsurancesListEventCalledImpl>
      get copyWith => __$$InsurancesListEventCalledImplCopyWithImpl<
          _$InsurancesListEventCalledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InsurancesParam param) insurancesListEventCalled,
  }) {
    return insurancesListEventCalled(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InsurancesParam param)? insurancesListEventCalled,
  }) {
    return insurancesListEventCalled?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InsurancesParam param)? insurancesListEventCalled,
    required TResult orElse(),
  }) {
    if (insurancesListEventCalled != null) {
      return insurancesListEventCalled(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InsurancesListEventCalled value)
        insurancesListEventCalled,
  }) {
    return insurancesListEventCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsurancesListEventCalled value)?
        insurancesListEventCalled,
  }) {
    return insurancesListEventCalled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsurancesListEventCalled value)?
        insurancesListEventCalled,
    required TResult orElse(),
  }) {
    if (insurancesListEventCalled != null) {
      return insurancesListEventCalled(this);
    }
    return orElse();
  }
}

abstract class _InsurancesListEventCalled implements InsurancesListEvent {
  const factory _InsurancesListEventCalled(final InsurancesParam param) =
      _$InsurancesListEventCalledImpl;

  @override
  InsurancesParam get param;
  @override
  @JsonKey(ignore: true)
  _$$InsurancesListEventCalledImplCopyWith<_$InsurancesListEventCalledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InsurancesListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure error) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            InsurancesListResponseEntities insurancesListResponseEntities)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure error)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            InsurancesListResponseEntities insurancesListResponseEntities)?
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure error)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            InsurancesListResponseEntities insurancesListResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InsurancesListInitial value) initial,
    required TResult Function(_InsurancesListFailure value) loadFailure,
    required TResult Function(InsurancesListLoading value) loading,
    required TResult Function(_InsurancesListSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsurancesListInitial value)? initial,
    TResult? Function(_InsurancesListFailure value)? loadFailure,
    TResult? Function(InsurancesListLoading value)? loading,
    TResult? Function(_InsurancesListSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsurancesListInitial value)? initial,
    TResult Function(_InsurancesListFailure value)? loadFailure,
    TResult Function(InsurancesListLoading value)? loading,
    TResult Function(_InsurancesListSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsurancesListStateCopyWith<$Res> {
  factory $InsurancesListStateCopyWith(
          InsurancesListState value, $Res Function(InsurancesListState) then) =
      _$InsurancesListStateCopyWithImpl<$Res, InsurancesListState>;
}

/// @nodoc
class _$InsurancesListStateCopyWithImpl<$Res, $Val extends InsurancesListState>
    implements $InsurancesListStateCopyWith<$Res> {
  _$InsurancesListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InsurancesListInitialImplCopyWith<$Res> {
  factory _$$InsurancesListInitialImplCopyWith(
          _$InsurancesListInitialImpl value,
          $Res Function(_$InsurancesListInitialImpl) then) =
      __$$InsurancesListInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InsurancesListInitialImplCopyWithImpl<$Res>
    extends _$InsurancesListStateCopyWithImpl<$Res, _$InsurancesListInitialImpl>
    implements _$$InsurancesListInitialImplCopyWith<$Res> {
  __$$InsurancesListInitialImplCopyWithImpl(_$InsurancesListInitialImpl _value,
      $Res Function(_$InsurancesListInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InsurancesListInitialImpl implements _InsurancesListInitial {
  const _$InsurancesListInitialImpl();

  @override
  String toString() {
    return 'InsurancesListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancesListInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure error) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            InsurancesListResponseEntities insurancesListResponseEntities)
        loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure error)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            InsurancesListResponseEntities insurancesListResponseEntities)?
        loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure error)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            InsurancesListResponseEntities insurancesListResponseEntities)?
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
    required TResult Function(_InsurancesListInitial value) initial,
    required TResult Function(_InsurancesListFailure value) loadFailure,
    required TResult Function(InsurancesListLoading value) loading,
    required TResult Function(_InsurancesListSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsurancesListInitial value)? initial,
    TResult? Function(_InsurancesListFailure value)? loadFailure,
    TResult? Function(InsurancesListLoading value)? loading,
    TResult? Function(_InsurancesListSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsurancesListInitial value)? initial,
    TResult Function(_InsurancesListFailure value)? loadFailure,
    TResult Function(InsurancesListLoading value)? loading,
    TResult Function(_InsurancesListSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InsurancesListInitial implements InsurancesListState {
  const factory _InsurancesListInitial() = _$InsurancesListInitialImpl;
}

/// @nodoc
abstract class _$$InsurancesListFailureImplCopyWith<$Res> {
  factory _$$InsurancesListFailureImplCopyWith(
          _$InsurancesListFailureImpl value,
          $Res Function(_$InsurancesListFailureImpl) then) =
      __$$InsurancesListFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure error});
}

/// @nodoc
class __$$InsurancesListFailureImplCopyWithImpl<$Res>
    extends _$InsurancesListStateCopyWithImpl<$Res, _$InsurancesListFailureImpl>
    implements _$$InsurancesListFailureImplCopyWith<$Res> {
  __$$InsurancesListFailureImplCopyWithImpl(_$InsurancesListFailureImpl _value,
      $Res Function(_$InsurancesListFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$InsurancesListFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$InsurancesListFailureImpl implements _InsurancesListFailure {
  const _$InsurancesListFailureImpl(this.error);

  @override
  final Failure error;

  @override
  String toString() {
    return 'InsurancesListState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancesListFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsurancesListFailureImplCopyWith<_$InsurancesListFailureImpl>
      get copyWith => __$$InsurancesListFailureImplCopyWithImpl<
          _$InsurancesListFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure error) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            InsurancesListResponseEntities insurancesListResponseEntities)
        loadSuccess,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure error)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            InsurancesListResponseEntities insurancesListResponseEntities)?
        loadSuccess,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure error)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            InsurancesListResponseEntities insurancesListResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InsurancesListInitial value) initial,
    required TResult Function(_InsurancesListFailure value) loadFailure,
    required TResult Function(InsurancesListLoading value) loading,
    required TResult Function(_InsurancesListSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsurancesListInitial value)? initial,
    TResult? Function(_InsurancesListFailure value)? loadFailure,
    TResult? Function(InsurancesListLoading value)? loading,
    TResult? Function(_InsurancesListSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsurancesListInitial value)? initial,
    TResult Function(_InsurancesListFailure value)? loadFailure,
    TResult Function(InsurancesListLoading value)? loading,
    TResult Function(_InsurancesListSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _InsurancesListFailure implements InsurancesListState {
  const factory _InsurancesListFailure(final Failure error) =
      _$InsurancesListFailureImpl;

  Failure get error;
  @JsonKey(ignore: true)
  _$$InsurancesListFailureImplCopyWith<_$InsurancesListFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsurancesListLoadingImplCopyWith<$Res> {
  factory _$$InsurancesListLoadingImplCopyWith(
          _$InsurancesListLoadingImpl value,
          $Res Function(_$InsurancesListLoadingImpl) then) =
      __$$InsurancesListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InsurancesListLoadingImplCopyWithImpl<$Res>
    extends _$InsurancesListStateCopyWithImpl<$Res, _$InsurancesListLoadingImpl>
    implements _$$InsurancesListLoadingImplCopyWith<$Res> {
  __$$InsurancesListLoadingImplCopyWithImpl(_$InsurancesListLoadingImpl _value,
      $Res Function(_$InsurancesListLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InsurancesListLoadingImpl implements InsurancesListLoading {
  const _$InsurancesListLoadingImpl();

  @override
  String toString() {
    return 'InsurancesListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancesListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure error) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            InsurancesListResponseEntities insurancesListResponseEntities)
        loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure error)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            InsurancesListResponseEntities insurancesListResponseEntities)?
        loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure error)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            InsurancesListResponseEntities insurancesListResponseEntities)?
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
    required TResult Function(_InsurancesListInitial value) initial,
    required TResult Function(_InsurancesListFailure value) loadFailure,
    required TResult Function(InsurancesListLoading value) loading,
    required TResult Function(_InsurancesListSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsurancesListInitial value)? initial,
    TResult? Function(_InsurancesListFailure value)? loadFailure,
    TResult? Function(InsurancesListLoading value)? loading,
    TResult? Function(_InsurancesListSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsurancesListInitial value)? initial,
    TResult Function(_InsurancesListFailure value)? loadFailure,
    TResult Function(InsurancesListLoading value)? loading,
    TResult Function(_InsurancesListSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class InsurancesListLoading implements InsurancesListState {
  const factory InsurancesListLoading() = _$InsurancesListLoadingImpl;
}

/// @nodoc
abstract class _$$InsurancesListSuccessImplCopyWith<$Res> {
  factory _$$InsurancesListSuccessImplCopyWith(
          _$InsurancesListSuccessImpl value,
          $Res Function(_$InsurancesListSuccessImpl) then) =
      __$$InsurancesListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InsurancesListResponseEntities insurancesListResponseEntities});
}

/// @nodoc
class __$$InsurancesListSuccessImplCopyWithImpl<$Res>
    extends _$InsurancesListStateCopyWithImpl<$Res, _$InsurancesListSuccessImpl>
    implements _$$InsurancesListSuccessImplCopyWith<$Res> {
  __$$InsurancesListSuccessImplCopyWithImpl(_$InsurancesListSuccessImpl _value,
      $Res Function(_$InsurancesListSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insurancesListResponseEntities = null,
  }) {
    return _then(_$InsurancesListSuccessImpl(
      null == insurancesListResponseEntities
          ? _value.insurancesListResponseEntities
          : insurancesListResponseEntities // ignore: cast_nullable_to_non_nullable
              as InsurancesListResponseEntities,
    ));
  }
}

/// @nodoc

class _$InsurancesListSuccessImpl implements _InsurancesListSuccess {
  const _$InsurancesListSuccessImpl(this.insurancesListResponseEntities);

  @override
  final InsurancesListResponseEntities insurancesListResponseEntities;

  @override
  String toString() {
    return 'InsurancesListState.loadSuccess(insurancesListResponseEntities: $insurancesListResponseEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsurancesListSuccessImpl &&
            (identical(other.insurancesListResponseEntities,
                    insurancesListResponseEntities) ||
                other.insurancesListResponseEntities ==
                    insurancesListResponseEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, insurancesListResponseEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsurancesListSuccessImplCopyWith<_$InsurancesListSuccessImpl>
      get copyWith => __$$InsurancesListSuccessImplCopyWithImpl<
          _$InsurancesListSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Failure error) loadFailure,
    required TResult Function() loading,
    required TResult Function(
            InsurancesListResponseEntities insurancesListResponseEntities)
        loadSuccess,
  }) {
    return loadSuccess(insurancesListResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Failure error)? loadFailure,
    TResult? Function()? loading,
    TResult? Function(
            InsurancesListResponseEntities insurancesListResponseEntities)?
        loadSuccess,
  }) {
    return loadSuccess?.call(insurancesListResponseEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Failure error)? loadFailure,
    TResult Function()? loading,
    TResult Function(
            InsurancesListResponseEntities insurancesListResponseEntities)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(insurancesListResponseEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InsurancesListInitial value) initial,
    required TResult Function(_InsurancesListFailure value) loadFailure,
    required TResult Function(InsurancesListLoading value) loading,
    required TResult Function(_InsurancesListSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InsurancesListInitial value)? initial,
    TResult? Function(_InsurancesListFailure value)? loadFailure,
    TResult? Function(InsurancesListLoading value)? loading,
    TResult? Function(_InsurancesListSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InsurancesListInitial value)? initial,
    TResult Function(_InsurancesListFailure value)? loadFailure,
    TResult Function(InsurancesListLoading value)? loading,
    TResult Function(_InsurancesListSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _InsurancesListSuccess implements InsurancesListState {
  const factory _InsurancesListSuccess(
          final InsurancesListResponseEntities insurancesListResponseEntities) =
      _$InsurancesListSuccessImpl;

  InsurancesListResponseEntities get insurancesListResponseEntities;
  @JsonKey(ignore: true)
  _$$InsurancesListSuccessImplCopyWith<_$InsurancesListSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
