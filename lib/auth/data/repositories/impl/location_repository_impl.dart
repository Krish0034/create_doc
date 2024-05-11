import 'package:create_doc/util/api_urls.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'location_repository_impl.g.dart';

@RestApi()
@injectable
abstract class LocationRepositoryImpl
{

  @factoryMethod
  factory LocationRepositoryImpl(Dio dio) = _LocationRepositoryImpl;

  @GET(FireBaseStorage.locationUrl)
  Future<Map<String, dynamic>> searchLocation(
      @Query("input") String searchQuery,
      @Query("key") String apiKey,
      @Query("sessiontoken") String sessionToken,
      );
}