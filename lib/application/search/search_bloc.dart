import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/search/search_service.dart';

import '../../domain/downloads/models/downloads.dart';
import '../../domain/search/models/search.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsService;
  final SearchService _searchService;

  SearchBloc(this._downloadsService, this._searchService)
      : super(SearchState.initial()) {
    /*
      idle search 
    */
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        //to avoid reload the saved data without calling api everytime
        emit(
          SearchState(
            searchResultList: [],
            idleList: state.idleList,
            isLoading: false,
            isError: false,
          ),
        );
        return;
      }

      emit(
        const SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: true,
          isError: false,
        ),
      );
      // get trending
      final _result = await _downloadsService.getDownloadsImages();

      _result.fold(
        (MainFailure failure) => {
          emit(
            const SearchState(
              searchResultList: [],
              idleList: [],
              isLoading: false,
              isError: true,
            ),
          )
        },
        (List<Downloads> list) {
          emit(
            SearchState(
              searchResultList: [],
              idleList: list,
              isLoading: false,
              isError: false,
            ),
          );
        },
      );

      //show to UI
    });

    /*
      search result
    */

    on<SearchMovie>((event, emit) async {
      emit(const SearchState(
        searchResultList: [],
        idleList: [],
        isLoading: true,
        isError: false,
      ));
      // call search movie api
      final _result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);

      final _state = _result.fold(
        (MainFailure failure) {
          return const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        (SearchResponse response) {
          return SearchState(
            searchResultList: response.results,
            idleList: [],
            isLoading: true,
            isError: false,
          );
        },
      );
      //show to UI
      emit(_state);
    });
  }
}
