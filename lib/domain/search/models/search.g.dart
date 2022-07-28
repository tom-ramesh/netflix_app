// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    SearchResponse(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => SearchResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchResponseToJson(SearchResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_SearchResult _$$_SearchResultFromJson(Map<String, dynamic> json) =>
    _$_SearchResult(
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$$_SearchResultToJson(_$_SearchResult instance) =>
    <String, dynamic>{
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
