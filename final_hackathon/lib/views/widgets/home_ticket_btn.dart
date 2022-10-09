import 'package:final_hackathon/constants/colors._constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TicketButton(String assestImage, String text) {
  return Expanded(
      child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Container(
          height: 60,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
            ),
            onPressed: () {},
            child: Container(
              child: Image( image: AssetImage(assestImage),
              ),
            ),
          )),
      const SizedBox(
        height: 5,
      ),
      Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 14, fontWeight: FontWeight.bold, color: ColorsConstants.onboarding)
      ),
    ],
  ));
}