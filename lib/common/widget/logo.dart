import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/utils/asset_res.dart';

class LogoImage extends StatelessWidget {
  final double? height;
  final double? width;
  const LogoImage({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(AssetRes.yikatuLogo,height: height ?? Get.height * 0.0418,width: width ?? Get.width*0.36);
  }
}
