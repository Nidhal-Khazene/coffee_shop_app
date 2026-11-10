import 'package:coffee_shop_app/core/services/location_service.dart';
import 'package:coffee_shop_app/core/services/places_service.dart';
import 'package:coffee_shop_app/core/services/route_service.dart';
import 'package:coffee_shop_app/shared/models/place_autocomplete_model/place_autocomplete_model.dart';
import 'package:coffee_shop_app/shared/models/place_details_model/place_details_model.dart';
import 'package:coffee_shop_app/shared/models/routes_model/routes_model.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapService {
  LocationService locationService = LocationService();
  PlacesService placesService = PlacesService();
  RouteService routeService = RouteService();

  late LatLng currentLatLng;

  Future<void> getAutoComplete({
    required String sessionToken,
    required String input,
    required List<PlaceModel> places,
  }) async {
    if (input.isNotEmpty) {
      final currentQuery = input;
      var result = await placesService.getAutocomplete(
        sessionToken: sessionToken,
        input: currentQuery,
      );
      if (input != currentQuery) return;
      places.clear();
      places.addAll(result);
    } else {
      places.clear();
    }
  }

  void getCurrentLocation({
    required GoogleMapController mapController,
    required Set<Marker> markers,
    required Function onUpdateLocation,
  }) {
    locationService.getRealTimeLocationData((LocationData locationData) {
      currentLatLng = LatLng(locationData.latitude!, locationData.longitude!);
      var myCurrentPositionMarker = Marker(
        markerId: const MarkerId('current_location'),
        position: currentLatLng,
      );
      var myCurrentCameraPosition = CameraPosition(
        target: currentLatLng,
        zoom: 15.0,
      );
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(myCurrentCameraPosition),
      );
      markers.add(myCurrentPositionMarker);
      onUpdateLocation();
    });
  }

  Future<List<LatLng>> getPolylinePoints({
    required LatLng destinationLatLng,
  }) async {
    final RoutesModel routes = await routeService.getRoute(
      origin: currentLatLng,
      destination: destinationLatLng,
    );

    final routeList = routes.routes;
    if (routeList == null || routeList.isEmpty) {
      throw Exception('No route was found for these locations.');
    }

    final encodedPolyline = routeList.first.polyline?.encodedPolyline;
    if (encodedPolyline == null || encodedPolyline.isEmpty) {
      throw Exception('The route response did not include a valid polyline.');
    }

    final polylinePoints = PolylinePoints();
    final decodedPoints = polylinePoints.decodePolyline(encodedPolyline);
    final polylineCoordinates = decodedPoints
        .map((point) => LatLng(point.latitude, point.longitude))
        .toList();
    if (polylineCoordinates.isEmpty) {
      throw Exception('The route polyline could not be decoded.');
    }
    return polylineCoordinates;
  }

  LatLngBounds getlatLngBounds(List<LatLng> points) {
    double? minLat, maxLat, minLng, maxLng;

    for (var point in points) {
      if (minLat == null || point.latitude < minLat) {
        minLat = point.latitude;
      }
      if (maxLat == null || point.latitude > maxLat) {
        maxLat = point.latitude;
      }
      if (minLng == null || point.longitude < minLng) {
        minLng = point.longitude;
      }
      if (maxLng == null || point.longitude > maxLng) {
        maxLng = point.longitude;
      }
    }

    return LatLngBounds(
      southwest: LatLng(minLat!, minLng!),
      northeast: LatLng(maxLat!, maxLng!),
    );
  }

  Future<PlaceDetailsModel> getPlaceDetails({
    required String placeId,
    required String sessionToken,
  }) async {
    return await placesService.getPlaceDetails(
      placeId: placeId,
      sessionToken: sessionToken,
    );
  }
}
