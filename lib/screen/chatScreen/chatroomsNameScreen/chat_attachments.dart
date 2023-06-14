import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/utils/colorRes.dart';

class ChatAttachmentScreen extends StatelessWidget {
  const ChatAttachmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 80,
                width: Get.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: const Center(child: Text("Choose File")),
              ),
              SizedBox(height: Get.width * 0.1),
              InkWell(
                onTap: () {},
                child: Container(
                    height: 40,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: ColorRes.buttonColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child:
                          Text("Send", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                    )),
              ),
              SizedBox(height: Get.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
