import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yitaku/screen/chatScreen/chatScreen_Controller.dart';
import 'package:yitaku/screen/chatScreen/chatroomsNameScreen/chatRoomNameScreen.dart';
import 'package:yitaku/utils/colorRes.dart';

class ChatScreen extends StatelessWidget {
   ChatScreen({Key? key}) : super(key: key);

   ChatScreenController controller = Get.put(ChatScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorRes.color3879E8,
        title: const Text("My Chats",),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: GetBuilder<ChatScreenController>(
          id: "chat",
          builder: (controller) {
            return Column(
              children: [
                SizedBox(height: 20,),
                Expanded(
                    child:ListView.builder(
                      itemCount: controller.chatName.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                              Get.to(()=>ChatRoomsNameScreen());
                          },
                          child: Container(
                            height: 70,
                            width: Get.width,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.chat,color: Colors.grey,),
                                    Spacer(),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text("Chatroom name"),
                                       Text("Ref.No. Property ref.no. - Chatroo...."),
                                     ],
                                   ),
                                    Spacer(),
                                    Icon(Icons.delete_forever,color: Colors.grey,),
                                  ],
                                ),
                                SizedBox(height: 15,),
                              controller.chatName[index] == controller.chatName.last ? SizedBox() :
                              Container(
                                margin: EdgeInsets.only(left: 50),
                                height: 1,
                                color: Colors.grey,
                              ),
                              ],
                            ),

                          ),
                        );
                    },)
                ),
                /*const SizedBox(height: 200,),
                ElevatedButton(onPressed: () {
                  controller.showLoanOfferDialog(context);
                }, child: Text("Age Dialog")),
                ElevatedButton(onPressed: () {
                  controller.showAgeDialog(context);
                }, child: Text("Age Needed")),*/
              ],
            );
          }
        ),
      ),
    );
  }
}
