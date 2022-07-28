import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/new_and_hot/new_and_hot_service.dart';

import '../../domain/new_and_hot/models/new_and_hot.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  NewAndHotService _homeService;

  HomeBloc(this._homeService) : super(HomeState.initial()) {
    //get homescreen data
    on<GetHomeScreenData>((event, emit) async {
      //send loading yo UI
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
      ));

      //get Data
      final _movieresult = await _homeService.getHotAndNewMovieData();
      final _tvResult = await _homeService.getHotAndNewTvData();

      //processData
      _movieresult.fold(
        (MainFailure failure) {
          return const HomeState(
            pastYearMovieList: [],
            trendingNowMovieList: [],
            tenseDramasMovieList: [],
            southIndianMovieList: [],
            trndingTvList: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HotAndNewResp resp) {
          final movieList = resp.results;
          movieList.shuffle();
          return HomeState(
            pastYearMovieList: movieList,
            trendingNowMovieList: [],
            tenseDramasMovieList: [],
            southIndianMovieList: [],
            trndingTvList: [],
            isLoading: false,
            hasError: true,
          );
        },
      );

      _tvResult.fold(
        (MainFailure failure) => null,
        (HotAndNewResp resp) => null,
      );

      //send to UI
    });
  }
}
