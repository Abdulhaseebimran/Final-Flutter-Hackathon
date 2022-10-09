import 'package:final_hackathon/constants/colors._constant.dart';
import 'package:final_hackathon/views/login_screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreens extends StatelessWidget {
  const OnBoardingScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(
      body: Column(
        children: [
        Expanded(
          flex: 2,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)
            ),
            color: ColorsConstants.onboarding
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("AiLearn",
              style: GoogleFonts.lobster(fontSize: 60, fontWeight: FontWeight.w600, color: Colors.yellow),),
         const SizedBox(height: 20,),
         Container(
          child: const Image(image: AssetImage("assets/images/Frame.png")),
         )
        ],
          ),
        )),
        Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text("Perangkat Lunak\nPengolah Gambar Vektor",
                  style: GoogleFonts.inter(fontSize: 26, fontWeight: FontWeight.w800, color: ColorsConstants.onboarding,),
                ),),
              ),
              const SizedBox(height: 10,),
            Text("Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator",
            style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400, color: ColorsConstants.onboarding)
          ,),
          const SizedBox(height: 20,),
           InkWell(onTap: (){
            Get.to(const LoginScreen());
           },
                      child: Container(
                        height: 60,
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:  ColorsConstants.onboarding,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Text(
                          'MASUK',
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        ),
                      ),
        ],
          
          ),
        ),
      ),
     ],
      )
      
    ),
    );
  }
}