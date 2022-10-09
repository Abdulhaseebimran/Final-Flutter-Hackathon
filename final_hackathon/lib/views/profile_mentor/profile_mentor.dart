import 'package:final_hackathon/views/lesson/cont_lesson.dart';
import 'package:final_hackathon/views/widgets/profile_mentor_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Add To Cart/add_to_cart.dart';
import '../Home/home_screens.dart';
import '../profile/profile_screens.dart';

class ProfileMentor extends StatefulWidget {
  const ProfileMentor({Key? key}) : super(key: key);

  @override
  State<ProfileMentor> createState() => _ProfileMentorState();
}

class _ProfileMentorState extends State<ProfileMentor> {
   int _selectedIndex = 0;
   final List<Widget> _widgetOptions = <Widget>[
   HomeScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Profile Mentor", style: GoogleFonts.poppins(fontSize: 18, color: Colors.black,
        fontWeight: FontWeight.bold),
      ),
      leading: IconButton(onPressed: (){
        Get.to(const HomeScreen());
      },
       icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black,)),
       actions: [
         GestureDetector( onTap: (){},
               child: Container(
                    height: 20, width: 60,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                     color: Colors.white,),),
                    child: const Icon(Icons.more_horiz,
                    color: Colors.black,),
                    ),
                  ),
       ],
     ),
    bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 16,
        backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          // selectedItemColor: Colors.black,
           unselectedItemColor: Colors.black,
            selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: onTabTapped,
          elevation: 5,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Get.to(const HomeScreen());
            },
             icon: const Icon(Icons.home,
             size: 30,)),
            label: 'Home',
          ),
           BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Get.to(const ProfileMentor());
            },
             icon: const Icon(Icons.person_add_alt_rounded,
             size: 30,)), 
            label: 'Mentor', 
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Get.to(const AddToCart());
            },
             icon: const Icon(Icons.favorite_outline_outlined,
             size: 30,)),
             label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){
              Get.to(const ProfileScreens());
            },
             icon: const  Icon(Icons.people_outline_outlined,size: 30,
             ),),
             label: ' Profile',
          ),
        ],
      ),
     body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
             alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.067),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.8, 1),
                                colors: <Color>[
                                  Color(0XFFD5F3F0),
                                  Color.fromARGB(255, 3, 163, 150),
                                  Color(0XFFD5F3F0),
                                ]),
                            //color: Color(0XFFD5F3F0),
                            borderRadius: BorderRadius.circular(20)),
                            height: 200,
                            width: 470,
                            child: Padding(
                            padding: const EdgeInsets.only(top: 1),
                            child: Column(
                              children: [
                                Image.asset("assets/images/proc.png",scale: 1,alignment: Alignment.topCenter,),
                              const SizedBox(height: 3,),
                                Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text("Azamat Baimatov", style: GoogleFonts.poppins(
                                      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black
                                      ),),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Senior UI/UX Designer", style: GoogleFonts.poppins(
                                      color: Colors.black, fontWeight: FontWeight.w600
                                    ),)
                                  ],
                                ),
                              const SizedBox(height: 10),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: [
                               const SizedBox(width: 50),
                                  Column(
                                    children: [
                                      Text(
                                        "5",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Course",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                const SizedBox(width: 50),
                                  Column(
                                    children: [
                                      Text(
                                        "17",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Students",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                 const SizedBox(width: 50),
                                  Column(
                                    children: [
                                      Text(
                                        "9",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Reviews",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ), 
          ],  
       ),const SizedBox(height: 5,),
       const Divider(color: Colors.grey,),
        const ProfileMentorTab(),
       ]
    ),
     ));
  }
}
