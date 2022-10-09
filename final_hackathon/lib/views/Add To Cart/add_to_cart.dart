import 'package:final_hackathon/constants/colors._constant.dart';
import 'package:final_hackathon/views/Details%20Course/details_course.dart';
import 'package:final_hackathon/views/Home/home_screens.dart';
import 'package:final_hackathon/views/lesson/cont_lesson.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/category_controllers.dart';
import '../widgets/text_widgets.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key? key, this.category}) : super(key: key);

  final String? category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Get.to(const HomeScreen());
        },
         icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black,)),
         title: Text("Tool Box", style: GoogleFonts.poppins(
          fontSize: 18, fontWeight: FontWeight.w800, color: ColorsConstants.onboarding
         ),),centerTitle: true,
      ),
      body: Container(
        // width: MediaQuery.of(context).size.width * 0.9,
        margin: const EdgeInsets.all(20),
        child: GetBuilder<CategoryController>(
          id: "categoryDetails",
          tag: "Hello",
          init: CategoryController(),
          builder: (controller) {
            return ListView.builder(
              itemCount: controller.categoryDetails.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    controller.getSpeceficCategory(
                      category ?? "",
                      controller.categoryDetails[index]["id"],
                    );
                    Get.to(const ContLessons());
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Material(
                      elevation: 5,
                      shadowColor:
                          Color(ColorsConstants.primaryBlue).withOpacity(0.3),
                      child: ListTile(
                        tileColor: Color(ColorsConstants.primaryWhite),
                        leading: Icon(
                          Icons.play_arrow_rounded,
                          size: 50,
                          color: Color(ColorsConstants.navyBlue),
                        ),
                        title: textWidget(
                          text: controller.categoryDetails[index]["title"],
                        ),
                        subtitle: textWidget(
                          text: controller.categoryDetails[index]["created_by"],
                        ),
                        
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      )
    );
  }
}