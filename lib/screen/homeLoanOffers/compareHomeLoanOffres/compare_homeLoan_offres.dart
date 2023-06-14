import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/homeLoanOffers/homeLoanOffres/home_loan_offres.dart';
import 'package:yitaku/utils/asset_res.dart';
import 'package:yitaku/utils/colorRes.dart';

class CompareHomeLoanOffresController extends StatelessWidget {
  const CompareHomeLoanOffresController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Loan Offres"),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              SizedBox(
                width: Get.width * 0.80,
                child: Text("With YITAKU's home loan comparison tool it's easy to choose the best offer that suits your needs.",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 15),),
              ),
              SizedBox(height: 20,),
              Container(
                height: 120,
                width: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(AssetRes.insuranceee))
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: Get.width * 0.80,
                child: Text("YITAKU's home loan comparison tool works in 2 ways",
                  textAlign: TextAlign.center,
                  style: overpassRegular(
                  color:  ColorRes.color3879E8,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),
              ),
              SizedBox(height: 15,),
              Text("No.1",style: TextStyle(color: Colors.grey,fontSize: 20),),
              SizedBox(height: 10,),
              SizedBox(
                width: Get.width * 0.85,
                child: Text("Calculate how much you are likely to borrow from a bank based on your income",
                  textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 15),),
              ),
              SizedBox(height: 10,),
              Icon(Icons.arrow_downward_sharp,size: 40,color: Colors.grey,),
              SizedBox(height: 15,),
              Container(
                height: 40,
                width: Get.width * 0.80,
                decoration: BoxDecoration(color: Color(0xFF365CC0),borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Center(child: Text("HOW MUCH CAN I BORROW?",style: TextStyle(color: Colors.white),),),
              ),
              SizedBox(height: 20,),
              Text("No.2",style: TextStyle(color: Colors.grey,fontSize: 20),),
              SizedBox(height: 10,),
              SizedBox(
                width: Get.width * 0.85,
                child: Text("Calculate how loan offres based on a particular property ... it's easy",
                  textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 15),),
              ),
              SizedBox(height: 10,),
              Text("Step 1: Find a property that you like",style: TextStyle(color: Colors.grey,fontSize: 15),),
              SizedBox(height: 10,),
              SizedBox(
                width: Get.width * 0.82,
                child: Text("Step 2: Click 'Compare home loan offres' on the property derails screen and we'll work our magic!",
                  textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 15),),
              ),
              SizedBox(height: 10,),
              Icon(Icons.arrow_downward_sharp,size: 40,color: Colors.grey,),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: () {
                  Get.to(()=>HomeLoanOffres());
                },
                child: Container(
                  height: 40,
                  width: Get.width * 0.80,
                  decoration: BoxDecoration(color: Color(0xFF365CC0),borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Center(child: Text("FIND A PROPERTY",style: TextStyle(color: Colors.white),),),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
