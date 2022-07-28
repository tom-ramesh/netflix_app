part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<HotAndNewData> pastYearMovieList,
    required List<HotAndNewData> trendingNowMovieList,
    required List<HotAndNewData> tenseDramasMovieList,
    required List<HotAndNewData> southIndianMovieList,
    required List<HotAndNewData> trndingTvList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
        pastYearMovieList: [],
        trendingNowMovieList: [],
        tenseDramasMovieList: [],
        southIndianMovieList: [],
        trndingTvList: [],
        isLoading: false,
        hasError: false,
      );
}
