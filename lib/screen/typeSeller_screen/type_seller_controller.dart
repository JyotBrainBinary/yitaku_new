import 'package:get/get.dart';
import 'package:yitaku/utils/StringRes.dart';

class TypeSellerController extends GetxController {
  bool isDrop = false;

  String sellerTypeString = StringRes.selectASellerType;

  List sellerType = [
    "Transactional",
    "Consultative",
    "Provocative",
    "Collaborative"
  ];
}
