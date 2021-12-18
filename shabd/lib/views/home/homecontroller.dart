import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  RxString address = RxString('...');

  Future<String> getCurrentAddress() async {
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) async {
      List<Placemark> placemark =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark? place = placemark[0];
      address.value =
          "${place.locality}, ${place.postalCode}, ${place.country}";
    }).catchError((e) {
      debugPrint(e.toString());
    });
    return address.value;
  }

  void storeAddress() {
    GetStorage().write('address', address.value);
  }
}
