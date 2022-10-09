import 'package:final_hackathon/views/widgets/profile_tiles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Details Course/details_course.dart';
import '../Home/home_screens.dart';
import '../lesson/cont_lesson.dart';

class ProfileScreens extends StatefulWidget {
  const ProfileScreens({Key? key}) : super(key: key);

  @override
  State<ProfileScreens> createState() => _ProfileScreensState();
}

class _ProfileScreensState extends State<ProfileScreens> {
   int _selectedIndex = 0;
   final List<Widget> _widgetOptions = <Widget>[
  ];

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   selectedFontSize: 16,
      //    backgroundColor: Colors.white,
      //   //  fixedColor: Colors.white,
      //     currentIndex: _selectedIndex,
      //     // selectedItemColor: Colors.black,
      //     unselectedItemColor: Colors.black,
      //       selectedItemColor: Colors.black,
      //     iconSize: 40,
      //     onTap: onTabTapped,
      //     elevation: 5,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: IconButton(onPressed: (){
      //         Get.to(const HomeScreen());
      //       },
      //        icon: const Icon(Icons.home,
      //        size: 30,)),
      //       label: 'Home',
      //     ),
      //      BottomNavigationBarItem(
      //       icon: IconButton(onPressed: (){
      //         Get.to(const ContLessons());
      //       },
      //        icon: const Icon(Icons.person_add_alt_1_outlined,
      //        size: 30,)), 
      //       label: 'Mentor', 
      //     ),
      //     BottomNavigationBarItem(
      //       icon: IconButton(onPressed: (){
      //         Get.to(const DetailsCourse());
      //       },
      //        icon: const Icon(Icons.favorite_outline_outlined,
      //        size: 30,)),
      //        label: 'Favourite',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: IconButton(onPressed: (){
      //         Get.to(const ProfileScreens());
      //       },
      //        icon: const  Icon(Icons.people_outline_outlined,size: 30,
      //        ),),
      //        label: ' Profile',
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                  Container(
                  width: double.infinity,
                  height: 350,
                  decoration: const BoxDecoration(
                      color:  Color(0xff06C0AF),
                      borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(40),
                     bottomRight: Radius.circular(40) 
                   ),
                   ),
                   ),
                    Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 50,
                  ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Profile", style: GoogleFonts.poppins(fontSize: 18,
                  color: Colors.white, fontWeight: FontWeight.bold),),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 40,
                      width: 40,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                     color: Colors.white,),
                    ),
                    child: const Icon(Icons.more_horiz,
                    color: Colors.white,),
                    ),
                  ),],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 140),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                CircleAvatar(
                  backgroundImage: 
                  AssetImage("assets/images/profile2.png"),
                  radius: 80, backgroundColor: Colors.transparent,
                )
              ]),
              ),
               Padding(
                    padding: const EdgeInsets.only(top: 255),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Justin Hafizdzaki",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )),
                 Padding(
                    padding: const EdgeInsets.only(top: 290),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "hafizdzaki@gmail.com",
                          style: GoogleFonts.poppins(
                            fontSize: 12, color: Colors.white,
                          ),
                        ),
                      ],
                    )),
              ],
            ),Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                children: [
                  Text(
                    "General",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            tiles("Personal Data", Image.asset("assets/images/Button.png")),
            tiles("Payments", Image.asset("assets/images/Button (1).png")),
            tiles("Reviews", Image.asset("assets/images/Button (2).png")),
            tiles("Certificate", Image.asset("assets/images/Button (3).png")),
              Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    "Others",style: GoogleFonts.poppins(
                     color: Colors.black, fontSize: 18,
                    fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            tiles("Settings", Image.asset("assets/images/Button (4).png")),
          ]),
         )
        );
  }
}