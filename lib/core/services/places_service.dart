import 'package:coffee_shop_app/core/services/backend_endpoints.dart';
import 'package:coffee_shop_app/shared/models/place_autocomplete_model/place_autocomplete_model.dart';
import 'package:coffee_shop_app/shared/models/place_details_model/place_details_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:dio/dio.dart';

class PlacesService {
  final Dio _dio;

  PlacesService({Dio? dio}) : _dio = dio ?? Dio();

  Future<List<PlaceModel>> getAutocomplete({
    required String input,
    required String sessionToken,
  }) async {
    try {
      final response = await _dio.post(
        BackendEndpoints.getAutocomplete,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'X-Goog-Api-Key': dotenv.get('PLACES_API_KEY'),
            'X-Goog-Session-Token': sessionToken,
          },
        ),
        data: {'input': input},
      );
      var data = response.data["suggestions"];
      List<PlaceModel> places = [];
      for (var item in data) {
        places.add(PlaceModel.fromJson(item));
      }

      return places;
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception(
          'Places API Error (${e.response?.statusCode}): ${e.response?.data}',
        );
      } else {
        throw Exception('Failed to connect to Google Places API: ${e.message}');
      }
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }

  Future<PlaceDetailsModel> getPlaceDetails({
    required String placeId,
    required String sessionToken,
  }) async {
    try {
      final response = await _dio.get(
        "${BackendEndpoints.getPlaceDetails}/$placeId",
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'X-Goog-Api-Key': dotenv.get('PLACES_API_KEY'),
            'X-Goog-Session-Token': sessionToken,
            'X-Goog-FieldMask': '*',
          },
        ),
      );
      var data = response.data;

      return PlaceDetailsModel.fromJson(data);
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception(
          'Places API Error (${e.response?.statusCode}): ${e.response?.data}',
        );
      } else {
        throw Exception(
          'Failed to connect to Google Places API(Places Details EndPoint): ${e.message}',
        );
      }
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
}
