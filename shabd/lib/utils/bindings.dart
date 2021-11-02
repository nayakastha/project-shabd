import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:shabd/services/authservice.dart';
import 'package:shabd/views/authview/authcontroller.dart';
import 'package:shabd/views/homeview/homecontroller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthService>(AuthService());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
