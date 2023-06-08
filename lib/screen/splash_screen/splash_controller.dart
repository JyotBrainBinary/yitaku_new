import 'package:get/get.dart';

import 'package:yitaku/screen/splashScreen2/splashScreen2.dart';


class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    Future.delayed(
      const Duration(
        seconds: 1,
      ),
      () {
       return Get.to(() => const SplashScreen2());
      },
    );
    super.onInit();
  }
}


