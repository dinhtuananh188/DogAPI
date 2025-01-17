import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

import '../../models/breed/breed.dart';

part 'breed_api.g.dart';

@RestApi()
abstract class BreedApiClient{
  factory BreedApiClient(Dio dio, {String? baseUrl}) = _BreedApiClient;

  @GET('/v1/breeds')
  Future<List<Breed>> getBreedsPaging({
    @Query('limit') required int limit,
    @Query('page') required int page,
  });

  @GET('/v1/breeds/search')
  Future<List<Breed>> getBreedsSearch({
    @Query('q') required String search
  });
}
