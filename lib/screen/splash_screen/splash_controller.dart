import 'package:get/get.dart';
import 'package:yitaku/screen/Auth/BlueLogin/blueLoginScreen.dart';
import 'package:yitaku/screen/loginpage_new/login_new.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    Future.delayed(
      Duration(
        seconds: 2,
      ),
      () {
       return Get.offAll(() => LoginPageNew());
      },
    );
    super.onInit();
  }
}


