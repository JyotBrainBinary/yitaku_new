import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yitaku/common/widget/text_style.dart';
import 'package:yitaku/screen/homeLoanOffers/HsbcLoanOfferBank/HsbcLoanOfferBank_screen.dart';
import 'package:yitaku/screen/homeLoanOffers/homeLoanOffres/home_loan_offres_controller.dart';
import 'package:yitaku/utils/StringRes.dart';
import 'package:yitaku/utils/colorRes.dart';

class HomeLoanOffres extends StatelessWidget {
   HomeLoanOffres({Key? key}) : super(key: key);

   HomeLoanOffersController controller = Get.put(HomeLoanOffersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Loan Offers"),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(
                child: Text(
                  "Monthly repayment",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 350,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.bankName.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(()=>HsbcLoanOffreBankScreen(title:controller.appBarName[index]));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: Get.width * 0.40,
                                      child: Image.asset(controller.bankName[index],fit: BoxFit.cover,),
                                    ),
                                    Spacer(),
                                    SizedBox(
                                      width: Get.width * 0.20,
                                        child: Text("Monthly Repayment", style: TextStyle(color: Colors.grey,fontSize: 14),),
                                    ),
                                    Spacer(),
                                    Text("DETAILS", style: overpassRegular(
                                      color:  ColorRes.color3879E8,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                controller.bankName[index]==controller.bankName.last ? SizedBox() : Divider(thickness: 2,color: Colors.grey,),
                                SizedBox(height: 10,),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                child: Text(
                  StringRes.homeLoan,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey,fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
