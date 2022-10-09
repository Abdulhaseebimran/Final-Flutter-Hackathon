import 'package:final_hackathon/views/profile_mentor/profile_mentor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

import '../../constants/colors._constant.dart';
import '../../controllers/category_controllers.dart';
import '../Home/home_screens.dart';
import '../widgets/lesson_tabbar.dart';

class DetailsCourse extends StatefulWidget {
  const DetailsCourse({Key? key}) : super(key: key);

  @override
  State<DetailsCourse> createState() => _DetailsCourseState();
}

class _DetailsCourseState extends State<DetailsCourse> {
  //  late VideoPlayerController _controller;
  //  bool showController = false;

  //  @override
  // void initState() {
  //   super.initState();
  //   _controller = VideoPlayerController.network(
  //       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
  //     ..initialize().then((_) {
  //       // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
  //       setState(() {});
  //     });
  // }

   late VideoPlayerController videoController;
   bool showControll = true;

  @override
  void initState() {
    super.initState();
    videoController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then(
        (_) {
          setState(() {});
        },
      );
  }
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
       actions: [
         Row(
            children: [
              IconButton(onPressed: (){},
               icon: const Icon(Icons.share_rounded, color: ColorsConstants.onboarding,)),
               IconButton(onPressed: (){},
               icon: const Icon(Icons.shopping_basket_rounded, color: ColorsConstants.onboarding,))
            ],
          ),
       ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: GetBuilder<CategoryController>(
          id: "category",
          init: CategoryController(),
          builder: (controller) {
            if (controller.category != null) {
              videoController = VideoPlayerController.network(
                controller.category?[1]["video"],
              )..initialize().then(
                  (_) {
                    setState(() {});
                  },
                );
            }
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  videoController.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: videoController.value.aspectRatio,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      showControll = true;
                                    });
                                  },
                                  child: VideoPlayer(videoController),
                                ),
                                showControll
                                    ? GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            videoController.value.isPlaying
                                                ? videoController.pause()
                                                : videoController.play();
                                          });
                                          setState(() {
                                            showControll =
                                                !videoController.value.isPlaying;
                                          });
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundColor:
                                              Color(ColorsConstants.secondaryBlue),
                                          child: Icon(
                                            videoController.value.isPlaying
                                                ? Icons.pause
                                                : Icons.play_arrow,
                                            color: Color(
                                                ColorsConstants.primaryWhite),
                                          ),
                                        ),
                                      )
                                    : Container(),
                              ],
                            ),
                          ),
                        )
                      : Container(),
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
              Text(
                "Basic UI/UX Designer",textAlign: TextAlign.left,
               style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)),
                      ],
                     ),
                   ), Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
              Text("4.8 ",textAlign: TextAlign.left, style:  GoogleFonts.poppins(
                       fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
              const Icon(Icons.star, color: Color.fromARGB(255, 246, 221, 5),),
               const Icon(Icons.star, color: Color.fromARGB(255, 246, 221, 5),),
               const Icon(Icons.star, color: Color.fromARGB(255, 246, 221, 5),),
               const Icon(Icons.star, color: Color.fromARGB(255, 246, 221, 5),),
               const Icon(Icons.star, color: Color.fromARGB(255, 246, 221, 5),),
              const Text("  (534)"),
              const SizedBox(
              width: 120,
                child: Icon(Icons.heart_broken, color: ColorsConstants.onboarding,))
                      ],
                     ),
                   ),
                   Row(
                    children: [
                      Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("\$145", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600,
               color: ColorsConstants.onboarding)),
                      ),
                      Text("\$180", style: GoogleFonts.poppins(
              decoration: TextDecoration.lineThrough,
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey
                      ),),
                    ],
                   ),
                   Row(children: [
                   Text("Created by", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600,
               color: ColorsConstants.onboarding),),
                   GestureDetector(
                    onTap: (){
                      Get.to(const ProfileMentor());
                    },
                     child: Text(" Azamat Baimatov", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600,
                 color: const Color.fromARGB(255, 1, 166, 216)),),
                   )
                   ],),
                    const SizedBox(height: 5,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const Icon(Icons.person, color: Colors.grey,),
                      Text("1203 Members", style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600,
               color: ColorsConstants.onboarding),),
                      const Icon(Icons.person, color: Colors.grey,),
                      Text("42 Lesson", style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600,
               color: ColorsConstants.onboarding),),
                      const Icon(Icons.bookmark_outline_sharp ,color: Colors.grey,),
                       Text("Certificate", style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600,
               color: ColorsConstants.onboarding),),
                    ],
                   ),
                   const Divider(),
                   const SizedBox(height: 10,),
                  const LessonTabbar(),
                  ]),
            );
    })));
 }
}

