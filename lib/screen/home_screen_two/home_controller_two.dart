import 'package:get/get.dart';
import 'package:yitaku/api_calling/properties_api.dart';

import '../../model/properties_model.dart';

class HomeControllerTwo extends GetxController {
  List<PropertiesModel>? listProperties = [];

  @override
  void onInit() {
    propertiesApi();
    super.onInit();
  }

  bool isOpenList = false;

  bool isForSale = true;
  bool isRent = false;
  bool isLoading =false;

  PropertiesModel propertiesModel = PropertiesModel(
  );

  Future<void> propertiesApi() async {
    isLoading= true;
    update(["homeTwo"]);
    // propertiesModel =  await PropertiesApi.propertiesApi();
     await PropertiesApi.propertiesApi();
   /* listProperties = propertiesModel as List<PropertiesModel>?;*/

       isLoading= false;
    update(["homeTwo"]);
  }
  // Drawer ===========================================
  drawerOpen() {
    return Drawer(
      width: 280,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30),
              height: 100,
              width: Get.width,
              color: const Color(0xFF4285F4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: Get.width * 0.01),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: Colors.white60, shape: BoxShape.circle),
                    child: Icon(Icons.person,
                        color: Colors.grey.shade400, size: 35),
                  ),
                  Text("First Name Last Name",
                      style: overpassRegular(
                          fontWeight: FontWeight.bold, fontSize: 18)),
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Icons.close, color: Color(0xFF424242))),
                  SizedBox(width: Get.width * 0.01),
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => ProfileScreen());
                    },
                    child: commonRow(AssetRes.profile, "Profile"),
                  ),
                  SizedBox(height: Get.height * 0.03),
                  InkWell(
                    onTap: () {},
                    child: commonRow(AssetRes.profile, "Log In"),
                  ),
                  SizedBox(height: Get.height * 0.03),
                  commonRow(AssetRes.my_property_icon, "My Property Alert"),
                  SizedBox(height: Get.height * 0.05),
                  commonRow(AssetRes.list_a_property, "List A Property"),
                  SizedBox(height: Get.height * 0.03),
                ],
              ),
            ),
            const Divider(
              height: 0.5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.03),
                  InkWell(
                    onTap: () {
                      Get.to(() => const TermAndConditionScreen());
                    },
                    child: commonRow(AssetRes.t_and_c, "Terms & Condition"),
                  ),
                  SizedBox(height: Get.height * 0.03),
                  commonRow(AssetRes.send_feedback, "Send Feedback"),
                  SizedBox(height: Get.height * 0.08),
                  commonRow(AssetRes.support, "Support"),
                  SizedBox(height: Get.height * 0.03),
                  commonRow(AssetRes.rate_the_app, "Rate the Apps"),
                  SizedBox(height: Get.height * 0.03),
                  commonRow(AssetRes.log_out, "Log Out"),
                  SizedBox(height: Get.height * 0.03),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  accountRequiredDialog() {
    return Get.dialog(
      const Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.close),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
