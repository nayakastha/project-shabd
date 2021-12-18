import 'package:get/get.dart';
import 'package:shabd/services/authservice.dart';
import 'package:shabd/views/login/logincontroller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthService>(() => AuthService(), fenix: true);
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
  }
}
