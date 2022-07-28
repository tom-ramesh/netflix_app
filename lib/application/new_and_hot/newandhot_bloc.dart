import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/new_and_hot/new_and_hot_service.dart';

import '../../domain/new_and_hot/models/new_and_hot.dart';

part 'newandhot_event.dart';
part 'newandhot_state.dart';
part 'newandhot_bloc.freezed.dart';

@injectable
class NewAndHotBloc extends Bloc<NewandhotEvent, NewandHotState> {
  final NewAndHotService _newANdHotService;

  NewAndHotBloc(this._newANdHotService) : super(NewandHotState.initial()) {
    //get new and hot movie data
    on<LoadDataInComingSoon>((event, emit) async {
      //send loading to UI
      emit(const NewandHotState(
        commingSoonList: [],
        eveyOnesWatchingList: [],
        isLoading: true,
        hasError: false,
      ));

      //get data
      final _result = await _newANdHotService.getHotAndNewMovieData();

      //data to state
      final newState = _result.fold(
        (MainFailure failure) {
          return const NewandHotState(
            commingSoonList: [],
            eveyOnesWatchingList: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HotAndNewResp response) {
          return NewandHotState(
            commingSoonList: response.results,
            eveyOnesWatchingList: state.eveyOnesWatchingList,
            isLoading: false,
            hasError: false,
          );
        },
      );

      emit(newState);
    });

    //get new and hot tv data
    on<LoadDataInEveryonesWatching>((event, emit) async {
      //send loading to UI
      emit(const NewandHotState(
        commingSoonList: [],
        eveyOnesWatchingList: [],
        isLoading: true,
        hasError: false,
      ));

      //get data
      final _result = await _newANdHotService.getHotAndNewTvData();

      //data to state
      final newState = _result.fold(
        (MainFailure failure) {
          return const NewandHotState(
            commingSoonList: [],
            eveyOnesWatchingList: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HotAndNewResp response) {
          return NewandHotState(
            commingSoonList: state.commingSoonList,
            eveyOnesWatchingList: response.results,
            isLoading: false,
            hasError: false,
          );
        },
      );

      emit(newState);
    });
  }
}
