import 'package:final_hackathon/constants/colors._constant.dart';
import 'package:final_hackathon/controllers/category_controllers.dart';
import 'package:final_hackathon/views/Add%20To%20Cart/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Home/home_screens.dart';
import '../widgets/course_category_widgets.dart';

class ContLessons extends StatelessWidget {
  const ContLessons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Get.offAll(const HomeScreen());
        },
       icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black,)),
       title: Text("Continue Your Lesson",
       style: GoogleFonts.poppins(
        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black
       ),), centerTitle: true,
      ),
      body: Container(
         child: GetBuilder<CategoryController>(
             id: "category",
             init: CategoryController(),
             builder: (controller) {
              return ListView.builder(
              itemCount: controller.categories.length,
              itemBuilder: (contect, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                  child: courseCategoryWidget(
                    context,
                    type: "Ongoing . 20/22",
                    category: controller.categories[index]["categories"],
                    teacher: "ABDUL HASEEB",
                    progress: 80,
                    colors: [
                       Colors.blue.shade800,
                       Colors.red.shade800,
                       Colors.blue.shade800,
                      Color(ColorsConstants.primaryWheat).withOpacity(0.6),
                    ],
                      onPressed: () {
                      controller.getCategoryDetails(
                        controller.categories[index]["categories"],
                      );
                       Get.to(
                       AddToCart(
                       category: controller.categories[index]["categories"],
                      ),
                       );
                    },
                  ),
                );
              },
            );
  })));
  }
}