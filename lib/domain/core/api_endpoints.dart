import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$baseUrl/trending/all/day?api_key=$apiKey";
  static const imgUrl = "https://image.tmdb.org/t/p/w500";
  static const search = "$baseUrl/search/movie?api_key=$apiKey";
  static const newAndHotMovie = '$baseUrl/discover/movie?api_key=$apiKey';
  static const newAndHotTv = '$baseUrl/discover/tv?api_key=$apiKey';
}
