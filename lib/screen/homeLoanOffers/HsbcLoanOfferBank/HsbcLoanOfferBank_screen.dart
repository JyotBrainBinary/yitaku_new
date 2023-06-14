import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/asset_res.dart';

class HsbcLoanOffreBankScreen extends StatelessWidget {
  final String title;

   HsbcLoanOffreBankScreen({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title??""),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Text("Property Details",style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Text("Name, Localities",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w600),),
              SizedBox(height: 10,),
              Text("Ref.No. - Ref.No.",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w600),),
              SizedBox(height: 10,),
              Text("Price - Price",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w600),),
              SizedBox(height: 25,),
              Text("Home Loan Details",style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.50,child: Text("Monthly Repayment",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w400),)),
                  Text("Monthly Repayment",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: 20,),
              Divider(thickness: 2,color: Colors.grey,),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.50,child: Text("Interest Rate",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w400),)),
                  Text("Interest Rate",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: 20,),
              Divider(thickness: 2,color: Colors.grey,),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.50,child: Text("Loan Period",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w400),)),
                  Text("O years",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: 20,),
              Divider(thickness: 2,color: Colors.grey,),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.50,child: Text("Deposit Amount",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w400),)),
                  Text("O",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w600),),

                ],
              ),
              SizedBox(height: 20,),
              Divider(thickness: 2,color: Colors.grey,),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.50,child: Text("Loan Amount",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w400),)),
                  Text("Loan Amount",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w600),),

                ],
              ),
              SizedBox(height: 20,),
              Divider(thickness: 2,color: Colors.grey,),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.50,child: Text("Interest over loan period",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w400),)),
                  Text("Total Interest Paid",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: 20,),
              Divider(thickness: 2,color: Colors.grey,),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.50,child: Text("Total Amount over loan period",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w400),)),
                  Text("O",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: 20,),
          Center(
            child: Container(
              width: Get.width * 0.88,
              decoration: const BoxDecoration(
                  color: Color(0xFFFFDE5F),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: Get.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.lightbulb,color: Colors.orangeAccent,),
                      SizedBox(width: Get.height * 0.001),
                      Text("Pro Tip",
                          style: overpassRegular(
                              height: 1.5,
                              color: const Color(0xFF4285F4),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.03),
                  SizedBox(
                    width: Get.width * 0.80,
                    child: Text(
                        StringRes.proTip,
                        textAlign: TextAlign.center,
                        style: overpassRegular(
                            color: const Color(0xFF424242), height: 1)),
                  ),
                  SizedBox(height: Get.height * 0.03),
                  Text(
                     StringRes.discover,
                      textAlign: TextAlign.center,
                      style: overpassRegular(
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF757575),
                          height: 1)),
                  SizedBox(height: Get.height * 0.03),
                ],
              ),
            ),
          ),
              SizedBox(height: Get.height * 0.05),
              Text(
                StringRes.hSBCDetails,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey,fontSize: 13),
              ),
              SizedBox(height: Get.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
