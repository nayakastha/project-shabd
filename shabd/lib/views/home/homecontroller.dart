import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_storage/get_storage.dart';

class HomeController {
  var loaded = true;

  Future<Placemark?> getCurrentAddress() async {
    loaded = false;
    Placemark? place;
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) async {
      List<Placemark> placemark =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      place = placemark[0];
      GetStorage().write("district", place!.locality);
      GetStorage().write("state", place!.administrativeArea);
      GetStorage().write("country", place!.country);
      debugPrint(place.toString());
      loaded = true;
    }).catchError((e) {
      debugPrint(e.toString());
    });
    return place;
  }
}
