import 'package:coffee_shop_app/core/errors/custom_exception.dart';
import 'package:location/location.dart';

class LocationService {
  Location location = Location();
  Future<void> checkAndRequestLocationService() async {
    bool isServiceEnabled = await location.serviceEnabled();
    if (!isServiceEnabled) {
      isServiceEnabled = await location.requestService();
      if (!isServiceEnabled) {
        throw LocationServiceException(
          'Location service is disabled. Please enable it in settings.',
        );
      }
    }
  }

  Future<void> checkAndRequestLocationPermission() async {
    PermissionStatus permissionStatus = await location.hasPermission();
    if (permissionStatus == PermissionStatus.deniedForever) {
      // Handle the case when the user has permanently denied the permission
      throw LocationPermissionException(
        'Location permission is permanently denied. Please enable it in settings.',
      );
    }
    if (permissionStatus == PermissionStatus.denied) {
      permissionStatus = await location.requestPermission();

      if (permissionStatus != PermissionStatus.granted) {
        throw LocationPermissionException(
          'Location permission is denied. Please enable it in settings.',
        );
      }
    }
  }

  Future<void> getRealTimeLocationData(
    void Function(LocationData)? onData,
  ) async {
    await checkAndRequestLocationService();
    await checkAndRequestLocationPermission();
    location.onLocationChanged.listen(onData);
  }

  Future<LocationData> getLocationData() async {
    await checkAndRequestLocationService();
    await checkAndRequestLocationPermission();
    return await location.getLocation();
  }
}