// Container(
        // padding: const EdgeInsets.all(20),
        // child: GetBuilder<CategoryController>(
        //   id: "category",
        //   init: CategoryController(),
        //   builder: (controller) {
        //     if (controller.category != null) {
        //       videoController = VideoPlayerController.network(
        //         controller.category?[0]["video"],
        //       )..initialize().then(
        //           (_) {
        //             setState(() {});
        //           },
        //         );
        //     }
        //     return Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         videoController.value.isInitialized
        //             ? AspectRatio(
        //                 aspectRatio: videoController.value.aspectRatio,
        //                 child: ClipRRect(
        //                   borderRadius: BorderRadius.circular(16),
        //                   child: Stack(
        //                     alignment: Alignment.center,
        //                     children: [
        //                       GestureDetector(
        //                         onTap: () {
        //                           setState(() {
        //                             showControll = true;
        //                           });
        //                         },
        //                         child: VideoPlayer(videoController),
        //                       ),
        //                       showControll
        //                           ? GestureDetector(
        //                               onTap: () {
        //                                 setState(() {
        //                                   videoController.value.isPlaying
        //                                       ? videoController.pause()
        //                                       : videoController.play();
        //                                 });
        //                                 setState(() {
        //                                   showControll =
        //                                       !videoController.value.isPlaying;
        //                                 });
        //                               },
        //                               child: CircleAvatar(
        //                                 radius: 25,
        //                                 backgroundColor:
        //                                     Color(ColorsConstants.secondaryBlue),
        //                                 child: Icon(
        //                                   videoController.value.isPlaying
        //                                       ? Icons.pause
        //                                       : Icons.play_arrow,
        //                                   color: Color(
        //                                       ColorsConstants.primaryWhite),
        //                                 ),
        //                               ),
        //                             )
        //                           : Container()
        //                     ],
        //                   ),
        //                 ),
        //               )
        //             : Container(),
//       //  const SizedBox(height: 10,),
//        Padding(
//          padding: const EdgeInsets.all(10.0),
//          child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Basic UI/UX Designer",textAlign: TextAlign.left,
//              style: GoogleFonts.poppins(
//             fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)),
//           ],
//          ),
//        ), Padding(
//          padding: const EdgeInsets.all(12.0),
//          child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("4.8",textAlign: TextAlign.left, style:  GoogleFonts.poppins(
//            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
//             const Icon(Icons.star, color: Color.fromARGB(255, 246, 221, 5),),
//              const Icon(Icons.star, color: Color.fromARGB(255, 246, 221, 5),),
//              const Icon(Icons.star, color: Color.fromARGB(255, 246, 221, 5),),
//              const Icon(Icons.star, color: Color.fromARGB(255, 246, 221, 5),),
//              const Icon(Icons.star, color: Color.fromARGB(255, 246, 221, 5),),
//             const Text("  (534)"),
//             const SizedBox(
//             width: 100,
//               child: Icon(Icons.heart_broken, color: ColorsConstants.onboarding,))
//           ],
//          ),
//        ),
//        Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text("\$145", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600,
//              color: ColorsConstants.onboarding)),
//           ),
//           Text("\$180", style: GoogleFonts.poppins(
//             decoration: TextDecoration.lineThrough,
//             fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey
//           ),),
//         ],
//        ),
//        Row(children: [
//        Text("Created by", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600,
//              color: ColorsConstants.onboarding),),
//        Text(" Azamat Baimatov", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600,
//              color: const Color.fromARGB(255, 1, 166, 216)),)
//        ],),
//        Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//          const Icon(Icons.person, color: Colors.grey,),
//           Text("1203 Members", style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600,
//              color: ColorsConstants.onboarding),),
//           const Icon(Icons.person, color: Colors.grey,),
//           Text("1203 Members", style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600,
//              color: ColorsConstants.onboarding),),
//           const Icon(Icons.bookmark_outline_sharp ,color: Colors.grey,),
//            Text("1203 Members", style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w600,
//              color: ColorsConstants.onboarding),),
//         ],
//        ),
//        const Divider(),
//       const LessonTabbar(),
//       ],
//   )