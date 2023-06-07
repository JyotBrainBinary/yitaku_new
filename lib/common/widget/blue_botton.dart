import 'package:flutter/material.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class BlueBotton extends StatelessWidget {
  final double height;
  final String buttonText;

  const BlueBotton({super.key, required this.height, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: height,
      decoration: const BoxDecoration(
      color: ColorRes.buttonColor,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Text(buttonText),
    );
  }
}
