import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/core/api_endpoints.dart';
import 'package:netflix_app/domain/new_and_hot/models/new_and_hot.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/new_and_hot/new_and_hot_service.dart';

@LazySingleton(as: NewAndHotService)
class NewAndHotImplementation implements NewAndHotService {
  @override
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewMovieData() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.newAndHotMovie);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewResp.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (error) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewTvData() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.newAndHotTv);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewResp.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (error) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
