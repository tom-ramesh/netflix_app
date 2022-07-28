// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  GetHomeScreenData getHomeScreenData() {
    return const GetHomeScreenData();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $GetHomeScreenDataCopyWith<$Res> {
  factory $GetHomeScreenDataCopyWith(
          GetHomeScreenData value, $Res Function(GetHomeScreenData) then) =
      _$GetHomeScreenDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetHomeScreenDataCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $GetHomeScreenDataCopyWith<$Res> {
  _$GetHomeScreenDataCopyWithImpl(
      GetHomeScreenData _value, $Res Function(GetHomeScreenData) _then)
      : super(_value, (v) => _then(v as GetHomeScreenData));

  @override
  GetHomeScreenData get _value => super._value as GetHomeScreenData;
}

/// @nodoc

class _$GetHomeScreenData implements GetHomeScreenData {
  const _$GetHomeScreenData();

  @override
  String toString() {
    return 'HomeEvent.getHomeScreenData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetHomeScreenData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreenData,
  }) {
    return getHomeScreenData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
  }) {
    return getHomeScreenData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeScreenData value) getHomeScreenData,
  }) {
    return getHomeScreenData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
  }) {
    return getHomeScreenData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeScreenData value)? getHomeScreenData,
    required TResult orElse(),
  }) {
    if (getHomeScreenData != null) {
      return getHomeScreenData(this);
    }
    return orElse();
  }
}

abstract class GetHomeScreenData implements HomeEvent {
  const factory GetHomeScreenData() = _$GetHomeScreenData;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Initial call(
      {required List<HotAndNewData> pastYearMovieList,
      required List<HotAndNewData> trendingNowMovieList,
      required List<HotAndNewData> tenseDramasMovieList,
      required List<HotAndNewData> southIndianMovieList,
      required List<HotAndNewData> trndingTvList,
      required bool isLoading,
      required bool hasError}) {
    return _Initial(
      pastYearMovieList: pastYearMovieList,
      trendingNowMovieList: trendingNowMovieList,
      tenseDramasMovieList: tenseDramasMovieList,
      southIndianMovieList: southIndianMovieList,
      trndingTvList: trndingTvList,
      isLoading: isLoading,
      hasError: hasError,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  List<HotAndNewData> get pastYearMovieList =>
      throw _privateConstructorUsedError;
  List<HotAndNewData> get trendingNowMovieList =>
      throw _privateConstructorUsedError;
  List<HotAndNewData> get tenseDramasMovieList =>
      throw _privateConstructorUsedError;
  List<HotAndNewData> get southIndianMovieList =>
      throw _privateConstructorUsedError;
  List<HotAndNewData> get trndingTvList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {List<HotAndNewData> pastYearMovieList,
      List<HotAndNewData> trendingNowMovieList,
      List<HotAndNewData> tenseDramasMovieList,
      List<HotAndNewData> southIndianMovieList,
      List<HotAndNewData> trndingTvList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? pastYearMovieList = freezed,
    Object? trendingNowMovieList = freezed,
    Object? tenseDramasMovieList = freezed,
    Object? southIndianMovieList = freezed,
    Object? trndingTvList = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_value.copyWith(
      pastYearMovieList: pastYearMovieList == freezed
          ? _value.pastYearMovieList
          : pastYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingNowMovieList: trendingNowMovieList == freezed
          ? _value.trendingNowMovieList
          : trendingNowMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      tenseDramasMovieList: tenseDramasMovieList == freezed
          ? _value.tenseDramasMovieList
          : tenseDramasMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      southIndianMovieList: southIndianMovieList == freezed
          ? _value.southIndianMovieList
          : southIndianMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trndingTvList: trndingTvList == freezed
          ? _value.trndingTvList
          : trndingTvList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<HotAndNewData> pastYearMovieList,
      List<HotAndNewData> trendingNowMovieList,
      List<HotAndNewData> tenseDramasMovieList,
      List<HotAndNewData> southIndianMovieList,
      List<HotAndNewData> trndingTvList,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? pastYearMovieList = freezed,
    Object? trendingNowMovieList = freezed,
    Object? tenseDramasMovieList = freezed,
    Object? southIndianMovieList = freezed,
    Object? trndingTvList = freezed,
    Object? isLoading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_Initial(
      pastYearMovieList: pastYearMovieList == freezed
          ? _value.pastYearMovieList
          : pastYearMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trendingNowMovieList: trendingNowMovieList == freezed
          ? _value.trendingNowMovieList
          : trendingNowMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      tenseDramasMovieList: tenseDramasMovieList == freezed
          ? _value.tenseDramasMovieList
          : tenseDramasMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      southIndianMovieList: southIndianMovieList == freezed
          ? _value.southIndianMovieList
          : southIndianMovieList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      trndingTvList: trndingTvList == freezed
          ? _value.trndingTvList
          : trndingTvList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.pastYearMovieList,
      required this.trendingNowMovieList,
      required this.tenseDramasMovieList,
      required this.southIndianMovieList,
      required this.trndingTvList,
      required this.isLoading,
      required this.hasError});

  @override
  final List<HotAndNewData> pastYearMovieList;
  @override
  final List<HotAndNewData> trendingNowMovieList;
  @override
  final List<HotAndNewData> tenseDramasMovieList;
  @override
  final List<HotAndNewData> southIndianMovieList;
  @override
  final List<HotAndNewData> trndingTvList;
  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'HomeState(pastYearMovieList: $pastYearMovieList, trendingNowMovieList: $trendingNowMovieList, tenseDramasMovieList: $tenseDramasMovieList, southIndianMovieList: $southIndianMovieList, trndingTvList: $trndingTvList, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.pastYearMovieList, pastYearMovieList) &&
            const DeepCollectionEquality()
                .equals(other.trendingNowMovieList, trendingNowMovieList) &&
            const DeepCollectionEquality()
                .equals(other.tenseDramasMovieList, tenseDramasMovieList) &&
            const DeepCollectionEquality()
                .equals(other.southIndianMovieList, southIndianMovieList) &&
            const DeepCollectionEquality()
                .equals(other.trndingTvList, trndingTvList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pastYearMovieList),
      const DeepCollectionEquality().hash(trendingNowMovieList),
      const DeepCollectionEquality().hash(tenseDramasMovieList),
      const DeepCollectionEquality().hash(southIndianMovieList),
      const DeepCollectionEquality().hash(trndingTvList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required List<HotAndNewData> pastYearMovieList,
      required List<HotAndNewData> trendingNowMovieList,
      required List<HotAndNewData> tenseDramasMovieList,
      required List<HotAndNewData> southIndianMovieList,
      required List<HotAndNewData> trndingTvList,
      required bool isLoading,
      required bool hasError}) = _$_Initial;

  @override
  List<HotAndNewData> get pastYearMovieList;
  @override
  List<HotAndNewData> get trendingNowMovieList;
  @override
  List<HotAndNewData> get tenseDramasMovieList;
  @override
  List<HotAndNewData> get southIndianMovieList;
  @override
  List<HotAndNewData> get trndingTvList;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
