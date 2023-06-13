import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yitaku/screen/chatScreen/chatroomsNameScreen/chatRoomsName_Controller.dart';

class ChatRoomsNameScreen extends StatelessWidget {
   ChatRoomsNameScreen({Key? key}) : super(key: key);

   ChatRoomNameController controller = Get.put(ChatRoomNameController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Chatroom name"),
      ),
      body:Stack(
    children: <Widget>[
      Padding(
        padding:  EdgeInsets.only(left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: Get.width,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5,),
                    Container(
                      height: 100,
                      width: Get.width * 0.60,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(8),
                          image:  DecorationImage(
                            image: AssetImage(
                              "assets/images/place_hold.jpg",
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      height: 50,
                      width: Get.width * 0.70,
                      padding: EdgeInsets.only(left: 15,top: 15),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text("Message Text",),
                    ),
                    Container(
                      height: 50,
                      width: Get.width * 0.70,
                      padding: EdgeInsets.only(left: 15,top: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.30),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text("Filename",),
                    ),
                    Text("First Name - Created Date",style: TextStyle(color: Colors.grey),),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: Get.width,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 5,),
                    Container(
                      height: 100,
                      width: Get.width * 0.60,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(8),
                          image:  DecorationImage(
                            image: AssetImage(
                              "assets/images/place_hold.jpg",
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.delete_forever),
                        SizedBox(width: 10,),
                        Container(
                          height: 50,
                          width: Get.width * 0.70,
                          padding: EdgeInsets.only(left: 15,top: 15),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text("Message Text",),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.delete_forever),
                        SizedBox(width: 10,),
                        Container(
                          height: 50,
                          width: Get.width * 0.70,
                          padding: EdgeInsets.only(left: 15,top: 15),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.30),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text("Filename",),
                        ),
                      ],
                    ),
                    Text("First Name - Created Date",style: TextStyle(color: Colors.grey),),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: Get.width,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5,),
                    Container(
                      height: 100,
                      width: Get.width * 0.60,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(8),
                          image:  DecorationImage(
                            image: AssetImage(
                              "assets/images/place_hold.jpg",
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      height: 50,
                      width: Get.width * 0.70,
                      padding: EdgeInsets.only(left: 15,top: 15),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text("Message Text",),
                    ),
                    Container(
                      height: 50,
                      width: Get.width * 0.70,
                      padding: EdgeInsets.only(left: 15,top: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.30),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text("Filename",),
                    ),
                    Text("First Name - Created Date",style: TextStyle(color: Colors.grey),),

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
        padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
        height: 60,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: (){},
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(Icons.add, color: Colors.white, size: 20, ),
              ),
            ),
            SizedBox(width: 15,),
            GestureDetector(
              onTap: (){
                FocusScope.of(context).unfocus();
                showModalBottomSheet(
                  backgroundColor: Colors.black,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.only(left: 20,right: 20),
                        child: Column(
                          children: [
                            SizedBox(height: 50,),
                            Container(
                              height: 200,
                              width: Get.width,
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(8))),
                              child: Center(child: Text("Choose Photo"),),
                            ),
                            SizedBox(height: 25,),
                            Container(
                              height: 50,
                              width: Get.width,
                              decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: Center(child: Text("Send",style: TextStyle(color: Colors.white),),),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(Icons.add_a_photo_outlined, color: Colors.white, size: 20, ),
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
            SizedBox(width: 5,),
            IconButton(
                onPressed:  () {},
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
