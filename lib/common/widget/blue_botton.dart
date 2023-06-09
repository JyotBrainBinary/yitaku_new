import 'package:flutter/material.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class BlueBotton extends StatelessWidget {
  final double height;
  final String buttonText;
  final Color color;
  final VoidCallback onPressed;

  const BlueBotton(
      {super.key,
      required this.height,
      required this.buttonText,
      required this.onPressed,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: height,

        decoration: const BoxDecoration(
            color: ColorRes.buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child: Text(buttonText,
            style: overpassRegular(fontWeight: FontWeight.bold, color: color,height: 1.8)),
      ),
    );
  }
}
