import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileMentorTab extends StatelessWidget {
  const ProfileMentorTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 3, 
        initialIndex: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
             child: const TabBar(
             labelColor: Color.fromARGB(255, 3, 163, 150),
             unselectedLabelColor: Colors.black,
              tabs: [
               Tab(text: 'About'),
               Tab(text: 'Courses'),
                Tab(text: 'Reviews'), 
            ],
           ),
          ),
          Container(
            height: 400, //height of TabBarView
             decoration: const BoxDecoration(
             border: Border(top: BorderSide(
              color: Colors.grey, width: 0.5))),
            child:  TabBarView(
            children: [
            Expanded(child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Hi My name is Azamat Baimatov, i work as a Senior UI/UX Designer in on of the biggest E-commerce in Indonesia, i Have more than 10 years of experience UI/UX Design in Startup & Corporate.\n\n First we’ll describe the brief & how to work with a UX persona.\n\n Then you’ll learn how to create simple wireframes.\n\n From there we’ll look at how to implement colours & images properly in your designs.\n\n You’ll learn the do’s & don’ts around choosing fonts for web & mobile apps.s\n\n You’ll learn how to create your own icons, buttons & other UI components.",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
              ),
            ),
          ), Expanded(child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Hi My name is Azamat Baimatov, i work as a Senior UI/UX Designer in on of the biggest E-commerce in Indonesia, i Have more than 10 years of experience UI/UX Design in Startup & Corporate.\n\n First we’ll describe the brief & how to work with a UX persona.\n\n Then you’ll learn how to create simple wireframes.\n\n From there we’ll look at how to implement colours & images properly in your designs.\n\n You’ll learn the do’s & don’ts around choosing fonts for web & mobile apps.s\n\n You’ll learn how to create your own icons, buttons & other UI components.",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
              ),
            ),
          ), Expanded(child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Hi My name is Azamat Baimatov, i work as a Senior UI/UX Designer in on of the biggest E-commerce in Indonesia, i Have more than 10 years of experience UI/UX Design in Startup & Corporate.\n\n First we’ll describe the brief & how to work with a UX persona.\n\n Then you’ll learn how to create simple wireframes.\n\n From there we’ll look at how to implement colours & images properly in your designs.\n\n You’ll learn the do’s & don’ts around choosing fonts for web & mobile apps.s\n\n You’ll learn how to create your own icons, buttons & other UI components.",
                style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
              ),
            ),
          ),
            ])
          )
          ],
        ));
  }
}