import 'package:coffee_shop_app/core/services/backend_endpoints.dart';
import 'package:coffee_shop_app/shared/models/routes_model/routes_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RouteService {
  final Dio _dio;

  RouteService({Dio? dio}) : _dio = dio ?? Dio();

  Future<RoutesModel> getRoute({
    required LatLng origin,
    required LatLng destination,
  }) async {
    try {
      final response = await _dio.post(
        BackendEndpoints.getRoute,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'X-Goog-Api-Key': dotenv.get('ROUTE_API_KEY'),
            'X-Goog-FieldMask':
                'routes.duration,routes.distanceMeters,routes.polyline.encodedPolyline',
          },
        ),
        data: {
          "origin": {
            "location": {
              "latLng": {
                "latitude": origin.latitude,
                "longitude": origin.longitude,
              },
            },
          },
          "destination": {
            "location": {
              "latLng": {
                "latitude": destination.latitude,
                "longitude": destination.longitude,
              },
            },
          },
          "travelMode": "DRIVE",
          "routingPreference": "TRAFFIC_AWARE",
          "computeAlternativeRoutes": false,
          "routeModifiers": {
            "avoidTolls": false,
            "avoidHighways": false,
            "avoidFerries": false,
          },
          "languageCode": "en-US",
          "units": "METRIC",
        },
      );

      return RoutesModel.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception(
          'Route API Error (${e.response?.statusCode}): ${e.response?.data}',
        );
      } else {
        throw Exception('Failed to connect to Google Routes API: ${e.message}');
      }
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
}
