import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_hackathon/constants/colors._constant.dart';
import 'package:final_hackathon/views/Add%20To%20Cart/add_to_cart.dart';
import 'package:final_hackathon/views/Details%20Course/details_course.dart';
import 'package:final_hackathon/views/lesson/cont_lesson.dart';
import 'package:final_hackathon/views/profile/profile_screens.dart';
import 'package:final_hackathon/views/profile_mentor/profile_mentor.dart';
import 'package:final_hackathon/views/widgets/home_ticket_btn.dart';
import 'package:final_hackathon/views/widgets/login_textfields.dart';
import 'package:final_hackathon/views/widgets/my_navigation_bar.dart';
import 'package:final_hackathon/views/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/course_category_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: ,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:1.0, right: 1.0),
              child: Text("Hi Hafiz 👋", style: GoogleFonts.poppins(
                fontSize: 14, fontWeight: FontWeight.w600, color: ColorsConstants.onboarding
              ),textAlign: TextAlign.left,),
            ),
          const SizedBox(height: 2,),
          
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Let's Find Your ", style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w600, color: ColorsConstants.onboarding
                ),),
                Text("Course!", style: GoogleFonts.poppins(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.blue
                ))
            ],
          ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(onPressed: (){},
               icon: const Icon(Icons.shopping_basket_rounded, color: ColorsConstants.onboarding,)),
               IconButton(onPressed: (){},
               icon: const Icon(Icons.notifications_outlined, color: ColorsConstants.onboarding,))
            ],
          )
        ],
      ), 
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 16,
        backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
           unselectedItemColor: Colors.black,
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
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 30),
              child: Container(
                child: const LoginTextField(hintText: "Search Your Course",
                suffixIcon:  Icons.filter_list_outlined,
                prefeixIcon: Icons.search),
              ),
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 TicketButton("assets/images/Content.png", "Coding"),
                  TicketButton("assets/images/design.png", "Design"),
                   TicketButton("assets/images/market.png", "Marketing"),
                    TicketButton("assets/images/busin.png", "Business"),
                ],
              ),
            const SizedBox(height: 30,),
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 TicketButton("assets/images/lifestyle.png", "Lifestyle"),
                  TicketButton("assets/images/music.png", "Music"),
                   TicketButton("assets/images/academics.png", "Academics"),
                    TicketButton("assets/images/more.png", "More"),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Continue Your Lessons", style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                  ),
                  const SizedBox(width: 60),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: (){
                         Get.to(const ContLessons());
                      },
                      child: Text("See all", style: 
                      GoogleFonts.poppins(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.w400),),
                    ),
                  )
                ],
              ), 
            CarouselSlider(
                  items: [
                    courseCategoryWidget(
                      context,
                      type: "Ongoing",
                      category: "Basic UI?UX Designer",
                      progress: 70,
                      teacher: "Azamat baimatov",
                    ),
                  ],
                  options: CarouselOptions(
                    aspectRatio: 20 / 9,
                    viewportFraction: 1,
                    initialPage: 3,
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(milliseconds: 250), 
                  ),
                ),
              //  const  SizedBox(height: 10,),
               const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Recommendation Course", style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                  ),
                  const SizedBox(width: 30),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: (){
                         Get.to(const ContLessons());
                      },
                      child: Text("See all", style: 
                      GoogleFonts.poppins(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.w400),),
                    ),
                  )
                ],
              ), 
             CarouselSlider(
              items: [
                Image.asset("assets/images/video.png",scale: 1.2,),
              ],
              options: CarouselOptions(
                    height:  200,
                    initialPage: 3,
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(milliseconds: 200), 
                    // reverse: true,
                    // autoPlayInterval: const Duration(milliseconds: 2),
              ),
              ),
         ]),
      ),
  );
  }
}