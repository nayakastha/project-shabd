import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  String locationMsg = 'Getting Location...';
  permissionCheck() {}
  getLoc() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    List<Placemark> address =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    locationMsg = address[0].administrativeArea.toString();
  }
}
