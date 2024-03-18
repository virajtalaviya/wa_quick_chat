import 'package:get/get.dart';
import 'package:whatsapp_launcher/screens/home_screen.dart';
import 'package:whatsapp_launcher/screens/intro_screen.dart';
import 'package:whatsapp_launcher/utils/preference_utils.dart';

class SplashController extends GetxController {
  void navigateToHomeScreen() async {
    try {
      await PreferenceUtils.init();
    } catch (_) {}

    await Future.delayed(const Duration(seconds: 3));
    if (PreferenceUtils.getBoolValue("showIntroScreen", true)) {
      Get.off(() => const IntroScreen());
    } else {
      Get.off(() => const HomeScreen());
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    navigateToHomeScreen();
  }
}
