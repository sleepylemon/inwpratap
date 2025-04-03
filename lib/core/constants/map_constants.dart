import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapConstants {
  // Initial camera position centered at Delhi, India
  static const LatLng initialPosition = LatLng(28.6139, 77.2090);
  
  // Default zoom level
  static const double defaultZoom = 14.0;
  
  // Mock locations
  static const List<Map<String, dynamic>> mockPlaces = [
    {
      'id': 'place_1',
      'name': 'India Gate',
      'position': LatLng(28.6129, 77.2295),
      'description': 'Famous war memorial in New Delhi',
    },
    {
      'id': 'place_2',
      'name': 'Qutub Minar',
      'position': LatLng(28.5244, 77.1855),
      'description': 'UNESCO World Heritage Site in Delhi',
    },
    {
      'id': 'place_3',
      'name': 'Red Fort',
      'position': LatLng(28.6562, 77.2410),
      'description': 'Historic fort in Old Delhi',
    },
  ];
}