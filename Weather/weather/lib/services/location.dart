//import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';

class AppLocation {
  double latitude = 0.0;
  double longitude = 0.0;

  Future<void> getCurrentLocation() async {
    try {
      Location loc = Location();
      LocationData locationData = await loc.getLocation();
      // Position position = await Geolocator.getCurrentPosition(
      //     desiredAccuracy: LocationAccuracy.low);

      latitude = locationData.latitude ?? 6.244203;
      longitude = locationData.longitude ?? -75.581215;
    } catch (e) {
      print(e);
    }
  }
}
