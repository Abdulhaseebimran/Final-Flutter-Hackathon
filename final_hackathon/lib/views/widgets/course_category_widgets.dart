import 'package:final_hackathon/constants/colors._constant.dart';
import 'package:final_hackathon/views/widgets/button_widgets.dart';
import 'package:final_hackathon/views/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

Widget courseCategoryWidget(
  context, {
  required String type,
  required String category,
  required String teacher,
  required int progress,
  List<Color>? colors,
  VoidCallback? onPressed,
}) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.9,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(25),
      ),
      gradient: LinearGradient(
        tileMode: TileMode.mirror,
        begin: Alignment.topLeft,
        end: const Alignment(0.1, 5.3),
        colors: colors ??
            [
              Colors.blue,
              // Color(ColorsConstants.primaryWheat).withOpacity(0.6),
              Colors.red,
              Colors.blue,
              Color(ColorsConstants.primaryWheat).withOpacity(0.6),
            ],
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWidget(
              text: type,
              color: ColorsConstants.primaryWhite,
            ),
            textWidget(
              text: category,
              color: ColorsConstants.primaryWhite,
            ),
            textWidget(
              text: "by $teacher",
              color: ColorsConstants.primaryWhite,
            ),
            SizedBox(
              width: 100,
              child: buttonWidget(
                context,
                text: "Continue",
                fontSize: 14,
                height: 35,
                elevation: 0,
                backgroundColor: ColorsConstants.elevated,
                borderRadius: 10,
                onPressed: onPressed ?? () {},
              ),
            )
          ],
        ),
        CircularPercentIndicator(
          radius: 60.0,
          lineWidth: 25.0,
          percent: progress / 100,
          center: textWidget(
            text: "$progress%",
            color: (ColorsConstants.primaryWhite),
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          progressColor: Color (ColorsConstants.primaryWhite),
          backgroundColor: Color (ColorsConstants.primaryGrey).withOpacity(0.1),
        ),
      ],
    ),
  );
}