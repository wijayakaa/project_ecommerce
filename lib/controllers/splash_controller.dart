import 'package:get/get.dart';
import 'package:project_ecommerce/pages/home_page.dart';
import 'package:project_ecommerce/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  late final SharedPreferences prefs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async {
    prefs = await SharedPreferences.getInstance();
    final username = prefs.getString('username');

    Future.delayed(Duration(seconds: 5), () {
      if (prefs.getString('username') == null) {
        Get.offNamed("/login");
      } else {
        Get.off(HomePage());
      }
    });
  }
}
