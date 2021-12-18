import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  late RxString _address;

  Future<String> getCurrentAddress() async {
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) async {
      List<Placemark> placemark =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark? place = placemark[0];
      _address.value =
          "${place.locality}, ${place.postalCode}, ${place.country}";
    }).catchError((e) {
      debugPrint(e.toString());
    });
    return _address.value;
  }

  void storeAddress() {
    GetStorage().write('address', _address.value);
  }
}
