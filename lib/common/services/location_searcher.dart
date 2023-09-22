import 'package:geolocator/geolocator.dart';

class LocationSearcher {
  Future<Position?> getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition();
      return position;
    } catch (e) {
      throw Exception('Failed to get location: $e');
    }
  }
}
