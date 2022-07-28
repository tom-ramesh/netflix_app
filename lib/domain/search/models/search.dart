import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    @JsonKey(name: 'original_title') String? originalTitle,
    @JsonKey(name: 'poster_path') String? posterPath,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}

@JsonSerializable()
class SearchResponse {
  @JsonKey(name: 'results')
  List<SearchResult> results;

  SearchResponse({this.results = const []});

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}
