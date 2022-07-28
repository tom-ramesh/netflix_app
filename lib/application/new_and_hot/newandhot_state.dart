part of 'newandhot_bloc.dart';

@freezed
class NewandHotState with _$NewandHotState {
  const factory NewandHotState({
    required List<HotAndNewData> commingSoonList,
    required List<HotAndNewData> eveyOnesWatchingList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory NewandHotState.initial() => const NewandHotState(
        commingSoonList: [],
        eveyOnesWatchingList: [],
        isLoading: false,
        hasError: false,
      );
}
