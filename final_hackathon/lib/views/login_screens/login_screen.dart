import 'package:final_hackathon/constants/colors._constant.dart';
import 'package:final_hackathon/views/Home/home_screens.dart';
import 'package:final_hackathon/views/onboarding_screens/onboarding_screens.dart';
import 'package:final_hackathon/views/widgets/login_textfields.dart';
import 'package:final_hackathon/views/widgets/password_textfields.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Get.offAll(const HomeScreen());
        },
       icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text("Selamat Datang!",style: GoogleFonts.inter(
              fontWeight: FontWeight.w800, fontSize: 36, color: ColorsConstants.onboarding,),
              ),
          ),
          const SizedBox(height: 10,),
           Text("Masukan NISN dan password untuk\nmemulai belajar sekarang", style: GoogleFonts.inter(
            fontSize: 18, fontWeight: FontWeight.w600, color: ColorsConstants.onboarding
           ),),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                   const SizedBox(height: 20,),
                    const Text("NISN"),
                    const LoginTextField(
                    hintText: 'Nomor NISN', 
                  prefeixIcon: Icons.person ,
                  suffixIcon: null),
                  const SizedBox(height: 20,),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Text("Password",textAlign: TextAlign.start,),
                     PassTextField(hintText: "Masukkan Password",
                     prefeixIcon: Icons.lock, 
                     obscureText: true,
                    suffixIcon: Icons.remove_red_eye),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: const Text("Lupa password",style: TextStyle(color: ColorsConstants.onboarding),
                            textAlign: TextAlign.right,),
                          ),
                        ),
                      ],
                    ),
                 const SizedBox(height: 50,),
                  InkWell(onTap: (){
                    Get.to(const HomeScreen());
                  },
                          child: Container(
                            height: 60,
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color:  ColorsConstants.onboarding,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text(
                              'MULAI BELAJAR',
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            ),
                          ),
                   ],
                 )
                  ],
                ),
              ),
             ),
           )
               ],
          ),
        ),
      ),
    );
  }
}