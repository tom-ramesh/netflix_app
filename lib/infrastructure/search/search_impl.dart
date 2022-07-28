import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/api_endpoints.dart';
import 'package:netflix_app/domain/search/models/search.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchImplementation implements SearchService {
  @override
  Future<Either<MainFailure, SearchResponse>> searchMovies(
      {required String movieQuery}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.search,
        queryParameters: {'query': movieQuery},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchResults = SearchResponse.fromJson(response.data);
        return Right(searchResults);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (error) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
