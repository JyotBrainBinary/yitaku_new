import 'package:file_manager/controller/file_manager_controller.dart';
import 'package:file_manager/file_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yitaku/fileManager.dart';
import 'package:yitaku/screen/chatScreen/chatroomsNameScreen/chatRoomsName_Controller.dart';
import 'package:yitaku/screen/chatScreen/chatroomsNameScreen/chat_attachments.dart';
import 'package:yitaku/utils/colorRes.dart';

class ChatRoomsNameScreen extends StatelessWidget {
   ChatRoomsNameScreen({Key? key}) : super(key: key);

   ChatRoomNameController controller = Get.put(ChatRoomNameController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorRes.color3879E8,
        title: const Text("Chatroom name"),
      ),
      body:Stack(
    children: <Widget>[
      Padding(
        padding:  const EdgeInsets.only(left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: Get.width,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5,),
                    Container(
                      height: 100,
                      width: Get.width * 0.60,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(8),
                          image:  const DecorationImage(
                            image: AssetImage(
                              "assets/images/place_hold.jpg",
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: 50,
                      width: Get.width * 0.70,
                      padding: const EdgeInsets.only(left: 15,top: 15),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text("Message Text",),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: 50,
                      width: Get.width * 0.70,
                      padding: const EdgeInsets.only(left: 15,top: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.30),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text("Filename",),
                    ),
                    SizedBox(height: 10,),
                    const Text("First Name - Created Date",style: TextStyle(color: Colors.grey),),

                  ],
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: Get.width,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.end,
                  children: [
                    const SizedBox(height: 5,),
                    Container(
                      height: 100,
                      width: Get.width * 0.60,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(8),
                          image:  const DecorationImage(
                            image: AssetImage(
                              "assets/images/place_hold.jpg",
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(Icons.delete_forever),
                        const SizedBox(width: 10,),
                        Container(
                          height: 50,
                          width: Get.width * 0.70,
                          padding: const EdgeInsets.only(left: 15,top: 15),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text("Message Text",),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(Icons.delete_forever),
                        const SizedBox(width: 10,),
                        Container(
                          height: 50,
                          width: Get.width * 0.70,
                          padding: const EdgeInsets.only(left: 15,top: 15),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.30),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text("Filename",),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    const Text("First Name - Created Date",style: TextStyle(color: Colors.grey),),

                  ],
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: Get.width,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5,),
                    Container(
                      height: 100,
                      width: Get.width * 0.60,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(8),
                          image:  const DecorationImage(
                            image: AssetImage(
                              "assets/images/place_hold.jpg",
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: 50,
                      width: Get.width * 0.70,
                      padding: const EdgeInsets.only(left: 15,top: 15),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text("Message Text",),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: 50,
                      width: Get.width * 0.70,
                      padding: const EdgeInsets.only(left: 15,top: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.30),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Text("Filename",),
                    ),
                    SizedBox(height: 10,),
                    const Text("First Name - Created Date",style: TextStyle(color: Colors.grey),),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        padding: const EdgeInsets.only(left: 10,bottom: 10,top: 10),
        height: 60,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () async {
                //await FileManager.requestFilesAccessPermission();
                //Get.to(() =>HomePage());

              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(Icons.attach_file, color: Colors.blue, size: 25, ),
              ),
            ),
            const SizedBox(width: 5,),
            GestureDetector(
              onTap: () async {
               /* FocusScope.of(context).unfocus();
                showModalBottomSheet(
                  backgroundColor: Colors.black,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Column(
                          children: [
                            const SizedBox(height: 50,),
                            Container(
                              height: 200,
                              width: Get.width,
                              decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(8))),
                              child: const Center(child: Text("Choose Photo"),),
                            ),
                            const SizedBox(height: 25,),
                            Container(
                              height: 50,
                              width: Get.width,
                              decoration: const BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: const Center(child: Text("Send",style: TextStyle(color: Colors.white),),),
                            ),
                          ],
                        ),
                      );
                    });*/
                String imagePath = "";
                final ImagePicker picker = ImagePicker();
                final XFile? image = await picker.pickImage(source: ImageSource.camera);
                if(image != null){
                  imagePath = image.path.toString();
                }
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(Icons.add_a_photo_outlined, color: Colors.lightBlue, size: 25, ),
              ),
            ),
            SizedBox(width: 15,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
               child:Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: TextField(
                    decoration: InputDecoration(
                        hintText: "Write message...",
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none
                    ),
                  ),
               ),
              )
            ),
            IconButton(
                onPressed:  () {
                  controller.showAgeDialog(context);
                },
                icon: Icon(Icons.send,color: Colors.grey,size: 20,),
            ),
          ],
        ),
      ),
    ),
    ],
    ),
    );
  }
}
