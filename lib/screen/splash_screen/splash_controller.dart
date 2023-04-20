import 'package:get/get.dart';
import 'package:yitaku/screen/Auth/BlueLogin/blueLoginScreen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    Future.delayed(
      Duration(
        seconds: 2,
      ),
      () {
       return Get.offAll(() => BlueLoginScreen());
      },
    );
    super.onInit();
  }
}


